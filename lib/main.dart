@JS()
library cyoap_core;

import 'dart:async';
import 'dart:convert';

import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/preset/line_preset.dart';
import 'package:cyoap_core/preset/node_preset.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:js/js.dart';

import 'choiceNode/choice_line.dart';
import 'choiceNode/choice_node.dart';
import 'choiceNode/pos.dart';

late PlayablePlatform platform;

//dart compile js -O2 --no-source-maps lib/main.dart -o cyoap_core.js
void main() {
  _loadPlatform = allowInterop(_loadPlatformInternal);
  _getPlatformDesign = allowInterop(_getPlatformDesignInternal);
  _updatePlatform = allowInterop(_updatePlatformInternal);

  _getSelectedPos = allowInterop(_getSelectedPosInternal);
  _setSelectedPos = allowInterop(_setSelectedPosInternal);

  _lineLength = allowInterop(_lineLengthInternal);

  _getSelect = allowInterop(_getSelectInternal);
  _select = allowInterop(_selectInternal);
  _getMaximumStatus = allowInterop(_getMaximumStatusInternal);
  _getChoiceStatus = allowInterop(_getChoiceStatusInternal);
  _getSize = allowInterop(_getSizeInternal);
  _getTitle = allowInterop(_getTitleInternal);
  _getImage = allowInterop(_getImageInternal);
  _getContents = allowInterop(_getContentsInternal);
  _getChoiceNodeOption = allowInterop(_getChoiceNodeOptionInternal);
  _childLength = allowInterop(_childLengthInternal);
  _getChoiceNodeMode = allowInterop(_getChoiceNodeModeInternal);

  _getValueList = allowInterop(_getValueListInternal);
  _getNodePresetList = allowInterop(_getNodePresetListInternal);
  _getLinePresetList = allowInterop(_getLinePresetListInternal);

  _getLineOption = allowInterop(_getLineOptionInternal);

  _getErrorLog = allowInterop(_getErrorLogInternal);

  _getNodeDefaultPreset = allowInterop(_getNodeDefaultPresetInternal);
  _getLineDefaultPreset = allowInterop(_getLineDefaultPresetInternal);
}

@JS('loadPlatform')
external set _loadPlatform(void Function(String, List<dynamic>) f);

@JS()
void _loadPlatformInternal(String jsonPlatform, List<dynamic> jsonLine) {
  platform = PlayablePlatform.fromJson(jsonDecode(jsonPlatform));
  for(int i = 0; i < jsonLine.length; i++){
    platform.lineSettings.add(ChoiceLine.fromJson(jsonDecode(jsonLine[i]), i));
  }
  platform.updateStatusAll();
}

@JS('getSelect')
external set _getSelect(int Function(List<dynamic> pos) f);

@JS()
int _getSelectInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  var node = platform.getChoiceNode(innerPos);
  return node?.select ?? 0;
}

bool isProcessing = false;

@JS('select')
external set _select(void Function(List<dynamic> pos, int n) f);

@JS()
void _selectInternal(List<dynamic> pos, int n) {
  if (!isProcessing) {
    Pos innerPos = listToPos(pos);
    platform.getChoiceNode(innerPos)?.selectNode(n);
    isProcessing = true;
    Timer(Duration(microseconds: 10), () {
      isProcessing = false;
    });
  }
}

@JS('getMaximumStatus')
external set _getMaximumStatus(int Function(List<dynamic> pos) f);

@JS()
int _getMaximumStatusInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.maximumStatus ?? 0;
}

@JS('getChoiceStatus')
external set _getChoiceStatus(ExternalSelectableStatus Function(List<dynamic> pos) f);

@JS()
ExternalSelectableStatus _getChoiceStatusInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  var status = platform.getChoice(innerPos)?.selectableStatus ?? SelectableStatus();
  return ExternalSelectableStatus(isHide: status.isHide, isOpen: status.isOpen);
}

@JS()
@anonymous
class ExternalSelectableStatus {
  external bool get isHide;
  external bool get isOpen;
  external factory ExternalSelectableStatus({bool isHide, bool isOpen});
}

@JS('getSize')
external set _getSize(int Function(List<dynamic> pos) f);

@JS()
int _getSizeInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.getMaxSize(true) ?? 12;
}

@JS('getContents')
external set _getContents(String Function(List<dynamic> pos) f);

@JS()
String _getContentsInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.contentsString ?? "";
}

@JS('getImage')
external set _getImage(String Function(List<dynamic> pos) f);

@JS()
String _getImageInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.imageString ?? "";
}

@JS('getTitle')
external set _getTitle(String Function(List<dynamic> pos) f);

@JS()
String _getTitleInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.title ?? "";
}

@JS('childLength')
external set _childLength(int Function(List<dynamic> pos) f);

@JS()
int _childLengthInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getNode(innerPos)?.children.length ?? 0;
}

@JS('lineLength')
external set _lineLength(int Function() f);

@JS()
int _lineLengthInternal() {
  return platform.lineSettings.length;
}

Pos listToPos(List<dynamic> pos) {
  return Pos(data: pos.map((e) => e as int).toList());
}

@JS('getChoiceNodeMode')
external set _getChoiceNodeMode(String Function(List<dynamic> pos) f);

@JS()
String _getChoiceNodeModeInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  var mod = platform.getChoiceNode(innerPos)?.choiceNodeMode ??
      ChoiceNodeMode.defaultMode;
  return mod.name.trim();
}

@JS('updatePlatform')
external set _updatePlatform(void Function() f);

@JS()
void _updatePlatformInternal() {
  platform.updateStatusAll();
}

@JS('getValueList')
external set _getValueList(List<String> Function() f);

@JS()
List<String> _getValueListInternal() {
  var list = <String>[];
  for (var name in VariableDataBase().visibleOrder) {
    var wrapper = VariableDataBase().getValueTypeWrapper(name)!;
    if (wrapper.visible) {
      if (wrapper.displayName.isEmpty) {
        list.add("$name : ${wrapper.valueType.dataUnzip}");
      } else {
        list.add("${wrapper.displayName} : ${wrapper.valueType.dataUnzip}");
      }
    }
  }
  return list;
}

@JS('getChoiceNodeOption')
external set _getChoiceNodeOption(String Function(List<dynamic> pos) f);

@JS()
String _getChoiceNodeOptionInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  var node = platform.getChoiceNode(innerPos);
  return jsonEncode(node?.choiceNodeOption.toJson());
}

@JS('getNodePresetList')
external set _getNodePresetList(String Function() f);

@JS()
String _getNodePresetListInternal() {
  var list = platform.designSetting.choiceNodePresetList;
  return jsonEncode(list.map((e) => e.toJson()).toList());
}

@JS('getLinePresetList')
external set _getLinePresetList(String Function() f);

@JS()
String _getLinePresetListInternal() {
  var list = platform.designSetting.choiceLinePresetList;
  return jsonEncode(list.map((e) => e.toJson()).toList());
}

@JS('getLineOption')
external set _getLineOption(String Function(int pos) f);

@JS()
String _getLineOptionInternal(int pos) {
  var line = platform.lineSettings[pos];
  return jsonEncode(line.choiceLineOption.toJson());
}

@JS('getPlatformDesign')
external set _getPlatformDesign(String Function() f);

@JS()
String _getPlatformDesignInternal() {
  return jsonEncode(platform.designSetting.toJson());
}

@JS('getSelectedPos')
external set _getSelectedPos(String Function() f);

@JS()
String _getSelectedPosInternal() {
  return platform.getSelectedPosInternal();
}

@JS('setSelectedPos')
external set _setSelectedPos(void Function(String json) f);

@JS()
void _setSelectedPosInternal(String json) {
  platform.setSelectedPosInternal(json);
}

@JS('getErrorLog')
external set _getErrorLog(List<String> Function() f);

@JS()
List<String> _getErrorLogInternal() {
  return Analyser().errorList;
}

@JS('getNodeDefaultPreset')
external set _getNodeDefaultPreset(String Function() f);

@JS()
String _getNodeDefaultPresetInternal() {
  return jsonEncode(ChoiceNodeDesignPreset(name: 'default').toJson());
}

@JS('getLineDefaultPreset')
external set _getLineDefaultPreset(String Function() f);

@JS()
String _getLineDefaultPresetInternal() {
  return jsonEncode(ChoiceLineDesignPreset(name: 'default').toJson());
}
