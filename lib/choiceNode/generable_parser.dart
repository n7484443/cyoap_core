import 'package:cyoap_core/grammar/analyser.dart';
import 'pos.dart';
import 'recursive_status.dart';
import 'choice_status.dart';

abstract class GenerableParserAndPosition {
  SelectableStatus selectableStatus = SelectableStatus.open;

  void generateParser() {
    recursiveStatus.generateParser(errorName);
    for (var child in children) {
      child.generateParser();
    }
  }

  void initValueTypeWrapper();

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'width': width,
      'pos': currentPos,
      'children': children,
    };

    map.addAll(recursiveStatus.toJson());
    return map;
  }

  int currentPos = 0;
  int width = 12;

  List<GenerableParserAndPosition> children = List.empty(growable: true);

  GenerableParserAndPosition? parent;
  late RecursiveStatus recursiveStatus;

  bool get isSelectableMode => true;

  bool get isHide => selectableStatus.isHide();

  bool isExecutable() {
    return true;
  }

  void execute() {
    if (isExecutable()) {
      Analyser().run(recursiveStatus.executeCode, pos: errorName);
      for (var child in children) {
        child.execute();
      }
    }
  }

  bool analyseVisibleCode() {
    return Analyser()
            .run(recursiveStatus.conditionVisibleCode, pos: errorName) ??
        true;
  }

  void checkVisible() {
    for (var child in children) {
      child.checkVisible();
    }
  }

  bool analyseClickable() {
    return Analyser()
            .run(recursiveStatus.conditionClickableCode, pos: errorName) ??
        true;
  }

  void checkClickable(bool onlyWorkLine) {
    if (!onlyWorkLine) {
      selectableStatus = analyseVisibleCode() ? SelectableStatus.closed : SelectableStatus.hide;
    } else {
      var selectable = analyseClickable();
      if (isSelectableMode) {
        if (!isExecutable() && !selectableStatus.isHide()) {
          selectableStatus =
              selectable ? SelectableStatus.open : SelectableStatus.closed;
        }
      }
    }
    for (var child in children) {
      child.checkClickable(isExecutable());
    }
  }

  Pos get pos {
    var posList = parent?.pos ?? Pos();
    return posList.addLast(currentPos);
  }

  void addChildren(GenerableParserAndPosition childNode, {int? pos}) {
    pos ??= children.length;
    childNode.parent = this;
    childNode.width = childNode.width.clamp(0, width);
    children.insert(pos, childNode);
    for (int i = 0; i < children.length; i++) {
      children[i].currentPos = i;
    }
  }

  void removeChildren(GenerableParserAndPosition childNode) {
    childNode.parent = null;
    if (children.length > childNode.currentPos) {
      children.removeAt(childNode.currentPos);
    }
    childNode.currentPos = 0;
    for (int i = 0; i < children.length; i++) {
      children[i].currentPos = i;
    }
  }

  String get errorName => pos.toString();

  bool checkParentClickable(){
    if(!selectableStatus.isOpen()){
      return false;
    }
    return parent?.checkParentClickable() ?? true;
  }
}
