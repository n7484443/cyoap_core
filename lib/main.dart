@JS()
library cyoap_core;

import 'dart:async';
import 'dart:convert';

import 'package:cyoap_core/playable_platform.dart';
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

  _lineLength = allowInterop(_lineLengthInternal);

  _getSelect = allowInterop(_getSelectInternal);
  _select = allowInterop(_selectInternal);
  _getChoiceStatus = allowInterop(_getChoiceStatusInternal);
  _getSize = allowInterop(_getSizeInternal);
  _getTitle = allowInterop(_getTitleInternal);
  _getImage = allowInterop(_getImageInternal);
  _getContents = allowInterop(_getContentsInternal);
  _getChoiceNodeDesign = allowInterop(_getChoiceNodeDesignInternal);
  _childLength = allowInterop(_childLengthInternal);
  _getChoiceNodeMode = allowInterop(_getChoiceNodeModeInternal);

  _getValueList = allowInterop(_getValueListInternal);
}

@JS('loadPlatform')
external set _loadPlatform(void Function(String, List<dynamic>) f);

@JS()
void _loadPlatformInternal(String jsonPlatform, List<dynamic> jsonLine) {
  platform = PlayablePlatform.fromJson(jsonDecode(jsonPlatform));
  for (var line in jsonLine) {
    platform.lineSettings.add(LineSetting.fromJson(jsonDecode(line as String)));
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
  if(!isProcessing){
    Pos innerPos = listToPos(pos);
    platform.getChoiceNode(innerPos)?.selectNode(n);
    isProcessing = true;
    Timer(Duration(microseconds: 100), (){
      isProcessing = false;
    });
  }
}

@JS('getChoiceStatus')
external set _getChoiceStatus(String Function(List<dynamic> pos) f);

@JS()
String _getChoiceStatusInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getGenerableParserAndPosition(innerPos)?.selectableStatus.name ?? '';
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
  var mod = platform.getChoiceNode(innerPos)?.choiceNodeMode ?? ChoiceNodeMode.defaultMode;
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
  for(var key in VariableDataBase().varMapGlobal.keys){
    var wrapper = VariableDataBase().getValueTypeWrapper(key)!;
    if(wrapper.visible){
      list.add("${wrapper.displayName} : ${wrapper.valueType.dataUnzip}");
    }
  }
  return list;
}

@JS('getChoiceNodeDesign')
external set _getChoiceNodeDesign(String Function(List<dynamic> pos) f);

@JS()
String _getChoiceNodeDesignInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  var node = platform.getChoiceNode(innerPos);
  return jsonEncode(node?.choiceNodeDesign.toJson()) ;
}

@JS('getPlatformDesign')
external set _getPlatformDesign(String Function() f);

@JS()
String _getPlatformDesignInternal() {
  return jsonEncode(platform.designSetting.toJson());
}