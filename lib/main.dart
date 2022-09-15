@JS()
library cyoap_core;

import 'dart:convert';

import 'package:cyoap_core/playable_platform.dart';
import 'package:js/js.dart';
import 'choiceNode/choice_line.dart';
import 'choiceNode/pos.dart';

late PlayablePlatform platform;

//dart compile js -O2 --no-source-maps lib/main.dart -o cyoap_core.js
void main() {
  _loadPlatform = allowInterop(_loadPlatformInternal);
  _isSelectable = allowInterop(_isSelectableInternal);
  _isSelected = allowInterop(_isSelectedInternal);
  _select = allowInterop(_selectInternal);
  _getSize = allowInterop(_getSizeInternal);
  _getImage = allowInterop(_getImageInternal);
  _getContents = allowInterop(_getContentsInternal);
  _childLength = allowInterop(_childLengthInternal);
  _lineLength = allowInterop(_lineLengthInternal);
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

@JS('isSelectable')
external set _isSelectable(bool Function(List<dynamic> pos) f);

@JS()
bool _isSelectableInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.isSelectableMode ?? false;
}

@JS('isSelected')
external set _isSelected(bool Function(List<dynamic> pos) f);

@JS()
bool _isSelectedInternal(List<dynamic> pos) {
  Pos innerPos = listToPos(pos);
  return platform.getChoiceNode(innerPos)?.isSelected() ?? false;
}

@JS('select')
external set _select(void Function(List<dynamic> pos, int n) f);

@JS()
void _selectInternal(List<dynamic> pos, int n) {
  Pos innerPos = listToPos(pos);
  platform.getChoiceNode(innerPos)?.selectNode(n);
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
