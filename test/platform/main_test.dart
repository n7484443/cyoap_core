import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void printStatus(List<ChoiceNode> choiceNode){
  for (var element in choiceNode) {
    print("${element.pos} ${element.select} ${element.selectableStatus} ${element.checkParentClickable()}");
  }
}

void main() {
  test('main replacement test', () {
    var ins = VariableDataBase();
    var platform = PlayablePlatform();
    platform.globalSetting['test'] = ValueTypeWrapper(ValueType.string("for test"));
    var lineSetting0 = ChoiceLine(0);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    choiceNode0.recursiveStatus.executeCodeString = "test = 0";
    var choiceNode1 = ChoiceNode(title: "testNode1", contents: "t{{test}} t", width: 1, imageString: '');
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    lineSetting0.generateParser();

    var lineSetting1 = ChoiceLine(1);
    var choiceNode1_0 = ChoiceNode.empty()..title = "testNode 1_0";
    choiceNode1_0.recursiveStatus.executeCodeString = "test = 'printTest'";
    lineSetting1.addChildren(choiceNode1_0);
    lineSetting1.generateParser();

    platform.lineSettings.add(lineSetting0);
    platform.lineSettings.add(lineSetting1);

    platform.updateStatusAll();
    expect(choiceNode1.contentsString, "tfor test t");

    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    print(ins.getValueType('test'));
    expect(choiceNode1.contentsString, "t0 t");

    choiceNode1_0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode1.contentsString, "t0 t");

    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode1.contentsString, "tfor test t");
  });
}
