import 'dart:convert';
import 'dart:math';

import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/i18n.dart';
import 'package:cyoap_core/option.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';
import 'choice_line.dart';
import 'recursive_status.dart';
import 'selectable_status.dart';

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
class ChoiceNodeOption with _$ChoiceNodeOption {
  @JsonSerializable(explicitToJson: true)
  factory ChoiceNodeOption({
    @Default(false) bool isOccupySpace,
    @Default(false) bool hideAsResult,
    @Default(false) bool showAsResult,
    @Default(false) bool showAsSlider,
    @Default('default') String presetName,
  }) = _ChoiceNodeDesign;

  factory ChoiceNodeOption.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeOptionFromJson(json);
}

const int defaultMaxSize = 12;

const int seedMax = 1000000000;

class ChoiceNode extends Choice {
  ChoiceNodeOption choiceNodeOption;
  ChoiceNodeMode choiceNodeMode = ChoiceNodeMode.defaultMode;

  String title;
  String _contentsString;
  String _currentContentsString;
  String imageString;

  int maximumStatus = 0;
  int random = -1;
  int select = 0;

  int seed = Random().nextInt(seedMax);

  @override
  void generateParser() {
    recursiveStatus.compile(errorName, text: _contentsString);
    for (var child in children) {
      child.generateParser();
    }
  }

  void updateCurrentContentsString() {
    _currentContentsString = _contentsString;
    for (int i = 0; i < recursiveStatus.textCode.length; i++) {
      var match = textFinderAll.firstMatch(_currentContentsString);
      if (match == null) {
        break;
      }
      _currentContentsString = _currentContentsString.replaceRange(
          match.start,
          match.end,
          recursiveStatus.executeText('error in text!', i, seedInput: seed));
    }
  }

  String get contentsString => _currentContentsString;

  String get contentsOriginalString => _contentsString;

  set contentsString(String str) {
    _contentsString = str;
    updateCurrentContentsString();
  }

  @override
  bool get isSelectableMode =>
      choiceNodeMode != ChoiceNodeMode.unSelectableMode &&
      choiceNodeMode != ChoiceNodeMode.onlyCode;

  ChoiceNode(
      {int width = 1,
      required this.title,
      required contents,
      this.imageString = ""})
      : choiceNodeOption = ChoiceNodeOption(),
        _currentContentsString = contents,
        _contentsString = contents {
    recursiveStatus = RecursiveStatus();
    super.width = width;
  }

  ChoiceNode.empty()
      : title = "${"choice".i18n} ${Random().nextInt(99)}",
        imageString = '',
        _contentsString = '',
        _currentContentsString = '',
        choiceNodeOption = ChoiceNodeOption() {
    recursiveStatus = RecursiveStatus();
  } //랜덤 문자로 제목 중복 방지

  ChoiceNode.fromJson(Map<String, dynamic> json)
      : maximumStatus = json['maximumStatus'] ?? 0,
        title = json['title'] ?? '',
        _contentsString = json['contentsString'],
        _currentContentsString = json['contentsString'],
        imageString = json['imageString'] ?? json['image'],
        choiceNodeOption = ChoiceNodeOption.fromJson(json),
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
      'contentsString': _contentsString,
      'image': imageString,
      'choiceNodeMode': choiceNodeMode.name,
    });
    map.addAll(choiceNodeOption.toJson());
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

  void selectNode(int n, {bool disableCheck = false}) {
    if (disableCheck || (canDisableSelect(n) || checkParentClickable())) {
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
        case ChoiceNodeMode.unSelectableMode:
          break;
        default:
          select = 1 - select;
          break;
      }
      seed = Random().nextInt(seedMax);
    }
    if (Option().isDebugMode && Option().enableSelectLog) {
      print(
          "$errorName $select $selectableStatus $choiceNodeMode ${canDisableSelect(n)} ${checkParentClickable()}");
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
  String get errorName => "${pos.data.toString()} $title";

  @override
  bool checkParentClickable({bool first = true}) {
    if (!selectableStatus.isOpen()) {
      return false;
    }
    if (!first && !isExecutable()) {
      return false;
    }
    return super.checkParentClickable();
  }

  @override
  void updateStatus() {}

  void updateSelectionStatus() {
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
  }

  void execute() {
    if(!isExecutable()){
      return;
    }
    recursiveStatus.execute(errorName, seedInput: seed);
  }

  bool checkCondition() {
    var beforeStatus = selectableStatus;
    var beforeSelect = select;
    updateCurrentContentsString();
    if (parent is ChoiceLine) {
      if (select == 0 &&
          isSelectableMode &&
          !parent!.recursiveStatus.analyseClickable(errorName)) {
        selectableStatus = SelectableStatus.closed;
        return !(beforeStatus == selectableStatus && beforeSelect == select);
      }
    }
    var click = recursiveStatus.analyseClickable(errorName, seedInput: seed);
    var visible = recursiveStatus.analyseVisible(errorName, seedInput: seed);
    if (click && visible) {
      selectableStatus = SelectableStatus.open;
    } else if (!visible) {
      selectableStatus = SelectableStatus.hide;
      select = 0;
    } else if (!click) {
      selectableStatus = SelectableStatus.closed;
      select = 0;
    }

    if (parent is ChoiceNode) {
      ChoiceNode parent = this.parent as ChoiceNode;
      if (parent.selectableStatus == SelectableStatus.hide) {
        selectableStatus = SelectableStatus.hide;
        select = 0;
      }else if (parent.selectableStatus == SelectableStatus.closed) {
        if(selectableStatus != SelectableStatus.hide){
          selectableStatus = parent.selectableStatus;
        }
        select = 0;
      }else if (parent.select == 0 && parent.isSelectableMode && selectableStatus == SelectableStatus.open){
        selectableStatus = SelectableStatus.closed;
        select = 0;
      }

      if (select > 0 && parent.select == 0) {
        selectableStatus = SelectableStatus.closed;
        select = 0;
      }
    }
    return !(beforeStatus == selectableStatus && beforeSelect == select);
  }
}
