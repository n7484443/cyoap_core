import 'dart:convert';
import 'dart:math';

import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import '../option.dart';
import 'recursive_status.dart';

import 'choice_status.dart';
import 'generable_parser.dart';

enum ChoiceNodeMode {
  defaultMode,
  randomMode,
  multiSelect,
  unSelectableMode,
  onlyCode
}

const int defaultMaxSize = 12;

typedef VoidCallback = void Function();

class ChoiceNode extends GenerableParserAndPosition {
  //grid 단위로 설정
  bool isCard;
  bool isRound = true;
  int imagePosition = 0; //0:default, 1:left 2:right
  ChoiceNodeMode choiceNodeMode = ChoiceNodeMode.defaultMode;

  String title;
  String contentsString;
  String imageString;

  VoidCallback? listener;

  @override
  bool get isSelectableMode =>
      choiceNodeMode != ChoiceNodeMode.unSelectableMode &&
      choiceNodeMode != ChoiceNodeMode.onlyCode;
  bool isOccupySpace = true;
  bool maximizingImage = false;
  bool hideTitle = false;

  int maximumStatus = 0;
  int random = -1;
  int select = 0;

  ChoiceNode(int width, this.isCard, this.title, this.contentsString,
      this.imageString) {
    recursiveStatus = RecursiveStatus();
    this.width = width;
  }

  ChoiceNode.empty()
      : isCard = true,
        title = "선택지 ${Random().nextInt(99)}",
        imageString = '',
        contentsString = '' {
    recursiveStatus = RecursiveStatus();
  } //랜덤 문자로 제목 중복 방지

  ChoiceNode.fromJson(Map<String, dynamic> json)
      : isCard = json['isCard'] ?? true,
        isRound = json['isRound'] ?? true,
        isOccupySpace = json['isOccupySpace'] ?? true,
        maximizingImage = json['maximizingImage'] ?? false,
        maximumStatus = json['maximumStatus'] ?? 0,
        imagePosition = json['imagePosition'] ?? 0,
        title = json['title'] ?? '',
        contentsString = json['contentsString'],
        imageString = json['imageString'] ?? json['image'],
        hideTitle = json['hideTitle'] ?? false,
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
      'isCard': isCard,
      'isRound': isRound,
      'isOccupySpace': isOccupySpace,
      'imagePosition': imagePosition,
      'hideTitle': hideTitle,
      'maximumStatus': maximumStatus,
      'title': title,
      'contentsString': contentsString,
      'image': Option().convertToWebp(imageString),
      'maximizingImage': maximizingImage,
      'choiceNodeMode': choiceNodeMode.name,
    });
    return map;
  }

  void selectNode(int n) {
    if (choiceNodeMode == ChoiceNodeMode.multiSelect) {
      select += n;
    } else {
      random = -1;
      select = select == 1 ? 0 : 1;
    }
  }

  @override
  bool isExecutable() {
    return select > 0;
  }

  @override
  void initValueTypeWrapper() {
    var titleWhitespaceRemoved = title.replaceAll(" ", "");
    VariableDataBase().setValue(
        titleWhitespaceRemoved, ValueTypeWrapper(ValueType.bool(isExecutable())), isGlobal: true);
    if(choiceNodeMode == ChoiceNodeMode.randomMode){
      VariableDataBase().setValue('$titleWhitespaceRemoved:random',
          ValueTypeWrapper(ValueType.int(random)), isGlobal: true);
    }
    if (choiceNodeMode == ChoiceNodeMode.multiSelect) {
      VariableDataBase().setValue('$titleWhitespaceRemoved:multi',
          ValueTypeWrapper(ValueType.int(select)), isGlobal: true);
    }
    if (isClickable()) {
      choiceStatus = choiceStatus.copyWith(status: SelectableStatus.open);
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
  bool analyseVisibleCode() {
    if (choiceNodeMode == ChoiceNodeMode.onlyCode) {
      return false;
    }
    return super.analyseVisibleCode();
  }

  @override
  bool isClickable() {
    if (choiceNodeMode == ChoiceNodeMode.onlyCode) {
      return false;
    }
    return super.isClickable();
  }

  @override
  void execute() {
    if (isExecutable() ||
        choiceNodeMode == ChoiceNodeMode.onlyCode) {
      Analyser().run(recursiveStatus.executeCode, pos: errorName);
      for (var child in children) {
        child.execute();
      }
    }
  }

  @override
  String get errorName => "${pos.data.toString()} $title";

  @override
  bool get isHide => !isOccupySpace && choiceStatus.isHide();
}
