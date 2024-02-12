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

int fileVersion = 2;

class PlayablePlatform {
  final int currentFileVersion;
  String? stringImageName;
  ChoicePage choicePage = ChoicePage(0);
  List<(String, ValueTypeWrapper)> _globalSetting = [];

  List<(String, ValueTypeWrapper)> get globalSetting => _globalSetting;

  PlatformDesignSetting designSetting = PlatformDesignSetting();

  List<List<String>> selectedChoiceOrder = [];

  PlayablePlatform() : currentFileVersion = fileVersion;

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
      : stringImageName = json['stringImageName'],
        designSetting = PlatformDesignSetting.fromJson(json),
        currentFileVersion = json['currentFileVersion'] ?? 0 {
    if (json['globalSetting'] is Map) {
      _globalSetting = (json['globalSetting'] as Map)
          .keys
          .map((name) => (
                name as String,
                ValueTypeWrapper.fromJson(json['globalSetting'][name])
              ))
          .toList();
    } else {
      _globalSetting =
          (json['globalSetting'] as List).map((e) => e as List).map((entity) {
        return (entity[0] as String, ValueTypeWrapper.fromJson(entity[1]));
      }).toList();
    }
  }

  void checkDataCorrect() {
    choicePage.checkDataCorrect();
  }

  Choice? getChoice(Pos pos) {
    return choicePage.findChoice(pos);
  }

  ChoiceNode? getChoiceNode(Pos pos) {
    var output = getChoice(pos);
    if (output is ChoiceNode) return output;
    return null;
  }

  ChoiceLine? getChoiceLine(Pos pos) {
    var output = getChoice(pos);
    if (output is ChoiceLine) return output;
    return null;
  }

  void updateStatus() {
    VariableDataBase().clear();
    for (var element in _globalSetting) {
      VariableDataBase()
          .setValue(element.$1, element.$2, ValueTypeLocation.global);
    }
    choicePage.updateStatus();
  }

  void generateRecursiveParser() {
    choicePage.generateParser();
  }

  List<(Pos, int)> get selectedPos {
    List<(Pos, int)> selectedPos = [];
    for (var line in choicePage.choiceLines) {
      for (var choice in line.children) {
        (choice as ChoiceNode).recursiveFunction((node) {
          if (node is! ChoiceNode) {
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
    updateStatus();
  }

  String getSelectedPosInternal() {
    return jsonEncode(
        selectedPos.map((e) => {'pos': e.$1.data, 'select': e.$2}).toList());
  }
}
