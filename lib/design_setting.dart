import 'package:cyoap_core/i18n.dart';
import 'package:cyoap_core/preset/line_preset.dart';
import 'package:cyoap_core/preset/node_preset.dart';
import 'package:cyoap_core/preset/preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'design_setting.freezed.dart';

part 'design_setting.g.dart';

enum ImageAttribute {
  fit,
  fill,
  pattern,
  stretch;

  @override
  String toString() => name.i18n;

  const ImageAttribute();
}

@freezed
class PlatformDesignSetting with _$PlatformDesignSetting {
  factory PlatformDesignSetting({
    @Default("notoSans") String variableFont,
    String? backgroundImage,
    @Default(ColorOption(color: 0xFFEEEEFF)) ColorOption backgroundColorOption,
    @Default(ImageAttribute.fit) ImageAttribute backgroundAttribute,
    @Default({'default': ChoiceLineDesignPreset()}) Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
    @Default({'default': ChoiceNodeDesignPreset()}) Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
    @Default(12.0) double marginVertical,
  }) = _PlatformDesignSetting;

  factory PlatformDesignSetting.fromJson(Map<String, dynamic> json) => _$PlatformDesignSettingFromJson((jsonConvert(json)));

  const PlatformDesignSetting._();

  ChoiceLineDesignPreset getChoiceLinePreset(String name) {
    return choiceLinePresetMap[name] ?? choiceLinePresetMap['default'] ?? ChoiceLineDesignPreset();
  }

  ChoiceNodeDesignPreset getChoiceNodePreset(String name) {
    return choiceNodePresetMap[name] ?? choiceNodePresetMap['default'] ?? ChoiceNodeDesignPreset();
  }
}

Map<String, dynamic> jsonConvert(Map<String, dynamic> json) {
  if (json["choiceLinePresetList"] != null) {
    var map = {};
    for (var jsonItem in json["choiceLinePresetList"]) {
      var name = jsonItem["name"];
      map[name] = jsonItem;
    }
    json["choiceLinePresetMap"] = map;
  }
  if (json["choiceNodePresetList"] != null) {
    var map = {};
    for (var jsonItem in json["choiceNodePresetList"]) {
      var name = jsonItem["name"];
      map[name] = jsonItem;
    }
    json["choiceNodePresetList"] = map;
  }
  return json;
}
