import 'package:cyoap_core/choiceNode/choice_line.dart';
import 'package:cyoap_core/choiceNode/choice_node.dart';
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
}
