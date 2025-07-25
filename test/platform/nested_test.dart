import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:test/test.dart';

void main() {
  test('nestedTest', () {
    var platform = PlayablePlatform();
    platform.choicePage.addChild(platform, ChoiceLine(choiceLineOption: ChoiceLineOption(enableCancelFeature: true)));
    var parent = ChoiceNode.empty()..title = "parent";
    var child = ChoiceNode.empty()..title = "child";
    parent.addChild(platform, child);
    platform.choicePage.choiceLines[0].addChild(platform, parent);
    platform.updateStatus();
    expect(parent.selectedValue, 0);
    expect(child.selectedValue, 0);

    child.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 0);
    expect(child.selectedValue, 0);

    parent.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child.selectedValue, 0);

    child.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child.selectedValue, 1);

    parent.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 0);
    expect(parent.isExecute(), false);

    parent.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child.selectedValue, 0);
  });

  test('nestedMultipleTest', () {
    var platform = PlayablePlatform();
    var line = ChoiceLine()
      ..choiceLineOption = ChoiceLineOption(enableCancelFeature: false);
    platform.addGlobalSetting("test", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(0)));
    var parent = ChoiceNode.empty()
      ..title = "parent"
      ..conditionalCodeHandler.executeCodeString = "test = 0";
    var child0 = ChoiceNode.empty()
      ..title = "child0"
      ..conditionalCodeHandler.conditionClickableString = "or(child0, test < 1)"
      ..conditionalCodeHandler.executeCodeString = "test += 1";
    var child1 = ChoiceNode.empty()
      ..title = "child1"
      ..conditionalCodeHandler.conditionClickableString = "or(child1, test < 1)"
      ..conditionalCodeHandler.executeCodeString = "test += 1";
    parent.generateParser();
    child0.generateParser();
    child1.generateParser();
    parent.addChild(platform, child0);
    parent.addChild(platform, child1);
    line.addChild(platform, parent);
    platform.choicePage.addChild(platform, line);
    platform.updateStatus();

    expect(parent.selectedValue, 0);
    expect(child0.selectedValue, 0);
    expect(child1.selectedValue, 0);
    expect(parent.isOpen(), true);
    expect(child0.isOpen(), false);
    expect(child1.isOpen(), false);

    parent.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child0.selectedValue, 0);
    expect(child1.selectedValue, 0);
    expect(parent.isOpen(), true);
    expect(child0.isOpen(), true);
    expect(child1.isOpen(), true);

    child0.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child0.selectedValue, 1);
    expect(child1.selectedValue, 0);
    expect(parent.isOpen(), true);
    expect(child0.isOpen(), true);
    expect(child1.isOpen(), false);

    child0.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child0.selectedValue, 0);
    expect(child1.selectedValue, 0);
    expect(parent.isOpen(), true);
    expect(child0.isOpen(), true);
    expect(child1.isOpen(), true);

    child0.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child0.selectedValue, 1);
    expect(child1.selectedValue, 0);
    expect(parent.isOpen(), true);
    expect(child0.isOpen(), true);
    expect(child1.isOpen(), false);

    child1.selectNode(0);
    platform.updateStatus();
    expect(parent.selectedValue, 1);
    expect(child0.selectedValue, 1);
    expect(child1.selectedValue, 0);
    expect(parent.isOpen(), true);
    expect(child0.isOpen(), true);
    expect(child1.isOpen(), false);
  });


  test('test State Propagation From Parent To Child', () {
    var platform = PlayablePlatform();
    var line = ChoiceLine()
      ..choiceLineOption = ChoiceLineOption(enableCancelFeature: false);
    var parent = ChoiceNode.empty()
      ..title = "parent"
      ..conditionalCodeHandler.conditionVisibleString = "a"
      ..conditionalCodeHandler.conditionClickableString = "b";
    var child0 = ChoiceNode.empty()
      ..title = "child0"
      ..conditionalCodeHandler.conditionClickableString = "parent";
    var child1 = ChoiceNode.empty()
      ..title = "child1"
      ..conditionalCodeHandler.conditionVisibleString = "parent";
    parent.generateParser();
    child0.generateParser();
    child1.generateParser();
    parent.addChild(platform, child0);
    parent.addChild(platform, child1);
    line.addChild(platform, parent);
    platform.choicePage.addChild(platform, line);

    platform.addGlobalSetting("a", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(false)));
    platform.addGlobalSetting("b", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(false)));
    platform.updateStatus();
    expect((parent.selectedValue, parent.isHide()), (0, true));
    expect((child0.selectedValue, child0.isHide()), (0, true));
    expect((child1.selectedValue, child1.isHide()), (0, true));

    platform.addGlobalSetting("a", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(true)));
    platform.addGlobalSetting("b", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(false)));
    platform.updateStatus();
    expect((parent.selectedValue, parent.isOpen()), (0, false));
    expect((child0.selectedValue, child0.isOpen()), (0, false));
    expect((child1.selectedValue, child1.isHide()), (0, true));

    platform.addGlobalSetting("a", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(false)));
    platform.addGlobalSetting("b", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(true)));
    platform.updateStatus();
    expect((parent.selectedValue, parent.isHide()), (0, true));
    expect((child0.selectedValue, child0.isHide()), (0, true));
    expect((child1.selectedValue, child1.isHide()), (0, true));

    platform.addGlobalSetting("a", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(true)));
    platform.addGlobalSetting("b", ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(true)));
    platform.updateStatus();
    expect((parent.selectedValue, parent.isOpen()), (0, true));
    expect((child0.selectedValue, child0.isOpen()), (0, false));
    expect((child1.selectedValue, child1.isHide()), (0, true));

    parent.selectNode(0);
    platform.updateStatus();
    expect((parent.selectedValue, parent.isOpen()), (1, true));
    expect((child0.selectedValue, child0.isOpen()), (0, true));
    expect((child1.selectedValue, child1.isOpen()), (0, true));
  });
}
