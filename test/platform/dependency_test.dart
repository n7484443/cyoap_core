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
  test('dependency_test_0', () {
    var platform = PlayablePlatform();
    var lineSetting0 = ChoiceLine(0);
    var lineSetting1 = ChoiceLine(0, choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    lineSetting0.generateParser();
    platform.lineSettings.add(lineSetting0);
    lineSetting1.generateParser();
    platform.lineSettings.add(lineSetting1);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1"..conditionalCodeHandler.conditionVisibleString = "testNode0";
    var choiceNode2 = ChoiceNode.empty()..title = "testNode2"..conditionalCodeHandler.conditionClickableString = "testNode0";
    choiceNode1.generateParser();
    choiceNode2.generateParser();
    platform.lineSettings[0].addChildren(choiceNode0);
    platform.lineSettings[1].addChildren(choiceNode1);
    platform.lineSettings[1].addChildren(choiceNode2);
    platform.updateStatusAll();
    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    choiceNode1.selectNode(0);
    platform.updateStatusAll();
    choiceNode2.selectNode(0);

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 1);
    expect(choiceNode2.select, 1);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);
    expect(choiceNode2.selectableStatus, SelectableStatus.open);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode2.select, 0);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.selectableStatus, SelectableStatus.hide);
    expect(choiceNode2.selectableStatus, SelectableStatus.closed);
  });

  test('forced_uncheck0', () {
    var platform = PlayablePlatform();
    var lineSetting0 = ChoiceLine(0, choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    lineSetting0.generateParser();
    platform.lineSettings.add(lineSetting0);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1"..conditionalCodeHandler.conditionClickableString = "testNode0";
    choiceNode0.generateParser();
    choiceNode1.generateParser();
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    expect(choiceNode0.select, 0);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.select, 0);
    expect(choiceNode1.selectableStatus, SelectableStatus.closed);

    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode0.select, 1);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.select, 0);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);

    choiceNode1.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode0.select, 1);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.select, 1);
    expect(choiceNode1.selectableStatus, SelectableStatus.open);

    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode0.select, 0);
    expect(choiceNode0.selectableStatus, SelectableStatus.open);
    expect(choiceNode1.select, 0);
    expect(choiceNode1.selectableStatus, SelectableStatus.closed);
  });
}
