import 'package:freezed_annotation/freezed_annotation.dart';

import '../grammar/value_type.dart';
import '../variable_db.dart';
import 'choice.dart';
import 'choice_line.dart';

part 'choice_page.freezed.dart';

part 'choice_page.g.dart';

@freezed
class ChoicePageOption with _$ChoicePageOption {
  factory ChoicePageOption({
    @Default(false) bool setEntireAsOneLine,
  }) = _ChoicePageOption;

  factory ChoicePageOption.fromJson(Map<String, dynamic> json) =>
      _$ChoicePageOptionFromJson(json);
}

// TODO: page 시스템 구현
class ChoicePage with Choice {
  ChoicePageOption choicePageOption;

  List<ChoiceLine> get choiceLines => children.cast<ChoiceLine>();

  ChoicePage(int page) : choicePageOption = ChoicePageOption() {
    super.currentPos = page;
  }

  ChoicePage.fromJson(Map<String, dynamic> json)
      : choicePageOption = json['choicePageOption'] == null
            ? ChoicePageOption()
            : ChoicePageOption.fromJson(json['choicePageOption']) {
    children = json['children'].cast<ChoiceLine>();
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'children': children,
      'choicePageOption': choicePageOption.toJson(),
    };
    return map;
  }

  @override
  void generateParser() {
    for (var lineSetting in choiceLines) {
      lineSetting.generateParser();
    }
  }

  @override
  bool get isSelectableMode => true;

  @override
  void updateStatus() {
    if (choicePageOption.setEntireAsOneLine) {

    }else{
      for (var i = 0; i < choiceLines.length; i++) {
        var lineSetting = choiceLines[i];
        VariableDataBase().setValue(
            lineSetting.valName,
            ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(0)),
            ValueTypeLocation.global);
      }
      for (var i = 0; i < choiceLines.length; i++) {
        var lineSetting = choiceLines[i];
        VariableDataBase().enterStackFrame();
        lineSetting.execute();
        VariableDataBase().exitStackFrame();
      }
    }
  }

  @override
  Choice clone() {
    throw UnimplementedError();
  }
}
