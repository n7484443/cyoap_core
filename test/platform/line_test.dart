import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:test/test.dart';

void printStatus(List<ChoiceNode> choiceNode){
  for (var element in choiceNode) {
    print("${element.pos} ${element.select} ${element.selectableStatus} ${element.checkParentClickable()}");
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
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.selectableStatus, SelectableStatus.closed);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.selectableStatus, SelectableStatus.closed);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode0.selectableStatus, SelectableStatus.closed);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    expect(choiceNode0.selectableStatus, SelectableStatus.closed);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
  });

  test('lineHideTest', () {
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0));
    var lineSetting = ChoiceLine(0)..recursiveStatus.conditionVisibleString = "testNode0";
    lineSetting.generateParser();
    platform.lineSettings.add(lineSetting);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    platform.lineSettings[0].addChildren(choiceNode0);
    platform.lineSettings[1].addChildren(choiceNode1);
    platform.updateStatusAll();

    expect(choiceNode1.select, 0);
    expect(lineSetting.selectableStatus, SelectableStatus.hide);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode1.select, 0);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode1.select, 1);
    expect(lineSetting.selectableStatus, SelectableStatus.open);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode1.select, 1);
    expect(lineSetting.selectableStatus, SelectableStatus.hide);
  });
}
