import 'dart:math';

import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main() {
  var ins = VariableDataBase();
  test('defaultModeTest', () {
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
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
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
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

  test('randomModeTest', () {
    var seed = 10;
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
    var choiceNode = ChoiceNode.empty()
      ..title = "testNode"
      ..choiceNodeMode = ChoiceNodeMode.randomMode
      ..maximumStatus = 10;
    platform.lineSettings[0].addChildren(choiceNode);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:random")?.dataUnzip, -1);

    choiceNode.selectNode(0, seed: seed);
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
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
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
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
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
