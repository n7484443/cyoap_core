import 'dart:convert';
import 'dart:math';

import 'package:cyoap_core/choiceNode/selectable_status.dart';
import 'package:cyoap_core/design_setting.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/i18n.dart';
import 'package:cyoap_core/option.dart';
import 'package:cyoap_core/preset/node_preset.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../playable_platform.dart';
import 'choice.dart';
import 'choice_line.dart';
import 'conditional_code_handler.dart';

part 'choice_node.freezed.dart';

part 'choice_node.g.dart';

enum ChoiceNodeMode { defaultMode, randomMode, multiSelect, unSelectableMode, onlyCode }

@freezed
abstract class ChoiceNodeOption with _$ChoiceNodeOption {
  factory ChoiceNodeOption({
    @Default(false) bool isOccupySpace,
    @Default(false) bool hideAsResult,
    @Default(false) bool showAsResult,
    @Default(false) bool showAsSlider,
    @Default(false) bool executeWhenVisible,
    @Default('default') String presetName,
    @Default(null) ChoiceNodeDesignPreset? overridePreset,
  }) = _ChoiceNodeDesign;

  factory ChoiceNodeOption.fromJson(Map<String, dynamic> json) => _$ChoiceNodeOptionFromJson(json);

  const ChoiceNodeOption._();

  ChoiceNodeDesignPreset getPreset(PlatformDesignSetting setting) {
    var motherPreset = setting.getChoiceNodePreset(presetName);
    return motherPreset.getPresetWithOverride(overridePreset);
  }
}

@freezed
abstract class ChoiceNodeState with _$ChoiceNodeState {
  factory ChoiceNodeState({
    @Default(0) int selectedValue,
    @Default(-1) int randomValue,
    @Default(0) int seed,
  }) = _ChoiceNodeState;

  ChoiceNodeState._();

  ChoiceNodeState updateState(ChoiceNodeMode choiceNodeMode, int select, int maximumStatus){
    int nextSeed = Random().nextInt(seedMax);
    switch (choiceNodeMode) {
      case ChoiceNodeMode.multiSelect:
        return copyWith(selectedValue: select.clamp(0, maximumStatus), seed: nextSeed);
      case ChoiceNodeMode.randomMode:
        if (selectedValue == 0 && maximumStatus > 0) {
          return copyWith(randomValue: Random(seed).nextInt(maximumStatus), selectedValue: 1 - selectedValue, seed: nextSeed);
        } else {
          return copyWith(randomValue: -1, selectedValue: 1 - selectedValue, seed: nextSeed);
        }
      case ChoiceNodeMode.unSelectableMode:
        return copyWith(seed: nextSeed);
      default:
        return copyWith(selectedValue: 1 - selectedValue, seed: nextSeed);
    }
  }
}

const int seedMax = 1000000000;

class ChoiceNode with Choice {
  List<ChoiceNode> get choiceNodes => children.cast<ChoiceNode>();

  ChoiceNodeOption choiceNodeOption;
  ChoiceNodeMode choiceNodeMode = ChoiceNodeMode.defaultMode;
  ChoiceNodeState choiceNodeState = ChoiceNodeState(seed: Random().nextInt(seedMax));

  String title;
  String _contentsString;
  String _currentContentsString;
  String imageString;

  int maximumStatus = 0;

  @override
  void generateParser() {
    conditionalCodeHandler.compile(errorName, text: _contentsString);
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
  bool get isSelectableMode => !(choiceNodeMode == ChoiceNodeMode.unSelectableMode || choiceNodeMode == ChoiceNodeMode.onlyCode);

  ChoiceNode({int width = 1, required this.title, String? contents, this.imageString = ""})
      : choiceNodeOption = ChoiceNodeOption(),
        _currentContentsString = contents ?? '',
        _contentsString = contents ?? '' {
    conditionalCodeHandler = ConditionalCodeHandler();
    super.width = width;
  }

  ChoiceNode.empty()
      : title = "${"choice".i18n} ${Random().nextInt(99)}",
        imageString = '',
        _contentsString = '',
        _currentContentsString = '',
        choiceNodeOption = ChoiceNodeOption() {
    conditionalCodeHandler = ConditionalCodeHandler();
  } //랜덤 문자로 제목 중복 방지

  ChoiceNode.fromJson(Map<String, dynamic> json)
      : maximumStatus = json['maximumStatus'] ?? 0,
        title = json['title'] ?? '',
        _contentsString = json['contentsString'],
        _currentContentsString = json['contentsString'],
        imageString = json['imageString'] ?? json['image'],
        choiceNodeOption = ChoiceNodeOption.fromJson(json),
        choiceNodeMode =
            json['choiceNodeMode'] == null ? ChoiceNodeMode.defaultMode : ((json['isSelectable'] ?? true) ? ChoiceNodeMode.values.byName(json['choiceNodeMode']) : ChoiceNodeMode.unSelectableMode) {
    width = json['width'] ?? 2;
    if (json.containsKey('conditionalCodeHandler')) {
      conditionalCodeHandler = ConditionalCodeHandler.fromJson(json['conditionalCodeHandler']);
    } else {
      conditionalCodeHandler = ConditionalCodeHandler.fromJson(json);
    }
    if (json.containsKey('children')) {
      var list = json['children'];
      for (int i = 0; i < list.length; i++) {
        var choiceNode = ChoiceNode.fromJson(list[i]);
        choiceNode.currentPos = i;
        choiceNode.parent = this;
        children.add(choiceNode);
      }
    }
  }

  int get selectedValue => choiceNodeState.selectedValue;
  int get randomValue => choiceNodeState.randomValue;
  int get seed => choiceNodeState.seed;

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
    choiceNodeState = choiceNodeState.updateState(choiceNodeMode, n, maximumStatus);
    if (Option().isDebugMode && Option().enableSelectLog) {
      print("$errorName $selectedValue $selectableStatus $choiceNodeMode ${isOpen()}");
    }

    var newExecute = isExecute();
    if (newExecute != oldExecute) {
      Choice line = this;
      while (line is! ChoiceLine) {
        line = line.parent!;
      }
      if (newExecute) {
        line.selectOrder.add(SelectInfo(pos: pos, select: n));
      } else {
        line.selectOrder.remove(SelectInfo(pos: pos, select: n));
      }
    }
  }

  bool _isOpen() {
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
    if (!out) {
      choiceNodeState = choiceNodeState.copyWith(selectedValue: 0);
    }
    return out;
  }

  @override
  bool isExecute({bool update = false}) {
    var func = _isOpen;
    if (update) {
      func = isOpen;
    }
    if (!func()) return false;
    switch (choiceNodeMode) {
      case ChoiceNodeMode.unSelectableMode:
        return !choiceNodeOption.executeWhenVisible || !isHide();
      case ChoiceNodeMode.onlyCode:
        return true;
      default:
        return selectedValue > 0;
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

  int getMaxSize(PlayablePlatform platform, bool containSelf) {
    var nodeParent = containSelf ? this : parent;
    var out = 0;
    while (true) {
      if (nodeParent is ChoiceNode) {
        if (nodeParent.getWidth(platform) == 0) {
          nodeParent = nodeParent.parent;
          continue;
        } else {
          out = nodeParent.getWidth(platform);
          break;
        }
      } else {
        var parent = nodeParent as ChoiceLine;
        out = parent.getWidth(platform);
        break;
      }
    }
    return out;
  }

  @override
  ChoiceNode clone() {
    var json = jsonDecode(jsonEncode(toJson()));
    return ChoiceNode.fromJson(json);
  }

  @override
  String get errorName => "${pos.data.toString()} $title";

  @override
  void updateStatus({List<SelectInfo>? addOrder, int order = 0, bool lineCanAcceptMore = true}) {
    var oldIsVisible = !isHide();
    var hideStatus = !conditionalCodeHandler.analyseVisible(errorName, seedInput: seed);
    var openStatus = conditionalCodeHandler.analyseClickable(errorName, seedInput: seed);
    openStatus = openStatus && (isExecute() || lineCanAcceptMore);
    selectableStatus = SelectableStatus(isHide: hideStatus, isOpen: openStatus);
    var newIsVisible = !isHide();
    if (choiceNodeMode == ChoiceNodeMode.unSelectableMode && oldIsVisible != newIsVisible && choiceNodeOption.executeWhenVisible) {
      if (newIsVisible) {
        addOrder!.insert(order, SelectInfo(pos: pos, select: 0));
      } else {
        addOrder!.remove(SelectInfo(pos: pos, select: 0));
      }
    }

    updateNodeVariable();
  }

  void updateCurrentContentsString() {
    _currentContentsString = _contentsString;
    for (int i = 0; i < conditionalCodeHandler.textCode.length; i++) {
      var match = textFinderAll.firstMatch(_currentContentsString);
      if (match == null) {
        break;
      }
      _currentContentsString = _currentContentsString.replaceRange(match.start, match.end, conditionalCodeHandler.executeText('error in text!', i, seedInput: seed));
    }
  }

  void updateNodeVariable() {
    var titleTrim = title.trim();
    var titleWhitespaceRemoved = titleTrim.replaceAll(" ", "");
    var titleList = [titleTrim];
    if (titleTrim != titleWhitespaceRemoved) {
      titleList.add(titleWhitespaceRemoved);
    }
    for (var t in titleList) {
      VariableDataBase().setValue(
        t,
        ValueTypeWrapper(
          valueType: getValueTypeFromDynamicInput(isExecute()),
        ),
        ValueTypeLocation.global,
      );
      if (choiceNodeMode == ChoiceNodeMode.randomMode) {
        VariableDataBase().setValue('$t:random', ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(randomValue)), ValueTypeLocation.global);
      }
      if (choiceNodeMode == ChoiceNodeMode.multiSelect) {
        VariableDataBase().setValue('$t:multi', ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(selectedValue)), ValueTypeLocation.global);
      }
    }
  }

  @override
  void execute() {
    if (!isExecute()) {
      return;
    }
    conditionalCodeHandler.execute(errorName, seedInput: seed);
  }

  @override
  String toString() {
    return "$title $selectedValue $selectableStatus";
  }
}
