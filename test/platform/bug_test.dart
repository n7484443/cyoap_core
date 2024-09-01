import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main() {
  var ins = VariableDataBase();

  test('numberTest', () {
    var platform = PlayablePlatform();
    platform.addGlobalSetting(
        "pt_b", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(50)));
    var lineSetting0 = ChoiceLine();
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    choiceNode0.conditionalCodeHandler.executeCodeString =
        "pt_b-=(4+testNode0:multi)";
    choiceNode0.choiceNodeMode = ChoiceNodeMode.multiSelect;
    choiceNode0.maximumStatus = 10;
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.generateParser();
    platform.choicePage.addChildren(lineSetting0);

    platform.updateStatus();
    expect(ins.getValueType('pt_b')?.dataUnzip, 50);
    for (int i = 1; i < choiceNode0.maximumStatus; i++) {
      choiceNode0.selectNode(i);
      platform.updateStatus();
      expect(ins.getValueType('pt_b')?.dataUnzip, 50 - (4 + i));
    }
  });

  /* https://github.com/n7484443/cyoap_flutter/issues/63 issue */
  test('setVisible bug', () {
    var platform = PlayablePlatform();
    // platform.addGlobalSetting(
    //     "visible", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(50), visible: true));
    platform.addGlobalSetting(
        "invisible", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(50), visible: false));
    var lineSetting0 = ChoiceLine();
    // var choiceNode0 = ChoiceNode.empty()..conditionalCodeHandler.executeCodeString = "setVisible('visible', false)";
    var choiceNode1 = ChoiceNode.empty()..conditionalCodeHandler.executeCodeString = "setVisible('invisible', true)";
    // lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    lineSetting0.generateParser();
    platform.choicePage.addChildren(lineSetting0);

    platform.updateStatus();
    // expect(ins.getValueTypeWrapper('visible')?.visible, true);
    expect(ins.getValueTypeWrapper('invisible')?.visible, false);

    // choiceNode0.selectNode(0);
    choiceNode1.selectNode(0);
    platform.updateStatus();
    // expect(ins.getValueTypeWrapper('visible')?.visible, false);
    expect(ins.getValueTypeWrapper('invisible')?.visible, true);

    // choiceNode0.selectNode(0);
    choiceNode1.selectNode(0);
    platform.updateStatus();
    // expect(ins.getValueTypeWrapper('visible')?.visible, true);
    expect(ins.getValueTypeWrapper('invisible')?.visible, false);
  });
}
