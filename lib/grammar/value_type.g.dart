// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValueType _$ValueTypeFromJson(Map<String, dynamic> json) => _ValueType(
      data: json['data'] as String,
      type: $enumDecode(_$DataTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$ValueTypeToJson(_ValueType instance) =>
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

_ValueTypeWrapper _$ValueTypeWrapperFromJson(Map<String, dynamic> json) =>
    _ValueTypeWrapper(
      valueType: const ValueTypeConverter().fromJson(json['valueType']),
      visible: json['visible'] as bool? ?? false,
      displayName: json['displayName'] as String? ?? '',
    );

Map<String, dynamic> _$ValueTypeWrapperToJson(_ValueTypeWrapper instance) =>
    <String, dynamic>{
      'valueType': const ValueTypeConverter().toJson(instance.valueType),
      'visible': instance.visible,
      'displayName': instance.displayName,
    };
