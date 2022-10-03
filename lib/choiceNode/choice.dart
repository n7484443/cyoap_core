import 'pos.dart';
import 'recursive_status.dart';
import 'selectable_status.dart';


//실행은 ChoiceLine 단위로, 위에서 아래로 실행된다.
//부모 Choice가 숨겨져 있거나 꺼져 있는 경우, 자식도 숨겨지거나 꺼진다.
//같은 부모의 자식들은 동일 우선도로 규정하여, 앞의 Choice 가 뒤의 Choice 의 조건을 만족할 수 있고, 반대도 가능하다.
//다른 부모의 자식들은 부모의 순서에 우선한다.

abstract class Choice {
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

  List<Choice> children = List.empty(growable: true);

  Choice? parent;
  late RecursiveStatus recursiveStatus;

  bool get isSelectableMode => true;

  bool get isHide => selectableStatus.isHide();

  bool isExecutable() {
    return true;
  }

  void execute() {
    if (isExecutable()) {
      recursiveStatus.execute(errorName);
      for (var child in children) {
        child.execute();
      }
    }
  }

  Pos get pos {
    var posList = parent?.pos ?? Pos();
    return posList.addLast(currentPos);
  }

  void addChildren(Choice childNode, {int? pos}) {
    pos ??= children.length;
    childNode.parent = this;
    childNode.width = childNode.width.clamp(0, width);
    children.insert(pos, childNode);
    for (int i = 0; i < children.length; i++) {
      children[i].currentPos = i;
    }
  }

  void removeChildren(Choice childNode) {
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

  bool checkParentClickable({bool first = true}) {
    return parent?.checkParentClickable(first: false) ?? true;
  }

  void updateStatus(){
    for(var child in children){
      child.updateStatus();
    }
  }
}
