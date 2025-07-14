// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Action _$ActionFromJson(Map<String, dynamic> json) => Action(
      type: $enumDecodeNullable(_$SimpleActionTypeEnumMap, json['type']) ??
          SimpleActionType.varSet,
      arguments: (json['arguments'] as List<dynamic>?)
              ?.map((e) => ValueType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ActionToJson(Action instance) => <String, dynamic>{
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

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
      type: $enumDecodeNullable(_$SimpleConditionTypeEnumMap, json['type']) ??
          SimpleConditionType.nodeOn,
      arguments: (json['arguments'] as List<dynamic>?)
              ?.map((e) => ValueType.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
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

_SimpleCodes _$SimpleCodesFromJson(Map<String, dynamic> json) => _SimpleCodes(
      code: (json['code'] as List<dynamic>?)
              ?.map((e) => SimpleCodeBlock.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      type: $enumDecodeNullable(_$SimpleTypeEnumMap, json['type']) ??
          SimpleType.action,
    );

Map<String, dynamic> _$SimpleCodesToJson(_SimpleCodes instance) =>
    <String, dynamic>{
      'code': instance.code.map((e) => e.toJson()).toList(),
      'type': _$SimpleTypeEnumMap[instance.type]!,
    };

const _$SimpleTypeEnumMap = {
  SimpleType.action: 'action',
  SimpleType.condition: 'condition',
};
