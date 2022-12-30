import 'package:cyoap_core/preset/line_preset.dart';
import 'package:cyoap_core/preset/node_preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'design_setting.freezed.dart';
part 'design_setting.g.dart';

enum ImageAttribute {
  fit("맞춤"),
  fill("채움"),
  pattern("패턴"),
  stretch("늘리기");

  final String name;

  const ImageAttribute(this.name);
}

@freezed
class PlatformDesignSetting with _$PlatformDesignSetting {
  @JsonSerializable(explicitToJson: true)
  factory PlatformDesignSetting({
    @Default("notoSans")
        String variableFont,
    String? backgroundImage,
    @Default(ImageAttribute.fit)
        ImageAttribute backgroundAttribute,
    @Default([
      ChoiceLineDesignPreset(name: 'default'),
    ])
        List<ChoiceLineDesignPreset> choiceLinePresetList,
    @Default([
      ChoiceNodeDesignPreset(name: 'default'),
    ])
        List<ChoiceNodeDesignPreset> choiceNodePresetList,
    @Default(12.0)
        double marginVertical,
  }) = _PlatformDesignSetting;

  factory PlatformDesignSetting.fromJson(Map<String, dynamic> json) =>
      _$PlatformDesignSettingFromJson(json);
}
