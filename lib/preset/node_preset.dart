import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'node_preset.freezed.dart';
part 'node_preset.g.dart';

enum OutlineType {
  none,
  solid,
  dotted,
  dashed;

  @override
  String toString() => name.i18n;

  const OutlineType();
}

@freezed
class OutlineOption with _$OutlineOption {
  @JsonSerializable(explicitToJson: true)
  const factory OutlineOption({
    @Default(OutlineType.solid) OutlineType outlineType,
    @Default(ColorOption()) ColorOption outlineColor,
    @Default(4.0) double outlinePadding,
    @Default(2.0) double outlineWidth,
  }) = _OutlineOption;

  factory OutlineOption.fromJson(Map<String, dynamic> json) =>
      _$OutlineOptionFromJson(json);
}

enum ColorType {
  solid,
  gradient;

  @override
  String toString() => name.i18n;

  const ColorType();
}

enum GradientType {
  linear,
  radial,
  sweep,
}

@freezed
class GradientData with _$GradientData {
  @JsonSerializable(explicitToJson: true)
  const factory GradientData({
    @Default((0.5, 0.5)) (double, double) gradientPos,
    @Default(0xFFFFFFFF) int color,
  }) = _GradientData;

  factory GradientData.fromJson(Map<String, dynamic> json) =>
      _$GradientDataFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class ColorOption with _$ColorOption {
  @JsonSerializable(explicitToJson: true)
  const factory ColorOption({
    @Default(ColorType.solid) ColorType colorType,
    @Default(0xFF40C4FF) int color,
    @Default(GradientType.linear) GradientType gradientType,
    @Default(
        [GradientData(gradientPos: (0, 0)), GradientData(gradientPos: (1, 1))])
    List<GradientData> gradientData,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

@freezed
class ChoiceNodeDesignPreset with _$ChoiceNodeDesignPreset {
  @JsonSerializable(explicitToJson: true)
  const factory ChoiceNodeDesignPreset({
    required String name,
    @Default(true) bool titlePosition,
    @Default(0.0) double elevation,
    @Default(0.0) double round,
    @Default(2.0) double padding,
    @Default(false) bool maximizingImage, //true: 80%, false: 50%
    @Default(false) bool hideTitle,
    @Default(0) int imagePosition, //0:default, 1:image-right 2:image-left
    @Default(0xFF000000) int colorTitle,
    @Default("notoSans") String titleFont,
    @Default("notoSans") String mainFont,
    @Default(OutlineOption()) OutlineOption defaultOutlineOption,
    @Default(false) bool selectOutlineEnable,
    @Default(OutlineOption()) OutlineOption selectOutlineOption,
    @Default(ColorOption()) ColorOption defaultColorOption,
    @Default(false) bool selectColorEnable,
    @Default(ColorOption()) ColorOption selectColorOption,
  }) = _ChoiceNodeDesignPreset;

  factory ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignPresetFromJson(json);
}
