import 'dart:math';

import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

import '../analyzer/analyzer_tool.dart';

void main() {
  test('defaultModeTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var choiceNode = ChoiceNode.empty()..title = "testNode";
    platform.lineSettings[0].addChildren(choiceNode);
    platform.updateStatusAll();

    expect(ins.getValueType("testNode")?.dataUnzip, false);
    choiceNode.selectNode(0);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    choiceNode.selectNode(0);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
  });

  test('defaultModeTest_nonSelectable', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var choiceNode = ChoiceNode.empty()..title = "testNode";
    choiceNode.recursiveStatus.conditionClickableString = "false";
    platform.lineSettings[0].addChildren(choiceNode);
    choiceNode.generateParser();
    platform.updateStatusAll();

    expect(ins.getValueType("testNode")?.dataUnzip, false);
    choiceNode.selectNode(0);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
  });

  test('unSelectableModeTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var choiceNode = ChoiceNode.empty()..title = "testNode";
    choiceNode.choiceNodeMode = ChoiceNodeMode.unSelectableMode;
    choiceNode.recursiveStatus.conditionVisibleString = "testInput";
    choiceNode.recursiveStatus.executeCodeString = "point += 1";
    var choiceNode2 = ChoiceNode.empty()..title = "testNode2";


    platform.lineSettings[0].addChildren(choiceNode);
    //platform.lineSettings[0].addChildren(choiceNode2);
    choiceNode.generateParser();

    platform.globalSetting['testInput'] = ValueTypeWrapper(ValueType.bool(false));
    platform.globalSetting['point'] = ValueTypeWrapper(ValueType.int(0));
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("point")?.dataUnzip, 0);

    platform.globalSetting['testInput'] = ValueTypeWrapper(ValueType.bool(true));
    platform.globalSetting['point'] = ValueTypeWrapper(ValueType.int(0));
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("point")?.dataUnzip, 1);


    //expect(ins.getValueType("testNode2")?.dataUnzip, true);
  });

  test('randomModeTest', () {
    var ins = VariableDataBase();
    var seed = 10;
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var choiceNode = ChoiceNode.empty()
      ..title = "testNode"
      ..choiceNodeMode = ChoiceNodeMode.randomMode
      ..maximumStatus = 10;
    platform.lineSettings[0].addChildren(choiceNode);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:random")?.dataUnzip, -1);

    choiceNode.seed = seed;
    choiceNode.selectNode(0);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:random")?.dataUnzip,
        Random(seed).nextInt(10));

    choiceNode.selectNode(0);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:random")?.dataUnzip, -1);
  });

  test('multiSelectTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var choiceNode = ChoiceNode.empty()
      ..title = "testNode"
      ..choiceNodeMode = ChoiceNodeMode.multiSelect
      ..maximumStatus = 2;
    platform.lineSettings[0].addChildren(choiceNode);
    platform.updateStatusAll();

    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 0);

    choiceNode.selectNode(1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 1);

    choiceNode.selectNode(1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 2);

    choiceNode.selectNode(1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 2);

    choiceNode.selectNode(-1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 1);

    choiceNode.selectNode(-1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 0);
  });

  test('defaultModeTest', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var choiceNode = ChoiceNode.empty()..title = "testNode"..choiceNodeMode=ChoiceNodeMode.unSelectableMode;
    platform.lineSettings[0].addChildren(choiceNode);

    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(choiceNode.select, 0);

    choiceNode.selectNode(0);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(choiceNode.select, 0);
  });
}
