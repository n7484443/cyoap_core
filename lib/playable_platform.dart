import 'dart:convert';

import 'package:cyoap_core/choiceNode/choice.dart';
import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/choiceNode/pos.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';

import 'choiceNode/choice_page.dart';
import 'design_setting.dart';

const int nonPositioned = -1;

int fileVersion = 1;

class PlayablePlatform {
  int currentFileVersion = 1;
  String? stringImageName;
  ChoicePage choicePage = ChoicePage(0);
  List<(String, ValueTypeWrapper)> _globalSetting = [];
  List<(String, ValueTypeWrapper)> get globalSetting => _globalSetting;

  PlatformDesignSetting designSetting = PlatformDesignSetting();

  List<List<String>> selectedChoiceOrder = [];


  PlayablePlatform();

  void addGlobalSetting(String name, ValueTypeWrapper wrapper) {
    int pos = _globalSetting.indexWhere((element) => element.$1 == name);
    if (pos == -1) {
      _globalSetting.add((name, wrapper));
    } else {
      _globalSetting[pos] = (name, wrapper);
    }
  }

  void removeGlobalSetting(String name) {
    _globalSetting.removeWhere((element) => element.$1 == name);
  }

  void clearGlobalSetting() {
    _globalSetting.clear();
  }

  ValueTypeWrapper? getGlobalSetting(String name) {
    int pos = _globalSetting.indexWhere((element) => element.$1 == name);
    if (pos == -1) {
      return null;
    } else {
      return _globalSetting[pos].$2;
    }
  }

  PlayablePlatform.fromJson(Map<String, dynamic> json)
      : stringImageName = json['stringImageName'] ?? '',
        designSetting = PlatformDesignSetting.fromJson(json),
        currentFileVersion = json['currentFileVersion'] ?? 0 {
    if (json['globalSetting'] is Map) {
      _globalSetting = (json['globalSetting'] as Map)
          .keys
          .map((name) => (name as String,
              ValueTypeWrapper.fromJson(json['globalSetting'][name])))
          .toList();
    } else {
      _globalSetting =
          (json['globalSetting'] as List).map((e) => e as List).map((entity) {
        return (
            entity[0] as String, ValueTypeWrapper.fromJson(entity[1]));
      }).toList();
    }
  }

  void checkDataCorrect() {
    for (int i = 0; i < choicePage.lineSettings.length; i++) {
      var line = choicePage.lineSettings[i];
      line.currentPos = i;
      for (int x = 0; x < line.children.length; x++) {
        line.children[x].currentPos = x;
      }
    }
  }

  Choice? getNode(Pos pos) {
    if (pos.length == 1) return choicePage.lineSettings[pos.first];
    return getChoiceNode(pos);
  }

  Choice? getChoice(Pos pos) {
    if (pos.first >= choicePage.lineSettings.length) return null;
    Choice child = choicePage.lineSettings[pos.first];
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
    var output = getChoice(pos);
    if (output is ChoiceNode) return output;
    return null;
  }

  ChoiceLine? getLineSetting(int y) {
    if (choicePage.lineSettings.length <= y) return null;
    return choicePage.lineSettings[y];
  }

  void updateStatusAll() {
    VariableDataBase().clear();
    for (var element in _globalSetting) {
      VariableDataBase().setValue(element.$1, element.$2, ValueTypeLocation.global);
    }
    for (var i = 0; i < choicePage.lineSettings.length; i++) {
      var lineSetting = choicePage.lineSettings[i];
      VariableDataBase().setValue(lineSetting.valName, ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.global);
    }
    for (var i = 0; i < choicePage.lineSettings.length; i++) {
      var lineSetting = choicePage.lineSettings[i];
      lineSetting.execute();
      VariableDataBase().clearLocalVariable();
    }
  }

  void generateRecursiveParser() {
    for (var lineSetting in choicePage.lineSettings) {
      lineSetting.generateParser();
    }
  }

  List<(Pos, int)> get selectedPos {
    List<(Pos, int)> selectedPos = [];
    for (var line in choicePage.lineSettings) {
      for (var choice in line.children) {
        (choice as ChoiceNode).recursiveFunction((node) {
          if(node is! ChoiceNode){
            return;
          }
          if (node.isOpen() &&
              node.isSelectableMode &&
              !node.choiceNodeOption.hideAsResult) {
            selectedPos.add((node.pos, node.select));
          } else if (node.choiceNodeMode == ChoiceNodeMode.unSelectableMode &&
              node.choiceNodeOption.showAsResult) {
            selectedPos.add((node.pos, node.select));
          }
        });
      }
    }
    return selectedPos;
  }

  void setSelectedPosInternal(String json) {
    var jsonDecoded = jsonDecode(json);
    for (var data in jsonDecoded) {
      var pos = Pos(data: (data['pos'] as List).map((e) => e as int).toList());
      var select = data['select'] as int;
      getChoiceNode(pos)?.selectNode(select);
    }
    updateStatusAll();
  }

  String getSelectedPosInternal() {
    return jsonEncode(selectedPos
        .map((e) => {'pos': e.$1.data, 'select': e.$2})
        .toList());
  }
}
