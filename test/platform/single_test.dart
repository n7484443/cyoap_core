import 'dart:math';

import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main() {
  test('defaultModeTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()..title = "testNode";
    platform.choicePage.choiceLines[0].addChildren(choiceNode);
    platform.updateStatus();

    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(choiceNode.isOpen(), true);
    expect(choiceNode.isExecute(), false);
    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(choiceNode.isOpen(), true);
    expect(choiceNode.isExecute(), true);
    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(choiceNode.isOpen(), true);
    expect(choiceNode.isExecute(), false);
  });

  test('defaultModeTest_nonSelectable', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()..title = "testNode";
    choiceNode.conditionalCodeHandler.conditionClickableString = "false";
    platform.choicePage.choiceLines[0].addChildren(choiceNode);
    choiceNode.generateParser();
    platform.updateStatus();

    expect(ins.getValueType("testNode")?.dataUnzip, false);
    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
  });

  test('unSelectableModeTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()..title = "testNode";
    choiceNode.choiceNodeMode = ChoiceNodeMode.unSelectableMode;
    choiceNode.conditionalCodeHandler.conditionVisibleString = "testInput";
    choiceNode.conditionalCodeHandler.executeCodeString = "point += 1";


    platform.choicePage.choiceLines[0].addChildren(choiceNode);
    choiceNode.generateParser();

    platform.addGlobalSetting('testInput', ValueTypeWrapper(ValueType.bool(false)));
    platform.addGlobalSetting('point', ValueTypeWrapper(ValueType.int(0)));
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("point")?.dataUnzip, 0);

    platform.addGlobalSetting('testInput', ValueTypeWrapper(ValueType.bool(true)));
    platform.addGlobalSetting('point', ValueTypeWrapper(ValueType.int(0)));
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("point")?.dataUnzip, 1);
    //expect(ins.getValueType("testNode2")?.dataUnzip, true);
  });

  test('randomModeTest', () {
    var ins = VariableDataBase();
    var seed = 10;
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()
      ..title = "testNode"
      ..choiceNodeMode = ChoiceNodeMode.randomMode
      ..maximumStatus = 10;
    platform.choicePage.choiceLines[0].addChildren(choiceNode);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:random")?.dataUnzip, -1);

    choiceNode.seed = seed;
    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:random")?.dataUnzip,
        Random(seed).nextInt(10));

    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:random")?.dataUnzip, -1);
  });

  test('multiSelectTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()
      ..title = "testNode"
      ..choiceNodeMode = ChoiceNodeMode.multiSelect
      ..maximumStatus = 2;
    platform.choicePage.choiceLines[0].addChildren(choiceNode);
    platform.updateStatus();

    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 0);

    choiceNode.selectNode(1);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 1);

    choiceNode.selectNode(1);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 2);

    choiceNode.selectNode(1);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 2);

    choiceNode.selectNode(-1);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 1);

    choiceNode.selectNode(-1);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 0);
  });

  test('defaultModeTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()..title = "testNode"..choiceNodeMode=ChoiceNodeMode.unSelectableMode;
    platform.choicePage.choiceLines[0].addChildren(choiceNode);

    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(choiceNode.select, 0);

    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(choiceNode.select, 0);
  });

  test('click and hide test', (){
    var platform = PlayablePlatform();
    platform.choicePage.addChildren(ChoiceLine());
    var choiceNode = ChoiceNode.empty()..title = "testNode"..conditionalCodeHandler.conditionVisibleString = "not(testNode)";
    platform.choicePage.choiceLines[0].addChildren(choiceNode);
    choiceNode.generateParser();

    platform.updateStatus();
    expect(choiceNode.isOpen(), true);
    expect(choiceNode.isHide(), false);

    choiceNode.selectNode(0);
    platform.updateStatus();
    expect(choiceNode.isOpen(), true);
    expect(choiceNode.isHide(), true);
  });
}
