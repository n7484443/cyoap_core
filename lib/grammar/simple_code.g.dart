// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionImpl _$$ActionImplFromJson(Map<String, dynamic> json) => _$ActionImpl(
      type: $enumDecodeNullable(_$SimpleActionTypeEnumMap, json['type']) ??
          SimpleActionType.varSet,
      arguments: (json['arguments'] as List<dynamic>?)
              ?.map((e) => ValueType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ActionImplToJson(_$ActionImpl instance) =>
    <String, dynamic>{
      'type': _$SimpleActionTypeEnumMap[instance.type]!,
      'arguments': instance.arguments.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

const _$SimpleActionTypeEnumMap = {
  SimpleActionType.nothing: 'nothing',
  SimpleActionType.varCreateLocal: 'varCreateLocal',
  SimpleActionType.varCreateGlobal: 'varCreateGlobal',
  SimpleActionType.varSet: 'varSet',
  SimpleActionType.varAdd: 'varAdd',
  SimpleActionType.varSub: 'varSub',
  SimpleActionType.varMul: 'varMul',
  SimpleActionType.varDiv: 'varDiv',
};

_$ConditionImpl _$$ConditionImplFromJson(Map<String, dynamic> json) =>
    _$ConditionImpl(
      type: $enumDecodeNullable(_$SimpleConditionTypeEnumMap, json['type']) ??
          SimpleConditionType.nodeOn,
      arguments: (json['arguments'] as List<dynamic>?)
              ?.map((e) => ValueType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConditionImplToJson(_$ConditionImpl instance) =>
    <String, dynamic>{
      'type': _$SimpleConditionTypeEnumMap[instance.type]!,
      'arguments': instance.arguments.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

const _$SimpleConditionTypeEnumMap = {
  SimpleConditionType.alwaysOn: 'alwaysOn',
  SimpleConditionType.nodeOn: 'nodeOn',
  SimpleConditionType.nodeOff: 'nodeOff',
  SimpleConditionType.varEqual: 'varEqual',
  SimpleConditionType.varNotEqual: 'varNotEqual',
  SimpleConditionType.varGreater: 'varGreater',
  SimpleConditionType.varLess: 'varLess',
  SimpleConditionType.varGreaterEqual: 'varGreaterEqual',
  SimpleConditionType.varLessEqual: 'varLessEqual',
};

_$SimpleCodesImpl _$$SimpleCodesImplFromJson(Map<String, dynamic> json) =>
    _$SimpleCodesImpl(
      code: (json['code'] as List<dynamic>?)
              ?.map((e) => SimpleCodeBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      type: $enumDecodeNullable(_$SimpleTypeEnumMap, json['type']) ??
          SimpleType.action,
    );

Map<String, dynamic> _$$SimpleCodesImplToJson(_$SimpleCodesImpl instance) =>
    <String, dynamic>{
      'code': instance.code.map((e) => e.toJson()).toList(),
      'type': _$SimpleTypeEnumMap[instance.type]!,
    };

const _$SimpleTypeEnumMap = {
  SimpleType.action: 'action',
  SimpleType.condition: 'condition',
};
