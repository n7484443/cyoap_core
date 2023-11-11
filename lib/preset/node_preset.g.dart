// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutlineOptionImpl _$$OutlineOptionImplFromJson(Map json) =>
    _$OutlineOptionImpl(
      outlineType:
          $enumDecodeNullable(_$OutlineTypeEnumMap, json['outlineType']) ??
              OutlineType.solid,
      outlineColor: json['outlineColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              Map<String, dynamic>.from(json['outlineColor'] as Map)),
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

_$GradientDataImpl _$$GradientDataImplFromJson(Map json) => _$GradientDataImpl(
      gradientPos: _$recordConvertAny(
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

$Rec _$recordConvertAny<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map);

_$ColorOptionImpl _$$ColorOptionImplFromJson(Map json) => _$ColorOptionImpl(
      colorType: $enumDecodeNullable(_$ColorTypeEnumMap, json['colorType']) ??
          ColorType.solid,
      color: json['color'] as int? ?? 0xFF40C4FF,
      gradientType:
          $enumDecodeNullable(_$GradientTypeEnumMap, json['gradientType']) ??
              GradientType.linear,
      gradientData: (json['gradientData'] as List<dynamic>?)
              ?.map((e) =>
                  GradientData.fromJson(Map<String, dynamic>.from(e as Map)))
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

_$ChoiceNodeDesignPresetImpl _$$ChoiceNodeDesignPresetImplFromJson(Map json) =>
    _$ChoiceNodeDesignPresetImpl(
      name: json['name'] as String,
      titlePosition: json['titlePosition'] as bool? ?? true,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 0.0,
      round: (json['round'] as num?)?.toDouble() ?? 0.0,
      padding: (json['padding'] as num?)?.toDouble() ?? 2.0,
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
      colorTitle: json['colorTitle'] as int? ?? 0xFF000000,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
      outlineOption: json['outlineOption'] == null
          ? const OutlineOption()
          : OutlineOption.fromJson(
              Map<String, dynamic>.from(json['outlineOption'] as Map)),
      colorNode: json['colorNode'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              Map<String, dynamic>.from(json['colorNode'] as Map)),
      selectColorEnable: json['selectColorEnable'] as bool? ?? false,
      selectColorOption: json['selectColorOption'] == null
          ? const ColorOption()
          : ColorOption.fromJson(
              Map<String, dynamic>.from(json['selectColorOption'] as Map)),
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
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'outlineOption': instance.outlineOption.toJson(),
      'colorNode': instance.colorNode.toJson(),
      'selectColorEnable': instance.selectColorEnable,
      'selectColorOption': instance.selectColorOption.toJson(),
    };
