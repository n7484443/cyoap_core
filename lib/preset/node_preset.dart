import 'package:cyoap_core/i18n.dart';
import 'package:cyoap_core/preset/preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'node_preset.freezed.dart';

part 'node_preset.g.dart';

@freezed
class EdgeValue with _$EdgeValue {
  const factory EdgeValue({
    @Default(0.0) double top,
    @Default(0.0) double right,
    @Default(0.0) double bottom,
    @Default(0.0) double left,
  }) = _EdgeValue;

  const EdgeValue._();

  double getValue(String key) {
    switch (key) {
      case "top":
        return top;
      case "right":
        return right;
      case "bottom":
        return bottom;
      case "left":
        return left;
      default:
        return 0.0;
    }
  }

  factory EdgeValue.fromJson(Map<String, dynamic> json) =>
      _$EdgeValueFromJson(json);
}

@freezed
class VertexValue with _$VertexValue {
  const factory VertexValue({
    @Default(0.0) double topLeft,
    @Default(0.0) double topRight,
    @Default(0.0) double bottomLeft,
    @Default(0.0) double bottomRight,
  }) = _VertexValue;

  const VertexValue._();

  double getValue(String key) {
    switch (key) {
      case "topLeft":
        return topLeft;
      case "topRight":
        return topRight;
      case "bottomLeft":
        return bottomLeft;
      case "bottomRight":
        return bottomRight;
      default:
        return 0.0;
    }
  }

  factory VertexValue.fromJson(Map<String, dynamic> json) =>
      _$VertexValueFromJson(json);
}

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
  const factory OutlineOption({
    @Default(OutlineType.solid) OutlineType outlineType,
    @Default(ColorOption()) ColorOption outlineColor,
    @Default(VertexValue(
        topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0, bottomRight: 4.0))
    VertexValue round,
    @Default(EdgeValue(top: 4.0, right: 4.0, bottom: 4.0, left: 4.0))
    EdgeValue distance,
    @Default(2.0) double outlineWidth,
  }) = _OutlineOption;

  factory OutlineOption.fromJson(Map<String, dynamic> json) =>
      _$OutlineOptionFromJson(json);
}

enum SliderThumbShape {
  circle,
  thinRectangle;

  @override
  String toString() => name.i18n;

  const SliderThumbShape();
}

@freezed
class SliderOption with _$SliderOption {
  const factory SliderOption({
    @Default(ColorOption()) ColorOption sliderThumbColor,
    @Default(ColorOption()) ColorOption sliderTrackActiveColor,
    @Default(ColorOption()) ColorOption sliderTrackInactiveColor,
    @Default(SliderThumbShape.circle) SliderThumbShape sliderThumbShape,
  }) = _SliderOption;

  factory SliderOption.fromJson(Map<String, dynamic> json) =>
      _$SliderOptionFromJson(json);
}

@freezed
class ChoiceNodeDesignPreset with _$ChoiceNodeDesignPreset {
  const factory ChoiceNodeDesignPreset({
    String? name,
    @Default(true) bool? titlePosition,
    @Default(4.0) double? elevation,
    @Default(VertexValue(
      topLeft: 4.0,
      topRight: 4.0,
      bottomLeft: 4.0,
      bottomRight: 4.0,
    ))
    VertexValue? round,
    @Default(EdgeValue(
      top: 2.0,
      left: 2.0,
      right: 2.0,
      bottom: 2.0,
    ))
    EdgeValue? padding,
    @Default(0.5) double? imageMaxHeightRatio,
    @Default(false) bool? hideTitle,
    @Default(0) int? imagePosition, //0:default, 1:image-right 2:image-left
    @Default(0xFF000000) int? colorTitle,
    @Default("notoSans") String? titleFont,
    @Default("notoSans") String? mainFont,
    @Default(OutlineOption(
      distance: EdgeValue(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        bottom: 0.0,
      ),
      outlineColor: ColorOption(
        color: 0xFFFFFFFF,
      ),
    ))
    OutlineOption? defaultOutlineOption,
    @Default(true) bool? selectOutlineEnable,
    @Default(OutlineOption(
      distance: EdgeValue(
        top: 4.0,
        left: 4.0,
        right: 4.0,
        bottom: 4.0,
      ),
      outlineColor: ColorOption(
        color: 0x91ABFFFF,
      ),
    ))
    OutlineOption? selectOutlineOption,
    @Default(ColorOption(
      color: 0xFFFFFFFF,
    ))
    ColorOption? defaultColorOption,
    @Default(true) bool? selectColorEnable,
    @Default(ColorOption(
      gradientType: GradientType.linear,
      gradientData: [
        GradientData(gradientPos: (0, 0), color: 0xDADBFFFF),
        GradientData(gradientPos: (1, 1), color: 0xD6F3FFFF),
      ],
    ))
    ColorOption? selectColorOption,
    @Default(SliderOption(
      sliderThumbColor: ColorOption(
        color: 0xDAF4FFFF,
      ),
      sliderTrackActiveColor: ColorOption(
        color: 0xB0E5FDFF,
      ),
      sliderTrackInactiveColor: ColorOption(
        color: 0xC6EDFFFF,
      ),
      sliderThumbShape: SliderThumbShape.circle,
    ))
    SliderOption? sliderOption,
  }) = _ChoiceNodeDesignPreset;

  const ChoiceNodeDesignPreset._();

  static ChoiceNodeDesignPreset emptyPreset() {
    return ChoiceNodeDesignPreset(
      name: null,
      titlePosition: null,
      elevation: null,
      round: null,
      padding: null,
      imageMaxHeightRatio: null,
      hideTitle: null,
      imagePosition: null,
      colorTitle: null,
      titleFont: null,
      mainFont: null,
      defaultOutlineOption: null,
      selectOutlineEnable: null,
      selectOutlineOption: null,
      defaultColorOption: null,
      selectColorEnable: null,
      selectColorOption: null,
      sliderOption: null,
    );
  }

  ChoiceNodeDesignPreset getPresetWithOverride(
      ChoiceNodeDesignPreset? override) {
    return ChoiceNodeDesignPreset(
      name: override?.name ?? name,
      titlePosition: override?.titlePosition ?? titlePosition,
      elevation: override?.elevation ?? elevation,
      round: override?.round ?? round,
      padding: override?.padding ?? padding,
      imageMaxHeightRatio: override?.imageMaxHeightRatio ?? imageMaxHeightRatio,
      hideTitle: override?.hideTitle ?? hideTitle,
      imagePosition: override?.imagePosition ?? imagePosition,
      colorTitle: override?.colorTitle ?? colorTitle,
      titleFont: override?.titleFont ?? titleFont,
      mainFont: override?.mainFont ?? mainFont,
      defaultOutlineOption:
          override?.defaultOutlineOption ?? defaultOutlineOption,
      selectOutlineEnable: override?.selectOutlineEnable ?? selectOutlineEnable,
      selectOutlineOption: override?.selectOutlineOption ?? selectOutlineOption,
      defaultColorOption: override?.defaultColorOption ?? defaultColorOption,
      selectColorEnable: override?.selectColorEnable ?? selectColorEnable,
      selectColorOption: override?.selectColorOption ?? selectColorOption,
      sliderOption: override?.sliderOption ?? sliderOption,
    );
  }

  factory ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignPresetFromJson(json);
}
