

import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import '../option.dart';
import 'recursive_status.dart';
import 'choice_node.dart';
import 'generable_parser.dart';

class LineSetting extends GenerableParserAndPosition {
  int maxSelect;
  bool alwaysVisible;
  int? backgroundColor;
  String? backgroundImageString;
  List<int> optimizedLengthList;

  LineSetting(int currentPos,
      {this.alwaysVisible = true,
      this.maxSelect = -1,
      this.backgroundImageString})
      : optimizedLengthList = [] {
    super.currentPos = currentPos;
    recursiveStatus = RecursiveStatus();
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = super.toJson();
    map.addAll({
      'maxSelect': maxSelect,
      'alwaysVisible': alwaysVisible,
      'backgroundColor': backgroundColor,
      'backgroundImageString': Option().convertToWebp(backgroundImageString),
      'optimizedLengthList': optimizedLengthList,
    });
    return map;
  }

  LineSetting.fromJson(Map<String, dynamic> json)
      : maxSelect = json['maxSelect'] ?? -1,
        alwaysVisible = json['alwaysVisible'] ?? true,
        backgroundColor = json['backgroundColor'],
        backgroundImageString = json['backgroundImageString'],
        optimizedLengthList = [] {
    super.currentPos = json['y'] ?? json['pos'];
    if (json.containsKey('children')) {
      children = (json['children'] as List)
          .map((e) => ChoiceNode.fromJson(e)..parent = this)
          .toList();
    }
    recursiveStatus = RecursiveStatus.fromJson(json);
    if (json.containsKey('optimizedLengthList')) {
      optimizedLengthList =
          (json['optimizedLengthList'] as List).map((e) => e as int).toList();
    }
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
      VariableDataBase().setValue(valName, ValueTypeWrapper(ValueType.int(0)), isGlobal: true);
    } else {
      VariableDataBase().deleteValue(valName);
    }

    for (var node in children) {
      node.initValueTypeWrapper();
    }
  }

  @override
  void execute() {
    for (var node in children) {
      node.execute();
      if (node.isExecutable() && node.isSelectableMode) {
        Analyser().run(recursiveStatus.executeCode, pos: errorName);
      }
    }
  }

  @override
  String get errorName => "${pos.data.toString()} $valName";

  @override
  bool checkParentClickable({bool first = false}) {
    if(selectableStatus.isHide()){
      return false;
    }
    return true;
  }

  @override
  void updateStatus(){
    if(recursiveStatus.analyseVisibleCode(errorName)){
      selectableStatus = SelectableStatus.open;
    }else{
      selectableStatus = SelectableStatus.hide;
    }
    super.updateStatus();
  }
}