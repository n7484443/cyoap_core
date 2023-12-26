import 'package:cyoap_core/choiceNode/pos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';
import 'choice_node.dart';
import 'recursive_status.dart';

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

class ChoiceLine extends Choice {
  ChoiceLineOption choiceLineOption;
  List<Pos> selectOrder = List.empty(growable: true);

  ChoiceLine(int currentPos,
      {this.choiceLineOption = const ChoiceLineOption()}) {
    super.currentPos = currentPos;
    recursiveStatus = RecursiveStatus();
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = super.toJson();
    map.addAll(choiceLineOption.toJson());
    return map;
  }

  ChoiceLine.fromJson(Map<String, dynamic> json)
      : choiceLineOption = ChoiceLineOption.fromJson(json) {
    super.currentPos = json['y'] ?? json['pos'];
    if (json.containsKey('children')) {
      children = (json['children'] as List)
          .map((e) => ChoiceNode.fromJson(e)..parent = this)
          .toList();
    }
    recursiveStatus = RecursiveStatus.fromJson(json);
  }

  void addData(int x, ChoiceNode node) {
    node.currentPos = x;
    node.parent = this;
    if (x > children.length) {
      children.add(node);
    } else {
      children.insert(x, node);
    }
  }

  ChoiceNode? getData(int x) {
    if (children.length <= x) return null;
    return children[x] as ChoiceNode?;
  }

  String get valName => 'lineSetting_$currentPos';

  @override
  void generateParser() {
    recursiveStatus.executeCodeString = '$valName += 1';
    if (isNeedToCheck()) {
      recursiveStatus.conditionClickableString =
          '$valName < ${choiceLineOption.maxSelect}';
    } else {
      recursiveStatus.conditionClickableString = 'true';
    }
    super.generateParser();
  }

  bool isNeedToCheck() {
    return choiceLineOption.maxSelect > 0;
  }

  @override
  String get errorName => "${pos.data.toString()} $valName";

  @override
  void updateStatus() {
    var isHide = !recursiveStatus.analyseVisible(errorName);
    var isOpen = recursiveStatus.analyseClickable(errorName);
    selectableStatus = selectableStatus.copyWith(isHide: isHide, isOpen: isOpen);
  }

  @override
  bool isOpen() {
    return true;
  }

  @override
  void execute(){
    // 모든 node 의 선택 관련 변수들을 업데이트 ( null -> false )
    for(var child in children){
      child.recursiveFunction((current){
        (current as ChoiceNode).updateNodeVariable();
      });
    }
    // 선택 가능 여부 업데이트
    _updateStatusAll(selectOrder.length);
    // 선택 순서에 따른 실행 순서 업데이트
    int order = 0;
    while(order < selectOrder.length){
      var pos = selectOrder[order];
      var node = findChoice(pos) as ChoiceNode;
      node.execute();
      recursiveStatus.execute(errorName);
      updateStatus();
      _updateStatusAll(order + 1);
      order++;
    }
    // 결과에 따른 내용 변경
    for(var child in children){
      child.recursiveFunction((current){
        (current as ChoiceNode).updateCurrentContentsString();
      });
    }
  }

  void _updateStatusAll(int order){
    updateStatus();
    for(var child in children){
      child.recursiveFunction((current){
        (current as ChoiceNode).updateStatus(addOrder: selectOrder, order: order, lineCanAcceptMore: selectableStatus.isOpen);
      });
    }
  }
}
