import 'dart:collection';

import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
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
    @Default(true) bool enableCancelFeature,
    @Default('default') String presetName,
    String? name,
  }) = _ChoiceLineOption;

  factory ChoiceLineOption.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineOptionFromJson(json);
}

class ChoiceLine extends Choice {
  ChoiceLineOption choiceLineOption;

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
  bool checkParentClickable({bool first = false}) {
    if (selectableStatus.isHide()) {
      return false;
    }
    return true;
  }

  @override
  void updateStatus() {
    if (recursiveStatus.analyseVisible(errorName)) {
      selectableStatus = SelectableStatus.open;
    } else {
      selectableStatus = SelectableStatus.hide;
    }
    _sortAndProcessNodesByDepth();
  }

  bool _checkCondition(List<ChoiceNode> nodes, {firstLine = false, required enableCancelFeature}) {
    var needUpdate = false;
    for (var n in nodes) {
      if(!enableCancelFeature && n.select > 0){
        continue;
      }
      needUpdate |= n.checkCondition();
    }
    if (!needUpdate &&
        firstLine &&
        !recursiveStatus.analyseClickable(errorName)) {
      for (var n in nodes) {
        if (n.select == 0 && n.isSelectableMode) {
          n.selectableStatus = SelectableStatus.closed;
        }
      }
      return false;
    }
    return needUpdate;
  }

  void _updateSelectionStatus(List<ChoiceNode> nodes, {firstLine = false}) {
    for (var n in nodes) {
      n.updateSelectionStatus();
      if (n.select > 0 && firstLine) {
        recursiveStatus.execute(errorName);
      }
    }
  }

  void _executeNodes(List<ChoiceNode> nodes) {
    for (var n in nodes) {
      n.execute();
    }
  }

  void _processSelectionUntilStable(List<ChoiceNode> nodes,
      {firstLine = false, enableCancelFeature = true}) {
    if (isNeedToCheck()) {
      VariableDataBase().setValue(valName, ValueTypeWrapper(ValueType.int(0)),
          isGlobal: true);
    } else {
      VariableDataBase().deleteValue(valName);
    }
    Map<String, ValueTypeWrapper> db = VariableDataBase()
        .varMapGlobal
        .map((key, value) => MapEntry(key, value.copyWith()));
    while (true) {
      _updateSelectionStatus(nodes, firstLine: firstLine);
      _executeNodes(nodes);
      if (!_checkCondition(nodes, firstLine: firstLine, enableCancelFeature: enableCancelFeature)) {
        break;
      }
      VariableDataBase().varMapGlobal =
          db.map((key, value) => MapEntry(key, value.copyWith()));
    }
  }

  void _sortAndProcessNodesByDepth() {
    //sort by depth using BFS
    var sortedNodeByDepth = List<List<ChoiceNode>>.empty(growable: true);
    var queue = Queue<(ChoiceNode, int)>();
    for (var node in children) {
      queue.add((node as ChoiceNode, 0));
    }
    while (queue.isNotEmpty) {
      var (node, depth) = queue.removeFirst();
      if (sortedNodeByDepth.length <= depth) {
        sortedNodeByDepth.add(List.empty(growable: true));
      }
      sortedNodeByDepth[depth].add(node);
      for (var child in node.children) {
        queue.add((child as ChoiceNode, depth + 1));
      }
    }

    //process
    for (var depth = 0; depth < sortedNodeByDepth.length; depth++) {
      _processSelectionUntilStable(sortedNodeByDepth[depth],
          firstLine: depth == 0, enableCancelFeature: choiceLineOption.enableCancelFeature);
    }
  }
}
