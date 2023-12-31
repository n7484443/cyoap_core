import 'dart:convert';

import 'choice.dart';
import 'choice_line.dart';

// TODO: page 시스템 구현
class ChoicePage with Choice {
  List<ChoiceLine> get choiceLines => children.cast<ChoiceLine>();

  ChoicePage(int page) {
    currentPos = page;
  }

  ChoicePage.fromJson(Map<String, dynamic> json) {
    children = json['children'].cast<ChoiceLine>();
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'children': jsonEncode(children),
    };
    return map;
  }

  @override
  void generateParser() {}

  @override
  bool get isSelectableMode => true;

  @override
  void updateStatus() {}
}
