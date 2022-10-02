import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/playable_platform.dart';
import 'package:test/test.dart';

void main() {
  test('nestedTest', () {
    var platform = PlayablePlatform();
    platform.lineSettings.add(LineSetting(0));
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
    platform.lineSettings.add(LineSetting(0));
    var parent = ChoiceNode.empty()
      ..title = "parent"
      ..recursiveStatus.executeCodeString = "let test = true";
    var child0 = ChoiceNode.empty()
      ..title = "child0"
      ..recursiveStatus.conditionClickableString = "test"
      ..recursiveStatus.executeCodeString = "test = false";
    var child1 = ChoiceNode.empty()
      ..title = "child1"
      ..recursiveStatus.conditionClickableString = "test"
      ..recursiveStatus.executeCodeString = "test = false";
    parent.generateParser();
    child0.generateParser();
    child1.generateParser();
    parent.addChildren(child0);
    parent.addChildren(child1);
    platform.lineSettings[0].addChildren(parent);
    platform.updateStatusAll();
    expect(parent.select, 0);
    expect(child0.select, 0);
    expect(child1.select, 0);
    expect(parent.selectableStatus, SelectableStatus.open);
    expect(child0.selectableStatus, SelectableStatus.open);
    expect(child1.selectableStatus, SelectableStatus.open);

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
}
