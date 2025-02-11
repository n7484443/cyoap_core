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
        'test', ValueTypeWrapper(valueType: getValueTypeFromDynamicInput("initial")));
    var lineSetting0 = ChoiceLine(choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    var choiceNode0 = ChoiceNode.empty()..title = "testNode0";
    choiceNode0.conditionalCodeHandler.executeCodeString = "test = 0";
    var choiceNode1 = ChoiceNode.empty()..title = "testNode1";
    choiceNode1.conditionalCodeHandler.executeCodeString = "test = 'other'";
    lineSetting0.addChild(platform, choiceNode0);
    lineSetting0.addChild(platform, choiceNode1);
    lineSetting0.generateParser();

    var lineSetting1 = ChoiceLine(choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
    var choiceNode1_0 = ChoiceNode(
        title: "testNode 1_0", contents: "a {{test}} b", imageString: '');
    choiceNode1_0.conditionalCodeHandler.executeCodeString = "test = 'self'";
    lineSetting1.addChild(platform, choiceNode1_0);
    lineSetting1.generateParser();

    platform.choicePage.addChild(platform, lineSetting0);
    platform.choicePage.addChild(platform, lineSetting1);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a initial b");

    choiceNode0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a 0 b");

    choiceNode1.selectNode(0);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a other b");

    choiceNode1_0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a self b");

    choiceNode1_0.selectNode(0);
    choiceNode0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a other b");

    choiceNode0.selectNode(0);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a 0 b");

    choiceNode0.selectNode(0);
    choiceNode1.selectNode(0);
    platform.updateStatus();
    expect(choiceNode1_0.contentsString, "a initial b");
  });

  test('main replacement test 2', () {
    var platform = PlayablePlatform();
    platform.addGlobalSetting(
        'content', ValueTypeWrapper(valueType: getValueTypeFromDynamicInput("initial")));
    platform.addGlobalSetting(
        'c', ValueTypeWrapper(valueType: getValueTypeFromDynamicInput("0")));
    var lineSetting0 = ChoiceLine(choiceLineOption: ChoiceLineOption(enableCancelFeature: true));
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
    lineSetting0.addChild(platform, choiceNode0);
    lineSetting0.generateParser();
    platform.choicePage.addChild(platform, lineSetting0);

    platform.updateStatus();
    for (int i = 0; i < 10; i++) {
      choiceNode0.selectNode(i+1);
      platform.updateStatus();
      if (i < 9) {
        expect(choiceNode0.contentsString, "a");
      } else {
        expect(choiceNode0.contentsString, "b");
      }
    }
  });
}
