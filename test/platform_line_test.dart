import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
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
    var lineSetting = LineSetting(0)..maxSelect = 1;
    lineSetting.generateParser();
    platform.lineSettings.add(lineSetting);
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    platform.lineSettings[0].addChildren(choiceNode0);
    platform.lineSettings[0].addChildren(choiceNode1);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 1);
    expect(choiceNode1.select, 0);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 1);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();

    expect(choiceNode0.select, 0);
    expect(choiceNode1.select, 0);
  });
}
