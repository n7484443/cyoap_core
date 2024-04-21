import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:test/test.dart';

void printStatus(List<ChoiceNode> choiceNode){
  for (var element in choiceNode) {
    print("${element.pos} ${element.select} ${element.selectableStatus} ${element.isOpen()}");
  }
}

void main() {
  test('lineMaximumTest', () {
    var platform = PlayablePlatform();
    var lineSetting = ChoiceLine(choiceLineOption: ChoiceLineOption(maxSelect: 1));
    lineSetting.generateParser();
    platform.choicePage.addChildren(lineSetting);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    var choiceNode2 = ChoiceNode.empty()..title = "testNode2"..choiceNodeMode=ChoiceNodeMode.unSelectableMode;
    lineSetting.addChildren(choiceNode0);
    lineSetting.addChildren(choiceNode1);
    lineSetting.addChildren(choiceNode2);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.isOpen(), true);
    expect(choiceNode1.isOpen(), true);
    expect(choiceNode2.isOpen(), true);
    expect(lineSetting.isOpen(), true);
    choiceNode0.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.isOpen(), true);
    expect(choiceNode1.isOpen(), false);
    expect(choiceNode2.isOpen(), true);
    expect(lineSetting.isOpen(), true);
    choiceNode1.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.isOpen(), true);
    expect(choiceNode1.isOpen(), false);
    expect(choiceNode2.isOpen(), true);
    expect(lineSetting.isOpen(), true);
    choiceNode0.selectNode(0);
    platform.updateStatus();
    choiceNode1.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode0.isOpen(), false);
    expect(choiceNode1.isOpen(), true);
    expect(choiceNode2.isOpen(), true);
    expect(lineSetting.isOpen(), true);
    choiceNode0.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode0.isOpen(), false);
    expect(choiceNode1.isOpen(), true);
    expect(choiceNode2.isOpen(), true);
    expect(lineSetting.isOpen(), true);
    choiceNode1.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.isOpen(), true);
    expect(choiceNode1.isOpen(), true);
    expect(choiceNode2.isOpen(), true);
    expect(lineSetting.isOpen(), true);
  });

  test('lineHideTest', () {
    var platform = PlayablePlatform();
    var lineSetting0 = ChoiceLine();
    var lineSetting1 = ChoiceLine()..conditionalCodeHandler.conditionVisibleString = "testNode0";
    lineSetting1.generateParser();
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    platform.choicePage.addChildren(lineSetting0);
    platform.choicePage.addChildren(lineSetting1);
    lineSetting0.addChildren(choiceNode0);
    lineSetting1.addChildren(choiceNode1);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(lineSetting1.isHide(), true);
    choiceNode0.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(lineSetting1.isHide(), false);
    choiceNode1.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(lineSetting1.isHide(), false);
    choiceNode0.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(lineSetting1.isHide(), true);
    choiceNode0.selectNode(0);
    platform.updateStatus();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(lineSetting1.isHide(), false);
    choiceNode0.selectNode(0);
    platform.updateStatus();
  });
}
