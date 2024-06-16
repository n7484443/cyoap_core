// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutlineOptionImpl _$$OutlineOptionImplFromJson(Map<String, dynamic> json) =>
    _$OutlineOptionImpl(
      outlineType:
          $enumDecodeNullable(_$OutlineTypeEnumMap, json['outlineType']) ??
              OutlineType.solid,
      outlineColor: json['outlineColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(json['outlineColor'] as Map<String, dynamic>),
      outlinePadding: (json['outlinePadding'] as num?)?.toDouble() ?? 4.0,
      outlineWidth: (json['outlineWidth'] as num?)?.toDouble() ?? 2.0,
    );

Map<String, dynamic> _$$OutlineOptionImplToJson(_$OutlineOptionImpl instance) =>
    <String, dynamic>{
      'outlineType': _$OutlineTypeEnumMap[instance.outlineType]!,
      'outlineColor': instance.outlineColor.toJson(),
      'outlinePadding': instance.outlinePadding,
      'outlineWidth': instance.outlineWidth,
    };

const _$OutlineTypeEnumMap = {
  OutlineType.none: 'none',
  OutlineType.solid: 'solid',
  OutlineType.dotted: 'dotted',
  OutlineType.dashed: 'dashed',
};

_$GradientDataImpl _$$GradientDataImplFromJson(Map<String, dynamic> json) =>
    _$GradientDataImpl(
      gradientPos: _$recordConvert(
            json['gradientPos'],
            ($jsonValue) => (
              ($jsonValue[r'$1'] as num).toDouble(),
              ($jsonValue[r'$2'] as num).toDouble(),
            ),
          ) ??
          (0.5, 0.5),
      color: (json['color'] as num?)?.toInt() ?? 0xFFFFFFFF,
    );

Map<String, dynamic> _$$GradientDataImplToJson(_$GradientDataImpl instance) =>
    <String, dynamic>{
      'gradientPos': <String, dynamic>{
        r'$1': instance.gradientPos.$1,
        r'$2': instance.gradientPos.$2,
      },
      'color': instance.color,
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

_$ColorOptionImpl _$$ColorOptionImplFromJson(Map<String, dynamic> json) =>
    _$ColorOptionImpl(
      colorType: $enumDecodeNullable(_$ColorTypeEnumMap, json['colorType']) ??
          ColorType.solid,
      color: (json['color'] as num?)?.toInt() ?? 0xFF40C4FF,
      gradientType:
          $enumDecodeNullable(_$GradientTypeEnumMap, json['gradientType']) ??
              GradientType.linear,
      gradientData: (json['gradientData'] as List<dynamic>?)
              ?.map((e) => GradientData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            GradientData(gradientPos: (0, 0)),
            GradientData(gradientPos: (1, 1))
          ],
    );

Map<String, dynamic> _$$ColorOptionImplToJson(_$ColorOptionImpl instance) =>
    <String, dynamic>{
      'colorType': _$ColorTypeEnumMap[instance.colorType]!,
      'color': instance.color,
      'gradientType': _$GradientTypeEnumMap[instance.gradientType]!,
      'gradientData': instance.gradientData.map((e) => e.toJson()).toList(),
    };

const _$ColorTypeEnumMap = {
  ColorType.solid: 'solid',
  ColorType.gradient: 'gradient',
};

const _$GradientTypeEnumMap = {
  GradientType.linear: 'linear',
  GradientType.radial: 'radial',
  GradientType.sweep: 'sweep',
};

_$ChoiceNodeDesignPresetImpl _$$ChoiceNodeDesignPresetImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceNodeDesignPresetImpl(
      name: json['name'] as String,
      titlePosition: json['titlePosition'] as bool? ?? true,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 0.0,
      roundEdge: (json['roundEdge'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0, 0.0, 0.0, 0.0],
      paddingAround: (json['paddingAround'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [2.0, 2.0, 2.0, 2.0],
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: (json['imagePosition'] as num?)?.toInt() ?? 0,
      colorTitle: (json['colorTitle'] as num?)?.toInt() ?? 0xFF000000,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
      defaultOutlineOption: json['defaultOutlineOption'] == null
          ? const OutlineOption()
          : OutlineOption.fromJson(
              json['defaultOutlineOption'] as Map<String, dynamic>),
      selectOutlineEnable: json['selectOutlineEnable'] as bool? ?? false,
      selectOutlineOption: json['selectOutlineOption'] == null
          ? const OutlineOption()
          : OutlineOption.fromJson(
              json['selectOutlineOption'] as Map<String, dynamic>),
      defaultColorOption: json['defaultColorOption'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              json['defaultColorOption'] as Map<String, dynamic>),
      selectColorEnable: json['selectColorEnable'] as bool? ?? false,
      selectColorOption: json['selectColorOption'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              json['selectColorOption'] as Map<String, dynamic>),
      imagePos: (json['imagePos'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0, 0.0, 50.0, 100.0],
      textPos: (json['textPos'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [50.0, 0.0, 100.0, 100.0],
    );

Map<String, dynamic> _$$ChoiceNodeDesignPresetImplToJson(
        _$ChoiceNodeDesignPresetImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'titlePosition': instance.titlePosition,
      'elevation': instance.elevation,
      'roundEdge': instance.roundEdge,
      'paddingAround': instance.paddingAround,
      'maximizingImage': instance.maximizingImage,
      'hideTitle': instance.hideTitle,
      'imagePosition': instance.imagePosition,
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'defaultOutlineOption': instance.defaultOutlineOption.toJson(),
      'selectOutlineEnable': instance.selectOutlineEnable,
      'selectOutlineOption': instance.selectOutlineOption.toJson(),
      'defaultColorOption': instance.defaultColorOption.toJson(),
      'selectColorEnable': instance.selectColorEnable,
      'selectColorOption': instance.selectColorOption.toJson(),
      'imagePos': instance.imagePos,
      'textPos': instance.textPos,
    };
