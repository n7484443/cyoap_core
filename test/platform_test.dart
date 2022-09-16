import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main() {
  var ins = VariableDataBase();
  test('clickTest', () {
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
  test('multiTest', () {
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
    var choiceNode = ChoiceNode.empty()
      ..title = "testNode"
      ..choiceNodeMode = ChoiceNodeMode.multiSelect;
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

    choiceNode.selectNode(-1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, true);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 1);

    choiceNode.selectNode(-1);
    platform.updateStatusAll();
    expect(ins.getValueType("testNode")?.dataUnzip, false);
    expect(ins.getValueType("testNode:multi")?.dataUnzip, 0);
  });
}
