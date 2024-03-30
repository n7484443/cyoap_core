import 'dart:convert';

import 'package:cyoap_core/choiceNode/pos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';
import 'choice_node.dart';
import 'conditional_code_handler.dart';

part 'choice_line.freezed.dart';
part 'choice_line.g.dart';

@freezed
class ChoiceLineOption with _$ChoiceLineOption {
  @JsonSerializable(explicitToJson: true)
  const factory ChoiceLineOption({
    @Default(-1) int maxSelect,
    @Default(false) bool enableCancelFeature,
    @Default('default') String presetName,
    String? name,
  }) = _ChoiceLineOption;

  factory ChoiceLineOption.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineOptionFromJson(json);
}

class ChoiceLine with Choice {
  List<ChoiceNode> get choiceNodes => children.cast<ChoiceNode>();

  ChoiceLineOption choiceLineOption;
  List<Pos> selectOrder = List.empty(growable: true);
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
      });
    }
    // 선택 가능 여부 업데이트
    _updateStatusAll(selectOrder.length);
    // 선택 순서에 따른 실행 순서 업데이트
    int order = 0;
    var nextSelectOrder = <Pos>[];
    while (order < selectOrder.length) {
      var pos = selectOrder[order];
      var node = findRootParent().findChoice(pos) as ChoiceNode;
      if(!node.isExecute()){
        order ++;
        continue;
      }else{
        nextSelectOrder.add(pos);
      }
      node.execute();
      conditionalCodeHandler.execute(errorName);
      updateStatus();
      _updateStatusAll(order + 1);
      order++;
    }
    // 라인 마지막에 실행되는 코드 실행
    conditionalCodeHandlerFinalize.execute(errorName);
    // 결과에 따른 내용 변경
    for (var child in children) {
      child.recursiveFunction((current) {
        (current as ChoiceNode).updateCurrentContentsString();
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
      });
    }
  }

  @override
  Choice clone() {
    var json = jsonDecode(jsonEncode(toJson()));
    return ChoiceLine.fromJson(json);
  }
}
