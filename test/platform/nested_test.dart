import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:test/test.dart';

void main() {
  test('nestedTest', () {
    var platform = PlayablePlatform();
    platform.lineSettings.add(ChoiceLine(0, choiceLineOption: ChoiceLineOption(enableCancelFeature: true)));
    var parent = ChoiceNode.empty()..title = "parent";
    var child = ChoiceNode.empty()..title = "child";
    parent.addChildren(child);
    platform.lineSettings[0].addChildren(parent);
    platform.updateStatusAll();
    expect(parent.select, 0);
    expect(child.select, 0);

    child.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 0);
    expect(child.select, 0);

    parent.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child.select, 0);

    child.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child.select, 1);

    parent.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 0);
    expect(child.select, 0);
  });

  test('nestedMultipleTest', () {
    var platform = PlayablePlatform();
    var line = ChoiceLine(0)
      ..choiceLineOption = ChoiceLineOption(enableCancelFeature: false);
    platform.addGlobalSetting("test", ValueTypeWrapper(ValueType.int(0)));
    var parent = ChoiceNode.empty()
      ..title = "parent"
      ..recursiveStatus.executeCodeString = "test = 0";
    var child0 = ChoiceNode.empty()
      ..title = "child0"
      ..recursiveStatus.conditionClickableString = "test < 1"
      ..recursiveStatus.executeCodeString = "test += 1";
    var child1 = ChoiceNode.empty()
      ..title = "child1"
      ..recursiveStatus.conditionClickableString = "test < 1"
      ..recursiveStatus.executeCodeString = "test += 1";
    parent.generateParser();
    child0.generateParser();
    child1.generateParser();
    parent.addChildren(child0);
    parent.addChildren(child1);
    line.addChildren(parent);
    platform.lineSettings.add(line);
    platform.updateStatusAll();

    expect(parent.select, 0);
    expect(child0.select, 0);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.closed);
    expect(child1.selectableStatus, SelectableStatus.closed);

    parent.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child0.select, 0);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.open);
    expect(child1.selectableStatus, SelectableStatus.open);

    child0.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child0.select, 1);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.open);
    expect(child1.selectableStatus, SelectableStatus.closed);

    child0.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child0.select, 0);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.open);
    expect(child1.selectableStatus, SelectableStatus.open);

    child0.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child0.select, 1);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.open);
    expect(child1.selectableStatus, SelectableStatus.closed);

    child1.selectNode(0);
    platform.updateStatusAll();
    expect(parent.select, 1);
    expect(child0.select, 1);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.open);
    expect(child1.selectableStatus, SelectableStatus.closed);
  });


  test('test State Propagation From Parent To Child', () {
    var platform = PlayablePlatform();
    var line = ChoiceLine(0)
      ..choiceLineOption = ChoiceLineOption(enableCancelFeature: false);
    var parent = ChoiceNode.empty()
      ..title = "parent"
      ..recursiveStatus.conditionVisibleString = "a"
      ..recursiveStatus.conditionClickableString = "b";
    var child0 = ChoiceNode.empty()
      ..title = "child0"
      ..recursiveStatus.conditionClickableString = "parent";
    var child1 = ChoiceNode.empty()
      ..title = "child1"
      ..recursiveStatus.conditionVisibleString = "parent";
    parent.generateParser();
    child0.generateParser();
    child1.generateParser();
    parent.addChildren(child0);
    parent.addChildren(child1);
    line.addChildren(parent);
    platform.lineSettings.add(line);

    platform.addGlobalSetting("a", ValueTypeWrapper(ValueType.bool(false)));
    platform.addGlobalSetting("b", ValueTypeWrapper(ValueType.bool(false)));
    platform.updateStatusAll();
    expect((parent.select, parent.selectableStatus), (0, SelectableStatus.hide));
    expect((child0.select, child0.selectableStatus), (0, SelectableStatus.hide));
    expect((child1.select, child1.selectableStatus), (0, SelectableStatus.hide));

    platform.addGlobalSetting("a", ValueTypeWrapper(ValueType.bool(true)));
    platform.addGlobalSetting("b", ValueTypeWrapper(ValueType.bool(false)));
    platform.updateStatusAll();
    expect((parent.select, parent.selectableStatus), (0, SelectableStatus.closed));
    expect((child0.select, child0.selectableStatus), (0, SelectableStatus.closed));
    expect((child1.select, child1.selectableStatus), (0, SelectableStatus.hide));

    platform.addGlobalSetting("a", ValueTypeWrapper(ValueType.bool(false)));
    platform.addGlobalSetting("b", ValueTypeWrapper(ValueType.bool(true)));
    platform.updateStatusAll();
    expect((parent.select, parent.selectableStatus), (0, SelectableStatus.hide));
    expect((child0.select, child0.selectableStatus), (0, SelectableStatus.hide));
    expect((child1.select, child1.selectableStatus), (0, SelectableStatus.hide));

    platform.addGlobalSetting("a", ValueTypeWrapper(ValueType.bool(true)));
    platform.addGlobalSetting("b", ValueTypeWrapper(ValueType.bool(true)));
    platform.updateStatusAll();
    expect((parent.select, parent.selectableStatus), (0, SelectableStatus.open));
    expect((child0.select, child0.selectableStatus), (0, SelectableStatus.closed));
    expect((child1.select, child1.selectableStatus), (0, SelectableStatus.hide));

    parent.selectNode(0);
    platform.updateStatusAll();
    expect((parent.select, parent.selectableStatus), (1, SelectableStatus.open));
    expect((child0.select, child0.selectableStatus), (0, SelectableStatus.open));
    expect((child1.select, child1.selectableStatus), (0, SelectableStatus.open));
  });
}
