import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../design_setting.dart';
import '../playable_platform.dart';
import '../preset/line_preset.dart';
import 'choice.dart';
import 'choice_node.dart';
import 'conditional_code_handler.dart';

part 'choice_line.freezed.dart';
part 'choice_line.g.dart';

@freezed
abstract class ChoiceLineOption with _$ChoiceLineOption {
  const factory ChoiceLineOption({
    @Default(-1) int maxSelect,
    @Default(false) bool enableCancelFeature,
    @Default('default') String presetName,
    @Default(null) ChoiceLineDesignPreset? overridePreset,
    String? name,
  }) = _ChoiceLineOption;

  factory ChoiceLineOption.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineOptionFromJson(json);

  const ChoiceLineOption._();

  ChoiceLineDesignPreset getPreset(PlatformDesignSetting setting) {
    var motherPreset = setting.getChoiceLinePreset(presetName);
    return motherPreset.getPresetWithOverride(overridePreset);
  }
}

class ChoiceLine with Choice {
  List<ChoiceNode> get choiceNodes => children.cast<ChoiceNode>();

  ChoiceLineOption choiceLineOption;
  List<SelectInfo> selectOrder = List.empty(growable: true);
  late ConditionalCodeHandler conditionalCodeHandlerFinalize;

  ChoiceLine({this.choiceLineOption = const ChoiceLineOption()}) {
    conditionalCodeHandler = ConditionalCodeHandler();
    conditionalCodeHandlerFinalize = ConditionalCodeHandler();
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = super.toJson();
    map['conditionalCodeHandlerFinalize'] =
        conditionalCodeHandlerFinalize.toJson();
    map.addAll(choiceLineOption.toJson());
    return map;
  }

  ChoiceLine.fromJson(Map<String, dynamic> json)
      : choiceLineOption = ChoiceLineOption.fromJson(json) {
    if (json.containsKey('children')) {
      var list = json['children'];
      for (int i = 0; i < list.length; i++) {
        var choiceNode = ChoiceNode.fromJson(list[i]);
        choiceNode.currentPos = i;
        choiceNode.parent = this;
        children.add(choiceNode);
      }
    }
    if (json.containsKey('conditionalCodeHandler')) {
      conditionalCodeHandler =
          ConditionalCodeHandler.fromJson(json['conditionalCodeHandler']);
    } else {
      conditionalCodeHandler = ConditionalCodeHandler.fromJson(json);
    }
    if (json.containsKey('conditionalCodeHandlerFinalize')) {
      conditionalCodeHandlerFinalize = ConditionalCodeHandler.fromJson(
          json['conditionalCodeHandlerFinalize']);
    } else {
      conditionalCodeHandlerFinalize = ConditionalCodeHandler();
    }
  }

  String get valName => 'lineSetting_$currentPos';

  @override
  void generateParser() {
    conditionalCodeHandler.executeCodeString = '$valName += 1';
    if (isNeedToCheck()) {
      conditionalCodeHandler.conditionClickableString =
          '$valName < ${choiceLineOption.maxSelect}';
    } else {
      conditionalCodeHandler.conditionClickableString = 'true';
    }
    conditionalCodeHandlerFinalize.compile(errorName);
    super.generateParser();
  }

  bool isNeedToCheck() {
    return choiceLineOption.maxSelect > 0;
  }

  @override
  String get errorName => "${pos.data.toString()} $valName";

  @override
  void updateStatus() {
    var isHide = !conditionalCodeHandler.analyseVisible(errorName);
    var isOpen = conditionalCodeHandler.analyseClickable(errorName);
    selectableStatus =
        selectableStatus.copyWith(isHide: isHide, isOpen: isOpen);
  }

  @override
  bool isOpen() {
    return true;
  }

  @override
  void execute() {
    // 모든 node 의 선택 관련 변수들을 업데이트 ( null -> false )
    for (var child in children) {
      child.recursiveFunction((current) {
        (current as ChoiceNode).updateNodeVariable();
        if (current.choiceNodeMode == ChoiceNodeMode.onlyCode) {
          current.execute();
        }
        return null;
      });
    }
    // 선택 가능 여부 업데이트
    _updateStatusAll(selectOrder.length);
    // 선택 순서에 따른 실행 순서 업데이트
    var nextSelectOrder = <SelectInfo>[];
    for(int order = 0; order < selectOrder.length; order++){
      var selectInfo = selectOrder[order];
      var node = findRootParent().findChoice(selectInfo.pos) as ChoiceNode;
      if(!node.isExecute(update: true)){
        continue;
      }
      node.execute();
      conditionalCodeHandler.execute(errorName);
      _updateStatusAll(order + 1);
      nextSelectOrder.add(selectInfo);
    }
    // 라인 마지막에 실행되는 코드 실행
    conditionalCodeHandlerFinalize.execute(errorName);
    _updateStatusAll(selectOrder.length + 1);
    // 결과에 따른 내용 변경
    for (var child in children) {
      child.recursiveFunction((current) {
        (current as ChoiceNode).updateCurrentContentsString();
        return null;
      });
    }
    selectOrder = nextSelectOrder;
  }

  void _updateStatusAll(int order) {
    updateStatus();
    for (var child in children) {
      child.recursiveFunction((current) {
        (current as ChoiceNode).updateStatus(
            addOrder: selectOrder,
            order: order,
            lineCanAcceptMore: selectableStatus.isOpen);
        return null;
      });
    }
  }

  @override
  Choice clone() {
    var json = jsonDecode(jsonEncode(toJson()));
    return ChoiceLine.fromJson(json);
  }

  @override
  void addChild(PlayablePlatform platform, Choice childNode, {int? pos}) {
    pos ??= children.length;
    childNode.parent = this;
    childNode.width = childNode.getWidth(platform).clamp(0, getWidth(platform));
    children.insert(pos, childNode);
    for (int i = 0; i < children.length; i++) {
      children[i].currentPos = i;
    }
  }

  @override
  int getWidth(PlayablePlatform platform){
    var preset = choiceLineOption.getPreset(platform.designSetting);
    return preset.maxChildrenPerRow ?? 12;
  }
}
