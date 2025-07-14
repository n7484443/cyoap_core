// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EdgeValue _$EdgeValueFromJson(Map<String, dynamic> json) => _EdgeValue(
      top: (json['top'] as num?)?.toDouble() ?? 0.0,
      right: (json['right'] as num?)?.toDouble() ?? 0.0,
      bottom: (json['bottom'] as num?)?.toDouble() ?? 0.0,
      left: (json['left'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$EdgeValueToJson(_EdgeValue instance) =>
    <String, dynamic>{
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'left': instance.left,
    };

_VertexValue _$VertexValueFromJson(Map<String, dynamic> json) => _VertexValue(
      topLeft: (json['topLeft'] as num?)?.toDouble() ?? 0.0,
      topRight: (json['topRight'] as num?)?.toDouble() ?? 0.0,
      bottomLeft: (json['bottomLeft'] as num?)?.toDouble() ?? 0.0,
      bottomRight: (json['bottomRight'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$VertexValueToJson(_VertexValue instance) =>
    <String, dynamic>{
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
    };

_OutlineOption _$OutlineOptionFromJson(Map<String, dynamic> json) =>
    _OutlineOption(
      outlineType:
          $enumDecodeNullable(_$OutlineTypeEnumMap, json['outlineType']) ??
              OutlineType.solid,
      outlineColor: json['outlineColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(json['outlineColor'] as Map<String, dynamic>),
      round: json['round'] == null
          ? const VertexValue(
              topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0, bottomRight: 4.0)
          : VertexValue.fromJson(json['round'] as Map<String, dynamic>),
      distance: json['distance'] == null
          ? const EdgeValue(top: 4.0, right: 4.0, bottom: 4.0, left: 4.0)
          : EdgeValue.fromJson(json['distance'] as Map<String, dynamic>),
      outlineWidth: (json['outlineWidth'] as num?)?.toDouble() ?? 2.0,
    );

Map<String, dynamic> _$OutlineOptionToJson(_OutlineOption instance) =>
    <String, dynamic>{
      'outlineType': _$OutlineTypeEnumMap[instance.outlineType]!,
      'outlineColor': instance.outlineColor.toJson(),
      'round': instance.round.toJson(),
      'distance': instance.distance.toJson(),
      'outlineWidth': instance.outlineWidth,
    };

const _$OutlineTypeEnumMap = {
  OutlineType.none: 'none',
  OutlineType.solid: 'solid',
  OutlineType.dotted: 'dotted',
  OutlineType.dashed: 'dashed',
};

_SliderOption _$SliderOptionFromJson(Map<String, dynamic> json) =>
    _SliderOption(
      sliderThumbColor: json['sliderThumbColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              json['sliderThumbColor'] as Map<String, dynamic>),
      sliderTrackActiveColor: json['sliderTrackActiveColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              json['sliderTrackActiveColor'] as Map<String, dynamic>),
      sliderTrackInactiveColor: json['sliderTrackInactiveColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              json['sliderTrackInactiveColor'] as Map<String, dynamic>),
      sliderThumbShape: $enumDecodeNullable(
              _$SliderThumbShapeEnumMap, json['sliderThumbShape']) ??
          SliderThumbShape.circle,
    );

Map<String, dynamic> _$SliderOptionToJson(_SliderOption instance) =>
    <String, dynamic>{
      'sliderThumbColor': instance.sliderThumbColor.toJson(),
      'sliderTrackActiveColor': instance.sliderTrackActiveColor.toJson(),
      'sliderTrackInactiveColor': instance.sliderTrackInactiveColor.toJson(),
      'sliderThumbShape': _$SliderThumbShapeEnumMap[instance.sliderThumbShape]!,
    };

const _$SliderThumbShapeEnumMap = {
  SliderThumbShape.circle: 'circle',
  SliderThumbShape.thinRectangle: 'thinRectangle',
};

_ChoiceNodeDesignPreset _$ChoiceNodeDesignPresetFromJson(
        Map<String, dynamic> json) =>
    _ChoiceNodeDesignPreset(
      titlePosition: json['titlePosition'] as bool? ?? true,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 4.0,
      round: json['round'] == null
          ? const VertexValue(
              topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0, bottomRight: 4.0)
          : VertexValue.fromJson(json['round'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? const EdgeValue(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0)
          : EdgeValue.fromJson(json['padding'] as Map<String, dynamic>),
      imageMaxHeightRatio:
          (json['imageMaxHeightRatio'] as num?)?.toDouble() ?? 0.5,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: (json['imagePosition'] as num?)?.toInt() ?? 0,
      colorTitle: (json['colorTitle'] as num?)?.toInt() ?? 0xFF000000,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
      defaultOutlineOption: json['defaultOutlineOption'] == null
          ? const OutlineOption(
              distance: EdgeValue(top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
              outlineColor: ColorOption(color: 0xFFFFFFFF))
          : OutlineOption.fromJson(
              json['defaultOutlineOption'] as Map<String, dynamic>),
      selectOutlineEnable: json['selectOutlineEnable'] as bool? ?? true,
      selectOutlineOption: json['selectOutlineOption'] == null
          ? const OutlineOption(
              distance: EdgeValue(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
              outlineColor: ColorOption(color: 0xFF91ABFF))
          : OutlineOption.fromJson(
              json['selectOutlineOption'] as Map<String, dynamic>),
      defaultColorOption: json['defaultColorOption'] == null
          ? const ColorOption(color: 0xFFFFFFFF)
          : ColorOption.fromJson(
              json['defaultColorOption'] as Map<String, dynamic>),
      selectColorEnable: json['selectColorEnable'] as bool? ?? true,
      selectColorOption: json['selectColorOption'] == null
          ? const ColorOption(
              colorType: ColorType.gradient,
              gradientType: GradientType.linear,
              gradientData: [
                  GradientData(gradientPos: (0, 0), color: 0xFFDADBFF),
                  GradientData(gradientPos: (1, 1), color: 0xFFD6F3FF)
                ])
          : ColorOption.fromJson(
              json['selectColorOption'] as Map<String, dynamic>),
      sliderOption: json['sliderOption'] == null
          ? const SliderOption(
              sliderThumbColor: ColorOption(color: 0xFFDAF4FF),
              sliderTrackActiveColor: ColorOption(color: 0xFFB0E5FD),
              sliderTrackInactiveColor: ColorOption(color: 0xFFC6EDFF),
              sliderThumbShape: SliderThumbShape.circle)
          : SliderOption.fromJson(json['sliderOption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChoiceNodeDesignPresetToJson(
        _ChoiceNodeDesignPreset instance) =>
    <String, dynamic>{
      'titlePosition': instance.titlePosition,
      'elevation': instance.elevation,
      'round': instance.round?.toJson(),
      'padding': instance.padding?.toJson(),
      'imageMaxHeightRatio': instance.imageMaxHeightRatio,
      'hideTitle': instance.hideTitle,
      'imagePosition': instance.imagePosition,
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'defaultOutlineOption': instance.defaultOutlineOption?.toJson(),
      'selectOutlineEnable': instance.selectOutlineEnable,
      'selectOutlineOption': instance.selectOutlineOption?.toJson(),
      'defaultColorOption': instance.defaultColorOption?.toJson(),
      'selectColorEnable': instance.selectColorEnable,
      'selectColorOption': instance.selectColorOption?.toJson(),
      'sliderOption': instance.sliderOption?.toJson(),
    };
