import 'dart:convert';
import 'dart:math';

import 'package:cyoap_core/choiceNode/pos.dart';
import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/i18n.dart';
import 'package:cyoap_core/option.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice.dart';
import 'choice_line.dart';
import 'recursive_status.dart';

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
    recursiveStatus = RecursiveStatus.fromJson(json);
    if (json.containsKey('children')) {
      var list = json['children'];
      for(int i = 0; i < list.length; i++) {
        var choiceNode = ChoiceNode.fromJson(list[i]);
        choiceNode.currentPos = i;
        choiceNode.parent = this;
        children.add(choiceNode);
      }
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

  void selectNode(int n) {
    if (!isOpen()) {
      return;
    }
    var oldExecute = isExecute();
    switch (choiceNodeMode) {
      case ChoiceNodeMode.multiSelect:
        select += n;
        select = select.clamp(0, maximumStatus);
        break;
      case ChoiceNodeMode.randomMode:
        if (select == 0 && maximumStatus >= 0) {
          random = Random(seed).nextInt(maximumStatus);
        } else {
          random = -1;
        }
        select = 1 - select;
        break;
      case ChoiceNodeMode.unSelectableMode:
        break;
      default:
        select = 1 - select;
        break;
    }
    seed = Random().nextInt(seedMax);
    if (Option().isDebugMode && Option().enableSelectLog) {
      print("$errorName $select $selectableStatus $choiceNodeMode ${isOpen()}");
    }

    var newExecute = isExecute();
    if(newExecute != oldExecute) {
      Choice line = this;
      while(line is! ChoiceLine){
        line = line.parent!;
      }
      if(newExecute){
        line.selectOrder.add(pos);
      }else{
        line.selectOrder.remove(pos);
      }
    }
  }

  bool _isOpen(){
    if (parent == null) return true;
    if (!parent!.isExecute()) return false;
    switch (choiceNodeMode) {
      case ChoiceNodeMode.unSelectableMode:
        return true;
      case ChoiceNodeMode.onlyCode:
        return true;
      default:
        return selectableStatus.isOpen;
    }
  }

  @override
  bool isOpen() {
    var out = _isOpen();
    if(!out){
      select = 0;
    }
    return out;
  }

  @override
  bool isExecute() {
    if (!isOpen()) return false;
    switch (choiceNodeMode) {
      case ChoiceNodeMode.unSelectableMode:
        return !isHide();
      case ChoiceNodeMode.onlyCode:
        return true;
      default:
        return select > 0;
    }
  }

  @override
  bool isHide() {
    switch (choiceNodeMode) {
      case ChoiceNodeMode.onlyCode:
        return true;
      default:
        return super.isHide();
    }
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
  void updateStatus({List<Pos>? addOrder, int order = 0, bool lineCanAcceptMore = true}) {
    var oldIsVisible = !isHide();
    var hideStatus = !recursiveStatus.analyseVisible(errorName, seedInput: seed);
    var openStatus = recursiveStatus.analyseClickable(errorName, seedInput: seed);
    openStatus = openStatus && (isExecute() || lineCanAcceptMore);
    selectableStatus = SelectableStatus(isHide: hideStatus, isOpen: openStatus);
    var newIsVisible = !isHide();
    if(choiceNodeMode == ChoiceNodeMode.unSelectableMode && oldIsVisible != newIsVisible){
      if(newIsVisible){
        addOrder!.insert(order, pos);
      }else{
        addOrder!.remove(pos);
      }
    }

    updateNodeVariable();
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

  void updateNodeVariable(){
    var titleWhitespaceRemoved = title.replaceAll(" ", "");
    VariableDataBase().setValue(
      titleWhitespaceRemoved,
      ValueTypeWrapper(
        ValueType.bool(isExecute()),
      ),
      ValueTypeLocation.global,
    );
    if (choiceNodeMode == ChoiceNodeMode.randomMode) {
      VariableDataBase().setValue('$titleWhitespaceRemoved:random',
          ValueTypeWrapper(ValueType.int(random)), ValueTypeLocation.global);
    }
    if (choiceNodeMode == ChoiceNodeMode.multiSelect) {
      VariableDataBase().setValue('$titleWhitespaceRemoved:multi',
          ValueTypeWrapper(ValueType.int(select)), ValueTypeLocation.global);
    }
  }

  @override
  void execute() {
    if (!isExecute()) {
      return;
    }
    recursiveStatus.execute(errorName, seedInput: seed);
  }
}
