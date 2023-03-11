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
    var lineSetting = ChoiceLine(0);
    platform.lineSettings.add(lineSetting);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    choiceNode0.recursiveStatus.executeCodeString = "test = 0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1"..contentsString = "t{{test}} t";
    platform.lineSettings[0].addChildren(choiceNode0);
    platform.lineSettings[0].addChildren(choiceNode1);
    lineSetting.generateParser();
    platform.updateStatusAll();

    ins.setValue('test', ValueTypeWrapper(ValueType.string("for test")), isGlobal: true);
    expect(choiceNode1.currentContentsString, "tfor test t");

    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    print(ins.getValueType('test'));
    expect(choiceNode1.currentContentsString, "t0 t");

    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode1.currentContentsString, "tfor test t");
  });
}
