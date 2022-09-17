@JS()
library cyoap_core;

import 'dart:async';
import 'dart:convert';

import 'package:cyoap_core/playable_platform.dart';
import 'package:js/js.dart';
import 'choiceNode/choice_line.dart';
import 'choiceNode/choice_node.dart';
import 'choiceNode/pos.dart';

late PlayablePlatform platform;

//dart compile js -O2 --no-source-maps lib/main.dart -o cyoap_core.js
void main() {
  _loadPlatform = allowInterop(_loadPlatformInternal);
  _getSelect = allowInterop(_getSelectInternal);
  _select = allowInterop(_selectInternal);
  _getChoiceStatus = allowInterop(_getChoiceStatusInternal);
  _getVisible = allowInterop(_getVisibleInternal);
  _getSize = allowInterop(_getSizeInternal);
  _getImage = allowInterop(_getImageInternal);
  _getContents = allowInterop(_getContentsInternal);
  _childLength = allowInterop(_childLengthInternal);
  _lineLength = allowInterop(_lineLengthInternal);
  _getChoiceNodeMode = allowInterop(_getChoiceNodeModeInternal);
  _updatePlatform = allowInterop(_updatePlatformInternal);
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
  return platform.getGenerableParserAndPosition(innerPos)?.choiceStatus.status.name ?? '';
}

@JS('getVisible')
external set _getVisible(bool Function(List<dynamic> pos) f);

@JS()
bool _getVisibleInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getGenerableParserAndPosition(innerPos)?.choiceStatus.visible ?? true;
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