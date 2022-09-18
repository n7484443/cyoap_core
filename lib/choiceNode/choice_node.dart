import 'dart:convert';
import 'dart:math';

import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import '../option.dart';
import 'choice_line.dart';
import 'recursive_status.dart';

import 'selectable_status.dart';
import 'generable_parser.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_node.freezed.dart';

part 'choice_node.g.dart';

enum ChoiceNodeMode {
  defaultMode,
  randomMode,
  multiSelect,
  unSelectableMode,
  onlyCode
}

@freezed
class ChoiceNodeDesign with _$ChoiceNodeDesign {
  @JsonSerializable(explicitToJson: true)
  factory ChoiceNodeDesign({
    @Default(true) bool isCard,
    @Default(true) bool isRound,
    @Default(true) bool isOccupySpace,
    @Default(false) bool maximizingImage, //true: 80%, false: 50%
    @Default(false) bool hideTitle,
    @Default(0) int imagePosition, //0:default, 1:left 2:right
  }) = _ChoiceNodeDesign;

  factory ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignFromJson(json);
}

const int defaultMaxSize = 12;

class ChoiceNode extends GenerableParserAndPosition {
  ChoiceNodeDesign choiceNodeDesign;
  ChoiceNodeMode choiceNodeMode = ChoiceNodeMode.defaultMode;

  String title;
  String contentsString;
  String imageString;

  @override
  bool get isSelectableMode =>
      choiceNodeMode != ChoiceNodeMode.unSelectableMode &&
      choiceNodeMode != ChoiceNodeMode.onlyCode;

  int maximumStatus = 0;
  int random = -1;
  int select = 0;

  ChoiceNode(width, this.title, this.contentsString, this.imageString)
      : choiceNodeDesign = ChoiceNodeDesign() {
    recursiveStatus = RecursiveStatus();
    super.width = width;
  }

  ChoiceNode.empty()
      : title = "선택지 ${Random().nextInt(99)}",
        imageString = '',
        contentsString = '',
        choiceNodeDesign = ChoiceNodeDesign() {
    recursiveStatus = RecursiveStatus();
  } //랜덤 문자로 제목 중복 방지

  ChoiceNode.fromJson(Map<String, dynamic> json)
      : maximumStatus = json['maximumStatus'] ?? 0,
        title = json['title'] ?? '',
        contentsString = json['contentsString'],
        imageString = json['imageString'] ?? json['image'],
        choiceNodeDesign = ChoiceNodeDesign.fromJson(json),
        choiceNodeMode = json['choiceNodeMode'] == null
            ? ChoiceNodeMode.defaultMode
            : ((json['isSelectable'] ?? true)
                ? ChoiceNodeMode.values.byName(json['choiceNodeMode'])
                : ChoiceNodeMode.unSelectableMode) {
    width = json['width'] ?? 2;
    currentPos = json['x'] ?? json['pos'];
    recursiveStatus = RecursiveStatus.fromJson(json);
    if (json.containsKey('children')) {
      children = (json['children'] as List)
          .map((e) => ChoiceNode.fromJson(e)..parent = this)
          .toList();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = super.toJson();
    map.addAll({
      'maximumStatus': maximumStatus,
      'title': title,
      'contentsString': contentsString,
      'image': Option().convertToWebp(imageString),
      'choiceNodeMode': choiceNodeMode.name,
    });
    map.addAll(choiceNodeDesign.toJson());
    return map;
  }

  bool canDisableSelect(int n) {
    switch (choiceNodeMode) {
      case ChoiceNodeMode.multiSelect:
        return n < 0;
      case ChoiceNodeMode.defaultMode:
      case ChoiceNodeMode.randomMode:
        return select == 1;
      default:
        return false;
    }
  }

  void selectNode(int n, {int? seed}) {
    if (canDisableSelect(n) || checkParentClickable(first: true)) {
      switch (choiceNodeMode) {
        case ChoiceNodeMode.multiSelect:
          select += n;
          select = select.clamp(0, maximumStatus);
          break;
        case ChoiceNodeMode.randomMode:
          if (select == 0) {
            select = 1;
            if (maximumStatus >= 0) {
              random = Random(seed).nextInt(maximumStatus);
            }
          } else {
            select = 0;
            random = -1;
          }
          break;
        default:
          select = select == 1 ? 0 : 1;
          break;
      }
    }
  }

  @override
  bool isExecutable() {
    switch (choiceNodeMode) {
      case ChoiceNodeMode.unSelectableMode:
        return selectableStatus.isOpen();
      case ChoiceNodeMode.onlyCode:
        return true;
      default:
        return selectableStatus.isOpen() && select > 0;
    }
  }

  @override
  void initValueTypeWrapper() {
    var titleWhitespaceRemoved = title.replaceAll(" ", "");
    VariableDataBase().setValue(titleWhitespaceRemoved,
        ValueTypeWrapper(ValueType.bool(isExecutable())),
        isGlobal: true);
    if (choiceNodeMode == ChoiceNodeMode.randomMode) {
      VariableDataBase().setValue('$titleWhitespaceRemoved:random',
          ValueTypeWrapper(ValueType.int(random)),
          isGlobal: true);
    }
    if (choiceNodeMode == ChoiceNodeMode.multiSelect) {
      VariableDataBase().setValue('$titleWhitespaceRemoved:multi',
          ValueTypeWrapper(ValueType.int(select)),
          isGlobal: true);
    }
    for (var child in children) {
      child.initValueTypeWrapper();
    }
  }

  void doAllChild(void Function(ChoiceNode) choiceNodeFunc) {
    choiceNodeFunc(this);
    for (var child in children) {
      (child as ChoiceNode).doAllChild(choiceNodeFunc);
    }
  }

  ChoiceNode? getParentLast() {
    ChoiceNode parent = this;
    while (true) {
      if (parent.parent == null) break;
      if (parent.parent is! ChoiceNode) break;
      parent = parent.parent as ChoiceNode;
    }
    return parent;
  }

  int getMaxSize(bool containSelf) {
    var nodeParent = containSelf ? this : parent;
    var out = 0;
    while (true) {
      if (nodeParent is ChoiceNode) {
        if (nodeParent.width == 0) {
          nodeParent = nodeParent.parent;
          continue;
        } else {
          out = nodeParent.width;
          break;
        }
      } else {
        out = defaultMaxSize;
        break;
      }
    }
    return out;
  }

  ChoiceNode clone() {
    var json = jsonDecode(jsonEncode(toJson()));
    return ChoiceNode.fromJson(json);
  }

  @override
  void execute() {
    if (isExecutable()) {
      Analyser().run(recursiveStatus.executeCode, pos: errorName);
      for (var child in children) {
        child.execute();
      }
    }
  }

  @override
  String get errorName => "${pos.data.toString()} $title";

  @override
  bool get isHide =>
      !choiceNodeDesign.isOccupySpace && selectableStatus.isHide();

  @override
  bool checkParentClickable({bool first = false}) {
    if(!selectableStatus.isOpen()){
      return false;
    }
    if (!first && !isExecutable()) {
      return false;
    }
    return super.checkParentClickable();
  }

  @override
  void updateStatus() {
    if (!recursiveStatus.analyseVisibleCode(errorName)) {
      selectableStatus = SelectableStatus.hide;
      super.updateStatus();
      return;
    }
    selectableStatus = SelectableStatus.open;
    if (parent == null) {
      super.updateStatus();
      return;
    }
    if (parent is LineSetting) {
      if(select != 0){
        super.updateStatus();
        return;
      }
      if (!parent!.recursiveStatus.analyseClickable(parent!.errorName)) {
        selectableStatus = SelectableStatus.closed;
      }else if (!recursiveStatus.analyseClickable(errorName)) {
        selectableStatus = SelectableStatus.closed;
      }
    } else {
      if(!parent!.isExecutable()){
        select = 0;
      } else if (!recursiveStatus.analyseClickable(errorName)) {
        selectableStatus = SelectableStatus.closed;
      }
    }
    super.updateStatus();
  }
}
