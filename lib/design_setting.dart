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
    @Default(true) bool titlePosition,
    @Default("notoSans") String titleFont,
    @Default("notoSans") String mainFont,
    @Default("notoSans") String variableFont,
    @Default(0xFFFFFFFF) int colorBackground,
    @Default(0xFFFFFFFF) int colorNode,
    @Default(0xFF40C4FF) int colorOutline,
    @Default(0xFF000000) int colorTitle,
    String? backgroundImage,
    @Default(ImageAttribute.fit) ImageAttribute backgroundAttribute,

    @Default(12.0) double marginVertical,
  }) = _PlatformDesignSetting;

  factory PlatformDesignSetting.fromJson(Map<String, dynamic> json) =>
      _$PlatformDesignSettingFromJson(json);
}