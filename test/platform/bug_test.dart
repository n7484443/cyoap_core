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
    lineSetting0.addChild(choiceNode0);
    lineSetting0.generateParser();
    platform.choicePage.addChild(lineSetting0);

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
    lineSetting0.addChild(choiceNode1);
    lineSetting0.generateParser();
    platform.choicePage.addChild(lineSetting0);

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


  /* https://github.com/n7484443/cyoap_flutter/issues/75 issue */
  test('A-B-C test', () {
    var platform = PlayablePlatform();
    platform.addGlobalSetting(
        "p", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(0), visible: false));
    var lineSetting0 = ChoiceLine();
    var choiceNodes = [ChoiceNode(title: "A"), ChoiceNode(title: "B"), ChoiceNode(title: "C")];
    choiceNodes[1].conditionalCodeHandler.conditionClickableString = "A";
    choiceNodes[1].conditionalCodeHandler.conditionVisibleString = "A";
    choiceNodes[2].conditionalCodeHandler.conditionClickableString = "B";
    choiceNodes[2].conditionalCodeHandler.conditionVisibleString = "B";
    for(int i = 0; i < choiceNodes.length; i++) {
      choiceNodes[i].conditionalCodeHandler.executeCodeString = "p=${i+1}";
      lineSetting0.addChild(choiceNodes[i]);
    }
    lineSetting0.generateParser();
    platform.choicePage.addChild(lineSetting0);

    platform.updateStatus();
    expect(choiceNodes[0].isOpen(), true);
    expect(choiceNodes[0].isHide(), false);
    expect(choiceNodes[1].isOpen(), false);
    expect(choiceNodes[1].isHide(), true);
    expect(choiceNodes[2].isOpen(), false);
    expect(choiceNodes[2].isHide(), true);
    expect(ins.getValueType('p')?.dataUnzip, 0);

    choiceNodes[0].selectNode(0);
    platform.updateStatus();
    choiceNodes[1].selectNode(0);
    platform.updateStatus();
    choiceNodes[2].selectNode(0);
    platform.updateStatus();
    expect(choiceNodes[0].isOpen(), true);
    expect(choiceNodes[0].isHide(), false);
    expect(choiceNodes[1].isOpen(), true);
    expect(choiceNodes[1].isHide(), false);
    expect(choiceNodes[2].isOpen(), true);
    expect(choiceNodes[2].isHide(), false);
    expect(ins.getValueType('p')?.dataUnzip, 3);

    choiceNodes[0].selectNode(0);
    platform.updateStatus();
    expect(choiceNodes[0].isOpen(), true);
    expect(choiceNodes[0].isHide(), false);
    expect(choiceNodes[1].isOpen(), false);
    expect(choiceNodes[1].isHide(), true);
    expect(choiceNodes[2].isOpen(), false);
    expect(choiceNodes[2].isHide(), true);
    expect(ins.getValueType('p')?.dataUnzip, 0);

    choiceNodes[0].selectNode(0);
    platform.updateStatus();
    expect(choiceNodes[0].isOpen(), true);
    expect(choiceNodes[0].isHide(), false);
    expect(choiceNodes[1].isOpen(), true);
    expect(choiceNodes[1].isHide(), false);
    expect(choiceNodes[2].isOpen(), false);
    expect(choiceNodes[2].isHide(), true);
    expect(ins.getValueType('p')?.dataUnzip, 1);

    choiceNodes[1].selectNode(0);
    platform.updateStatus();
    expect(choiceNodes[0].isOpen(), true);
    expect(choiceNodes[0].isHide(), false);
    expect(choiceNodes[1].isOpen(), true);
    expect(choiceNodes[1].isHide(), false);
    expect(choiceNodes[2].isOpen(), true);
    expect(choiceNodes[2].isHide(), false);
    expect(choiceNodes[2].select, 0);
    expect(ins.getValueType('p')?.dataUnzip, 2);
  });
}
