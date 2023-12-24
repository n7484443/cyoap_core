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
    var lineSetting = ChoiceLine(0, choiceLineOption: ChoiceLineOption(maxSelect: 1));
    lineSetting.generateParser();
    platform.lineSettings.add(lineSetting);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    var choiceNode2 = ChoiceNode.empty()..title = "testNode2"..choiceNodeMode=ChoiceNodeMode.unSelectableMode;
    platform.lineSettings[0].addChildren(choiceNode0);
    platform.lineSettings[0].addChildren(choiceNode1);
    platform.lineSettings[0].addChildren(choiceNode2);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(lineSetting.selectableStatus.isOpen, true);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, false);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(lineSetting.selectableStatus.isOpen, true);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, false);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(lineSetting.selectableStatus.isOpen, true);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode0.selectableStatus.isOpen, false);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(lineSetting.selectableStatus.isOpen, true);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode0.selectableStatus.isOpen, false);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(lineSetting.selectableStatus.isOpen, true);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus.isOpen, true);
    expect(choiceNode1.selectableStatus.isOpen, true);
    expect(choiceNode2.selectableStatus.isOpen, true);
    expect(lineSetting.selectableStatus.isOpen, true);
  });

  test('lineHideTest', () {
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var lineSetting0 = ChoiceLine(0);
    var lineSetting1 = ChoiceLine(1)..recursiveStatus.conditionVisibleString = "testNode0";
    lineSetting1.generateParser();
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    platform.lineSettings.add(lineSetting0);
    platform.lineSettings.add(lineSetting1);
    lineSetting0.addChildren(choiceNode0);
    lineSetting1.addChildren(choiceNode1);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(lineSetting1.selectableStatus.isHide, true);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(lineSetting1.selectableStatus.isOpen, true);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(lineSetting1.selectableStatus.isOpen, true);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(lineSetting1.selectableStatus.isHide, true);
  });
}
