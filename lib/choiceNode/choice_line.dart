import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';

import 'choice.dart';
import 'choice_node.dart';
import 'recursive_status.dart';

class ChoiceLine extends Choice {
  int maxSelect;
  String presetName;
  String? name;

  ChoiceLine(int currentPos,
      {this.presetName = "default", this.maxSelect = -1}) {
    super.currentPos = currentPos;
    recursiveStatus = RecursiveStatus();
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = super.toJson();
    map.addAll({
      'maxSelect': maxSelect,
      'presetName': presetName,
    });
    return map;
  }

  ChoiceLine.fromJson(Map<String, dynamic> json)
      : maxSelect = json['maxSelect'] ?? -1,
        presetName = json['presetName'] ?? "default" {
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
      recursiveStatus.conditionClickableString = '$valName < $maxSelect';
    } else {
      recursiveStatus.conditionClickableString = 'true';
    }
    super.generateParser();
  }

  bool isNeedToCheck() {
    return maxSelect > 0;
  }

  @override
  void initValueTypeWrapper() {
    if (isNeedToCheck()) {
      VariableDataBase().setValue(valName, ValueTypeWrapper(ValueType.int(0)),
          isGlobal: true);
    } else {
      VariableDataBase().deleteValue(valName);
    }

    for (var node in children) {
      node.initValueTypeWrapper();
    }
  }

  @override
  bool execute() {
    Map<String, ValueTypeWrapper> db = VariableDataBase()
        .varMapGlobal
        .map((key, value) => MapEntry(key, value.copyWith()));
    while (true) {
      var out = false;
      for (var node in children) {
        out |= node.execute();
        if (node.isExecutable() && node.isSelectableMode) {
          recursiveStatus.execute(errorName);
        }
      }
      if (!out) {
        return false;
      }
      VariableDataBase().varMapGlobal =
          db.map((key, value) => MapEntry(key, value.copyWith()));
    }
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
    List<Choice> list = [...children];
    while (list.isNotEmpty) {
      var check = list.removeAt(0);
      check.updateStatus();
      list.addAll(check.children);
    }
  }
}
