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
    @Default(0xFF40C4FF) int outlineSelectColor,
    @Default(4.0) double outlinePadding,
    @Default(2.0) double outlineWidth,
  }) = _OutlineOption;

  factory OutlineOption.fromJson(Map<String, dynamic> json) =>
      _$OutlineOptionFromJson(json);
}

enum SelectColorType {
  solid,
  gradient;

  @override
  String toString() => name.i18n;

  const SelectColorType();
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
    @Default((0, 0)) (double, double) gradientPos,
    @Default(0) int color,
  }) = _GradientData;

  factory GradientData.fromJson(Map<String, dynamic> json) =>
      _$GradientDataFromJson(json);
}

@freezed
class SelectColorOption with _$SelectColorOption {
  @JsonSerializable(explicitToJson: true)
  const factory SelectColorOption({
    @Default(false) bool enable,
    @Default(SelectColorType.solid) SelectColorType selectColorType,
    @Default(0xFF40C4FF) int selectColor,
    @Default(GradientType.linear) GradientType gradientType,
    @Default([GradientData(gradientPos: (0, 0)), GradientData(gradientPos: (1, 1))]) List<GradientData> gradientData,
  }) = _SelectColorOption;

  factory SelectColorOption.fromJson(Map<String, dynamic> json) =>
      _$SelectColorOptionFromJson(json);
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
    @Default(0xFFFFFFFF) int colorNode,
    @Default(0xFF000000) int colorTitle,
    @Default("notoSans") String titleFont,
    @Default("notoSans") String mainFont,
    @Default(OutlineOption()) OutlineOption outlineOption,
    @Default(SelectColorOption()) SelectColorOption selectColorOption,
  }) = _ChoiceNodeDesignPreset;

  factory ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignPresetFromJson(json);
}
