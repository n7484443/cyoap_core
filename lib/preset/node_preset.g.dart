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
      outlineSelectColor: json['outlineSelectColor'] as int? ?? 0xFF40C4FF,
      outlinePadding: (json['outlinePadding'] as num?)?.toDouble() ?? 4.0,
      outlineWidth: (json['outlineWidth'] as num?)?.toDouble() ?? 2.0,
    );

Map<String, dynamic> _$$OutlineOptionImplToJson(_$OutlineOptionImpl instance) =>
    <String, dynamic>{
      'outlineType': _$OutlineTypeEnumMap[instance.outlineType]!,
      'outlineSelectColor': instance.outlineSelectColor,
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
          (0, 0),
      color: json['color'] as int? ?? 0,
    );

Map<String, dynamic> _$$GradientDataImplToJson(_$GradientDataImpl instance) =>
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

_$SelectColorOptionImpl _$$SelectColorOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectColorOptionImpl(
      enable: json['enable'] as bool? ?? false,
      selectColorType: $enumDecodeNullable(
              _$SelectColorTypeEnumMap, json['selectColorType']) ??
          SelectColorType.solid,
      selectColor: json['selectColor'] as int? ?? 0xFF40C4FF,
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

Map<String, dynamic> _$$SelectColorOptionImplToJson(
        _$SelectColorOptionImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'selectColorType': _$SelectColorTypeEnumMap[instance.selectColorType]!,
      'selectColor': instance.selectColor,
      'gradientType': _$GradientTypeEnumMap[instance.gradientType]!,
      'gradientData': instance.gradientData.map((e) => e.toJson()).toList(),
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

_$ChoiceNodeDesignPresetImpl _$$ChoiceNodeDesignPresetImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceNodeDesignPresetImpl(
      name: json['name'] as String,
      titlePosition: json['titlePosition'] as bool? ?? true,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 0.0,
      round: (json['round'] as num?)?.toDouble() ?? 0.0,
      padding: (json['padding'] as num?)?.toDouble() ?? 2.0,
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
      colorNode: json['colorNode'] as int? ?? 0xFFFFFFFF,
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

Map<String, dynamic> _$$ChoiceNodeDesignPresetImplToJson(
        _$ChoiceNodeDesignPresetImpl instance) =>
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
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'outlineOption': instance.outlineOption.toJson(),
      'selectColorOption': instance.selectColorOption.toJson(),
    };
