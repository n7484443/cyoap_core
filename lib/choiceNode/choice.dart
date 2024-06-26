import 'conditional_code_handler.dart';
import 'pos.dart';
import 'selectable_status.dart';

//실행은 ChoiceLine 단위로, 위에서 아래로 실행된다.
//부모 Choice가 숨겨져 있거나 꺼져 있는 경우, 자식도 숨겨지거나 꺼진다.
//숨겨도 실행된다. 반대로 꺼지면 실행되지 않는다.
//시작 전 ValueType 과 결과 ValueType을 저장해야 한다.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';
@freezed
class SelectInfo with _$SelectInfo {
  const factory SelectInfo({
    required Pos pos,
    required int select,
  }) = _SelectInfo;
}

const int defaultMaxSize = 12;

mixin Choice {
  SelectableStatus selectableStatus =
      SelectableStatus(isHide: false, isOpen: true);

  void generateParser() {
    conditionalCodeHandler.compile(errorName);
    for (var child in children) {
      child.generateParser();
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'width': width,
      'children': children,
      'conditionalCodeHandler': conditionalCodeHandler,
    };
    return map;
  }

  int currentPos = 0;
  int width = defaultMaxSize;

  List<Choice> children = List.empty(growable: true);

  Choice? parent;
  late ConditionalCodeHandler conditionalCodeHandler;

  bool get isSelectableMode => true;

  bool isOpen() {
    if (parent != null && !parent!.isOpen()) return false;
    return selectableStatus.isOpen;
  }

  bool isHide() {
    if (parent != null && parent!.isHide()) return true;
    return selectableStatus.isHide;
  }

  bool isExecute() {
    return isOpen();
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

  void updateStatus();

  void recursiveFunction(Function(Choice) function) {
    function(this);
    for (var child in children) {
      child.recursiveFunction(function);
    }
  }

  Choice? findChoice(Pos pos) {
    if (pos.length == 0) return null;
    if (pos.length == 1) return this;
    if (children.length <= pos.data[1]) return null;
    var child = children[pos.data[1]];
    return child.findChoice(pos.removeFirst());
  }

  Choice findRootParent() {
    if (parent == null) return this;
    var root = parent!;
    while (root.parent != null) {
      root = root.parent!;
    }
    return root;
  }

  void execute() {}

  void checkDataCorrect() {
    for (int i = 0; i < children.length; i++) {
      var choice = children[i];
      choice.currentPos = i;
      for (int x = 0; x < choice.children.length; x++) {
        choice.children[x].currentPos = x;
        choice.children[x].parent = choice;
      }
    }
  }

  Choice clone();
}
