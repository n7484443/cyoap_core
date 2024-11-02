// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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