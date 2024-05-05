import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void printStatus(List<ChoiceNode> choiceNode) {
  for (var element in choiceNode) {
    print(
        "${element.pos} ${element.select} ${element.selectableStatus} ${element.isOpen()}");
  }
}

void main() {
  test('dependency_test_0', () {
    var platform = PlayablePlatform();
    var lineSetting0 = ChoiceLine();
    var lineSetting1 = ChoiceLine(
        choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    lineSetting0.generateParser();
    platform.choicePage.addChildren(lineSetting0);
    lineSetting1.generateParser();
    platform.choicePage.addChildren(lineSetting1);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()
      ..title = "testNode1"
      ..conditionalCodeHandler.conditionVisibleString = "testNode0";
    var choiceNode2 = ChoiceNode.empty()
      ..title = "testNode2"
      ..conditionalCodeHandler.conditionClickableString = "testNode0";
    choiceNode1.generateParser();
    choiceNode2.generateParser();
    platform.choicePage.choiceLines[0].addChildren(choiceNode0);
    platform.choicePage.choiceLines[1].addChildren(choiceNode1);
    platform.choicePage.choiceLines[1].addChildren(choiceNode2);
    platform.updateStatus();
    choiceNode0.selectNode(0);
    platform.updateStatus();
    choiceNode1.selectNode(0);
    platform.updateStatus();
    choiceNode2.selectNode(0);

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(choiceNode2.select, 1);
    expect(choiceNode0.isOpen(), true);
    expect(choiceNode1.isOpen(), true);
    expect(choiceNode1.isHide(), false);
    expect(choiceNode2.isOpen(), true);
    choiceNode0.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode2.select, 0);
    expect(choiceNode0.isOpen(), true);
    expect(choiceNode1.isOpen(), true);
    expect(choiceNode1.isHide(), true);
    expect(choiceNode2.isOpen(), false);
  });

  test('forced_uncheck0', () {
    var platform = PlayablePlatform();
    platform.globalSetting.add(("point", ValueTypeWrapper(ValueType.int(0))));
    var lineSetting0 = ChoiceLine(
        choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    lineSetting0.generateParser();
    platform.choicePage.addChildren(lineSetting0);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()
      ..title = "testNode1"
      ..conditionalCodeHandler.conditionClickableString = "testNode0"
      ..conditionalCodeHandler.executeCodeString = "point += 5";
    choiceNode0.generateParser();
    choiceNode1.generateParser();
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.select, 0);
    expect(choiceNode1.selectableStatus.isOpen, false);

    choiceNode0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 1);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.select, 0);
    expect(choiceNode1.selectableStatus.isOpen, true);

    choiceNode1.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 1);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.select, 1);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 5);

    choiceNode0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.select, 0);
    expect(choiceNode1.selectableStatus.isOpen, false);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 0);

    choiceNode0.selectNode(0);
    platform.updateStatus();
    choiceNode1.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 1);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.select, 1);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 5);
  });

  test('point_test', () {
    var platform = PlayablePlatform();
    platform.globalSetting.add(("point", ValueTypeWrapper(ValueType.int(0))));
    var lineSetting0 = ChoiceLine(
        choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    lineSetting0.generateParser();
    platform.choicePage.addChildren(lineSetting0);
    var choiceNode0 = ChoiceNode.empty()
      ..title = "testNode0"
      ..conditionalCodeHandler.conditionClickableString = "point >= 0"
      ..conditionalCodeHandler.executeCodeString = "point += 1";
    var choiceNode1 = ChoiceNode.empty()
      ..title = "testNode1"
      ..conditionalCodeHandler.conditionClickableString = "point >= 1"
      ..conditionalCodeHandler.executeCodeString = "point += 1";
    var choiceNode2 = ChoiceNode.empty()
      ..title = "testNode2"
      ..conditionalCodeHandler.conditionClickableString = "point >= 2"
      ..conditionalCodeHandler.executeCodeString = "point += 1";
    choiceNode0.generateParser();
    choiceNode1.generateParser();
    choiceNode2.generateParser();
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    lineSetting0.addChildren(choiceNode2);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode2.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, false);
    expect(choiceNode2.selectableStatus.isOpen, false);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 0);

    choiceNode0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode2.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, false);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 1);

    choiceNode1.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(choiceNode2.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 2);

    choiceNode2.selectNode(0);
    platform.updateStatus();
    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(choiceNode2.select, 1);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(VariableDataBase().getValueType("point")?.dataUnzip, 3);
  });
}
