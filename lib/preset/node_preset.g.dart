// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutlineOption _$$_OutlineOptionFromJson(Map<String, dynamic> json) =>
    _$_OutlineOption(
      outlineType:
          $enumDecodeNullable(_$OutlineTypeEnumMap, json['outlineType']) ??
              OutlineType.solid,
      outlinePadding: (json['outlinePadding'] as num?)?.toDouble() ?? 4.0,
      outlineWidth: (json['outlineWidth'] as num?)?.toDouble() ?? 2.0,
    );

Map<String, dynamic> _$$_OutlineOptionToJson(_$_OutlineOption instance) =>
    <String, dynamic>{
      'outlineType': _$OutlineTypeEnumMap[instance.outlineType]!,
      'outlinePadding': instance.outlinePadding,
      'outlineWidth': instance.outlineWidth,
    };

const _$OutlineTypeEnumMap = {
  OutlineType.none: 'none',
  OutlineType.solid: 'solid',
  OutlineType.dotted: 'dotted',
  OutlineType.dashed: 'dashed',
};

_$_GradientData _$$_GradientDataFromJson(Map<String, dynamic> json) =>
    _$_GradientData(
      gradientPos: _$recordConvert(
            json['gradientPos'],
            ($jsonValue) => (
              ($jsonValue[r'$1'] as num).toDouble(),
              ($jsonValue[r'$2'] as num).toDouble(),
            ),
          ) ??
          (0, 0),
      color: json['color'] as int? ?? null,
    );

Map<String, dynamic> _$$_GradientDataToJson(_$_GradientData instance) =>
    <String, dynamic>{
      'gradientPos': {
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

_$_SelectColorOption _$$_SelectColorOptionFromJson(Map<String, dynamic> json) =>
    _$_SelectColorOption(
      selectColorType: $enumDecodeNullable(
              _$SelectColorTypeEnumMap, json['selectColorType']) ??
          SelectColorType.solid,
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

Map<String, dynamic> _$$_SelectColorOptionToJson(
        _$_SelectColorOption instance) =>
    <String, dynamic>{
      'selectColorType': _$SelectColorTypeEnumMap[instance.selectColorType]!,
      'gradientType': _$GradientTypeEnumMap[instance.gradientType]!,
      'gradientData': instance.gradientData,
    };

const _$SelectColorTypeEnumMap = {
  SelectColorType.solid: 'solid',
  SelectColorType.gradient: 'gradient',
};

const _$GradientTypeEnumMap = {
  GradientType.linear: 'linear',
  GradientType.radial: 'radial',
  GradientType.sweep: 'sweep',
};

_$_ChoiceNodeDesignPreset _$$_ChoiceNodeDesignPresetFromJson(
        Map<String, dynamic> json) =>
    _$_ChoiceNodeDesignPreset(
      name: json['name'] as String,
      titlePosition: json['titlePosition'] as bool? ?? true,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 0.0,
      round: (json['round'] as num?)?.toDouble() ?? 0.0,
      padding: (json['padding'] as num?)?.toDouble() ?? 2.0,
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
      colorNode: json['colorNode'] as int? ?? 0xFFFFFFFF,
      colorSelectNode: json['colorSelectNode'] as int? ?? 0xFF40C4FF,
      colorTitle: json['colorTitle'] as int? ?? 0xFF000000,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
      outlineOption: json['outlineOption'] == null
          ? const OutlineOption()
          : OutlineOption.fromJson(
              json['outlineOption'] as Map<String, dynamic>),
      selectColorOption: json['selectColorOption'] == null
          ? const SelectColorOption()
          : SelectColorOption.fromJson(
              json['selectColorOption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChoiceNodeDesignPresetToJson(
        _$_ChoiceNodeDesignPreset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'titlePosition': instance.titlePosition,
      'elevation': instance.elevation,
      'round': instance.round,
      'padding': instance.padding,
      'maximizingImage': instance.maximizingImage,
      'hideTitle': instance.hideTitle,
      'imagePosition': instance.imagePosition,
      'colorNode': instance.colorNode,
      'colorSelectNode': instance.colorSelectNode,
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'outlineOption': instance.outlineOption.toJson(),
      'selectColorOption': instance.selectColorOption.toJson(),
    };
