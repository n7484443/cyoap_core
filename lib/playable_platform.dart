import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/choiceNode/choice.dart';
import 'package:cyoap_core/choiceNode/pos.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'design_setting.dart';

const int designSamplePosition0 = -100;
const int designSamplePosition1 = -101;
const int nonPositioned = -1;

class PlayablePlatform {
  String? stringImageName;
  List<ChoiceLine> lineSettings = List.empty(growable: true);
  Map<String, ValueTypeWrapper> globalSetting = {};

  PlatformDesignSetting designSetting = PlatformDesignSetting();

  PlayablePlatform();
  PlayablePlatform.fromJson(Map<String, dynamic> json)
      : stringImageName = json['stringImageName'] ?? '',
        globalSetting = (json['globalSetting'] as Map)
            .map((k, v) => MapEntry(k, ValueTypeWrapper.fromJson(v))),
        designSetting = PlatformDesignSetting.fromJson(json);

  Choice? getNode(Pos pos) {
    if (pos.length == 1) return lineSettings[pos.first];
    return getChoiceNode(pos);
  }

  Choice? getGenerableParserAndPosition(Pos pos) {
    if (pos.first >= lineSettings.length) return null;
    Choice child = lineSettings[pos.first];
    for (var i = 1; i < pos.length; i++) {
      if (child.children.length <= pos.data[i]) {
        return null;
      } else if (pos.data[i] < 0) {
        return null;
      }
      child = child.children[pos.data[i]];
    }
    return child;
  }

  ChoiceNode? getChoiceNode(Pos pos) {
    return getGenerableParserAndPosition(pos) as ChoiceNode?;
  }

  ChoiceLine? getLineSetting(int y) {
    if (lineSettings.length <= y) return null;
    return lineSettings[y];
  }

  void updateStatusAll({int startLine = 0}) {
    VariableDataBase().clear();
    VariableDataBase().varMapGlobal.addAll(globalSetting);
    for (var i = startLine; i < lineSettings.length; i++) {
      var lineSetting = lineSettings[i];
      lineSetting.initValueTypeWrapper();
      lineSetting.execute();
      lineSetting.updateStatus();
      VariableDataBase().clearLocalVariable();
    }
  }

  void generateRecursiveParser() {
    for (var lineSetting in lineSettings) {
      lineSetting.generateParser();
    }
  }

  List<Pos> get selectedPos{
    List<Pos> selectedPos = [];
    for (var line in lineSettings) {
      for (var choice in line.children) {
        (choice as ChoiceNode).doAllChild((node) {
          if (node.isExecutable() && node.isSelectableMode && !node.choiceNodeDesign.hideAsResult) {
            selectedPos.add(node.pos);
          }else if (node.choiceNodeMode == ChoiceNodeMode.unSelectableMode && node.choiceNodeDesign.showAsResult){
            selectedPos.add(node.pos);
          }
        });
      }
    }
    return selectedPos;
  }
}
