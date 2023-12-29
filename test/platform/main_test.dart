import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:test/test.dart';

void printStatus(List<ChoiceNode> choiceNode) {
  for (var element in choiceNode) {
    print(
        "${element.pos} ${element.select} ${element.selectableStatus} ${element.isOpen()}");
  }
}

void main() {
  test('main replacement test', () {
    var platform = PlayablePlatform();
    platform.addGlobalSetting(
        'test', ValueTypeWrapper(ValueType.string("initial")));
    var lineSetting0 = ChoiceLine(0, choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    choiceNode0.conditionalCodeHandler.executeCodeString = "test = 0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    choiceNode1.conditionalCodeHandler.executeCodeString = "test = 'other'";
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.addChildren(choiceNode1);
    lineSetting0.generateParser();

    var lineSetting1 = ChoiceLine(1, choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    var choiceNode1_0 = ChoiceNode(
        title: "testNode 1_0", contents: "a {{test}} b", imageString: '');
    choiceNode1_0.conditionalCodeHandler.executeCodeString = "test = 'self'";
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

    choiceNode1_0.selectNode(0);
    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    print(lineSetting0.selectOrder);
    expect(choiceNode1_0.contentsString, "a other b");

    choiceNode0.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a 0 b");

    choiceNode0.selectNode(0);
    choiceNode1.selectNode(0);
    platform.updateStatusAll();
    expect(choiceNode1_0.contentsString, "a initial b");
  });

  test('main replacement test 2', () {
    var platform = PlayablePlatform();
    platform.addGlobalSetting(
        'content', ValueTypeWrapper(ValueType.string("initial")));
    platform.addGlobalSetting(
        'c', ValueTypeWrapper(ValueType.string("0")));
    var lineSetting0 = ChoiceLine(0, choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    var choiceNode0 = ChoiceNode.empty()
      ..title = "테스트용"
      ..contentsString = "{{content}}"
      ..choiceNodeMode = ChoiceNodeMode.multiSelect
      ..maximumStatus = 12;
    choiceNode0.conditionalCodeHandler.executeCodeString = """
    c = 테스트용:multi
    if(테스트용:multi < 10){
      content = "a"
    }else{
      content = "b"
    }
    """;
    lineSetting0.addChildren(choiceNode0);
    lineSetting0.generateParser();
    platform.lineSettings.add(lineSetting0);

    platform.updateStatusAll();
    for (int i = 0; i < 10; i++) {
      choiceNode0.selectNode(1);
      platform.updateStatusAll();
      if (i < 9) {
        expect(choiceNode0.contentsString, "a");
      } else {
        expect(choiceNode0.contentsString, "b");
      }
    }
  });
}
