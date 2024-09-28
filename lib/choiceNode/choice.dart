import 'dart:math';

import '../preset/line_preset.dart';
import 'conditional_code_handler.dart';
import 'pos.dart';
import 'selectable_status.dart';

//실행은 ChoiceLine 단위로, 위에서 아래로 실행된다.
//부모 Choice가 숨겨져 있거나 꺼져 있는 경우, 자식도 숨겨지거나 꺼진다.
//숨겨도 실행된다. 반대로 꺼지면 실행되지 않는다.
//시작 전 ValueType 과 결과 ValueType을 저장해야 한다.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';

part 'choice.g.dart';

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

  void addChild(Choice childNode, {int? pos}) {
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

  void recursiveFunction(bool? Function(Choice) function) {
    if(function(this) ?? true){
      for (var child in children) {
        child.recursiveFunction(function);
      }
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
      choice.parent = this;
      choice.checkDataCorrect();
    }
  }

  Choice clone();

  (List<List<SizeData>>, int) getSizeDataList({
    required ChoiceLineAlignment align,
    required int maxChildrenPerRow,
    required bool showAll,
  }) {
    var sizeDataList = List<List<SizeData>>.empty(growable: true);
    var subSizeDataList = List<SizeData>.empty(growable: true);
    int stack = 0;
    for (var child in children) {
      if (!showAll && child.isHide()) {
        continue;
      }
      int size = child.width == 0
          ? maxChildrenPerRow
          : min(child.width, maxChildrenPerRow);
      var node = SizeData(width: size * 2, pos: child.pos);
      if (stack + size < maxChildrenPerRow) {
        subSizeDataList.add(node);
        stack += size;
      } else if (stack + size == maxChildrenPerRow) {
        subSizeDataList.add(node);
        sizeDataList.add(subSizeDataList);
        subSizeDataList = List<SizeData>.empty(growable: true);
        stack = 0;
      } else {
        int leftSize = maxChildrenPerRow - stack;
        if(leftSize != 0){
          switch (align) {
            case ChoiceLineAlignment.left:
              subSizeDataList.add(SizeData(width: leftSize * 2));
              break;
            case ChoiceLineAlignment.center:
              subSizeDataList.insert(0, SizeData(width: leftSize));
              subSizeDataList.add(SizeData(width: leftSize));
              break;
            case ChoiceLineAlignment.right:
              subSizeDataList.insert(0, SizeData(width: leftSize * 2));
              break;
          }
        }
        sizeDataList.add(subSizeDataList);
        subSizeDataList = List<SizeData>.empty(growable: true);
        subSizeDataList.add(node);
        stack = size;
      }
    }
    if (subSizeDataList.isNotEmpty) {
      int leftSize = maxChildrenPerRow - stack;
      switch (align) {
        case ChoiceLineAlignment.left:
          subSizeDataList.add(SizeData(width: leftSize * 2));
          break;
        case ChoiceLineAlignment.center:
          subSizeDataList.insert(0, SizeData(width: leftSize));
          subSizeDataList.add(SizeData(width: leftSize));
          break;
        case ChoiceLineAlignment.right:
          subSizeDataList.insert(0, SizeData(width: leftSize * 2));
          break;
      }
      sizeDataList.add(subSizeDataList);
    }
    return (sizeDataList, 2 * maxChildrenPerRow);
  }
}

@freezed
class SizeData with _$SizeData {
  const factory SizeData({required int width, Pos? pos}) = _SizeData;

  factory SizeData.fromJson(Map<String, dynamic> json) =>
      _$SizeDataFromJson(json);
}
