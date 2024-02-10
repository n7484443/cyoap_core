import '../grammar/value_type.dart';
import '../variable_db.dart';
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
      'children': children,
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
    for (var i = 0; i < choiceLines.length; i++) {
      var lineSetting = choiceLines[i];
      VariableDataBase().setValue(lineSetting.valName,
          ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.global);
    }
    for (var i = 0; i < choiceLines.length; i++) {
      var lineSetting = choiceLines[i];
      lineSetting.execute();
      VariableDataBase().clearLocalVariable();
    }
  }

  @override
  Choice clone() {
    throw UnimplementedError();
  }
}
