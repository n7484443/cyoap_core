// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChoiceLineOption _$ChoiceLineOptionFromJson(Map<String, dynamic> json) =>
    _ChoiceLineOption(
      maxSelect: (json['maxSelect'] as num?)?.toInt() ?? -1,
      enableCancelFeature: json['enableCancelFeature'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
      overridePreset: json['overridePreset'] == null
          ? null
          : ChoiceLineDesignPreset.fromJson(
              json['overridePreset'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ChoiceLineOptionToJson(_ChoiceLineOption instance) =>
    <String, dynamic>{
      'maxSelect': instance.maxSelect,
      'enableCancelFeature': instance.enableCancelFeature,
      'presetName': instance.presetName,
      'overridePreset': instance.overridePreset?.toJson(),
      'name': instance.name,
    };
