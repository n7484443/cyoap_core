// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceLineOption _$$_ChoiceLineOptionFromJson(Map<String, dynamic> json) =>
    _$_ChoiceLineOption(
      maxSelect: json['maxSelect'] as int? ?? -1,
      enableCancelFeature: json['enableCancelFeature'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ChoiceLineOptionToJson(_$_ChoiceLineOption instance) =>
    <String, dynamic>{
      'maxSelect': instance.maxSelect,
      'enableCancelFeature': instance.enableCancelFeature,
      'presetName': instance.presetName,
      'name': instance.name,
    };
