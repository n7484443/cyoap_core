import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void printStatus(List<ChoiceNode> choiceNode) {
  for (var element in choiceNode) {
    print(
        "${element.pos} ${element.select} ${element.selectableStatus} ${element.checkParentClickable()}");
  }
}

void main() {
  test('main replacement test', () {
    var platform = PlayablePlatform();
    platform.addGlobalSetting(
        'test', ValueTypeWrapper(ValueType.string("initial")));
    var lineSetting0 = ChoiceLine(0);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    choiceNode0.recursiveStatus.executeCodeString = "test = 0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    choiceNode1.recursiveStatus.executeCodeString = "test = 'other'";
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    lineSetting0.generateParser();

    var lineSetting1 = ChoiceLine(1);
    var choiceNode1_0 = ChoiceNode(
        title: "testNode 1_0", contents: "a {{test}} b", imageString: '');
    choiceNode1_0.recursiveStatus.executeCodeString = "test = 'self'";
    lineSetting1.addChildren(choiceNode1_0);
    lineSetting1.generateParser();

    platform.lineSettings.add(lineSetting0);
    platform.lineSettings.add(lineSetting1);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a initial b");

    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a 0 b");

    choiceNode1.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a other b");

    choiceNode1_0.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a self b");

    choiceNode0.selectNode(0);
    choiceNode1.selectNode(0);
    choiceNode1_0.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a initial b");
  });
}
