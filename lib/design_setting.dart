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
    // @Default(EDEEFFFF) backgroundColor,
    @Default(ColorOption(color: 3991863295)) ColorOption backgroundColorOption,
    @Default(ImageAttribute.fit) ImageAttribute backgroundAttribute,
    @Default([
      ChoiceLineDesignPreset(name: 'default'),
    ])
    List<ChoiceLineDesignPreset> choiceLinePresetList,
    @Default([
      ChoiceNodeDesignPreset(name: 'default'),
    ])
    List<ChoiceNodeDesignPreset> choiceNodePresetList,
    @Default(12.0) double marginVertical,
  }) = _PlatformDesignSetting;

  factory PlatformDesignSetting.fromJson(Map<String, dynamic> json) =>
      _$PlatformDesignSettingFromJson(json);
}
