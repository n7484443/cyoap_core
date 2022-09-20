import 'package:freezed_annotation/freezed_annotation.dart';

part 'design_setting.freezed.dart';
part 'design_setting.g.dart';

@freezed
class PlatformDesignSetting with _$PlatformDesignSetting {
  @JsonSerializable(explicitToJson: true)
  factory PlatformDesignSetting({
    @Default(true) bool titlePosition,
    @Default(true) bool titleOutline,
    @Default("notoSans") String titleFont,
    @Default("notoSans") String mainFont,
    @Default("notoSans") String variableFont,
    @Default(0xFFFFFFFF) int colorBackground,
    @Default(0xFFFFFFFF) int colorNode,
    @Default(0xFF40C4FF) int colorOutline,
    @Default(0xFF000000) int colorTitle,
  }) = _PlatformDesignSetting;

  factory PlatformDesignSetting.fromJson(Map<String, dynamic> json) =>
      _$PlatformDesignSettingFromJson(json);
}