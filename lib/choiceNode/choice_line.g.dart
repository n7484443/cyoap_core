// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceLineOptionImpl _$$ChoiceLineOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceLineOptionImpl(
      maxSelect: (json['maxSelect'] as num?)?.toInt() ?? -1,
      enableCancelFeature: json['enableCancelFeature'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
      overridePreset: json['overridePreset'] == null
          ? null
          : ChoiceLineDesignPreset.fromJson(
              json['overridePreset'] as Map<String, dynamic>),
      maxChildrenPerRow: (json['maxChildrenPerRow'] as num?)?.toInt() ?? 12,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ChoiceLineOptionImplToJson(
        _$ChoiceLineOptionImpl instance) =>
    <String, dynamic>{
      'maxSelect': instance.maxSelect,
      'enableCancelFeature': instance.enableCancelFeature,
      'presetName': instance.presetName,
      'overridePreset': instance.overridePreset?.toJson(),
      'maxChildrenPerRow': instance.maxChildrenPerRow,
      'name': instance.name,
    };
