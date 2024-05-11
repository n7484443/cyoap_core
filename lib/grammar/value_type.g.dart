// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValueTypeImpl _$$ValueTypeImplFromJson(Map<String, dynamic> json) =>
    _$ValueTypeImpl(
      data: json['data'] as String,
      type: $enumDecode(_$DataTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ValueTypeImplToJson(_$ValueTypeImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': _$DataTypeEnumMap[instance.type]!,
    };

const _$DataTypeEnumMap = {
  DataType.ints: 'ints',
  DataType.doubles: 'doubles',
  DataType.strings: 'strings',
  DataType.bools: 'bools',
  DataType.arrays: 'arrays',
};

_$ValueTypeWrapperImpl _$$ValueTypeWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$ValueTypeWrapperImpl(
      valueType: const ValueTypeConverter()
          .fromJson(json['valueType'] as Map<String, dynamic>),
      visible: json['visible'] as bool? ?? false,
      displayName: json['displayName'] as String? ?? '',
    );

Map<String, dynamic> _$$ValueTypeWrapperImplToJson(
        _$ValueTypeWrapperImpl instance) =>
    <String, dynamic>{
      'valueType': const ValueTypeConverter().toJson(instance.valueType),
      'visible': instance.visible,
      'displayName': instance.displayName,
    };
