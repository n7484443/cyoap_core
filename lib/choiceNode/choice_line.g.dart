// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceLineOptionImpl _$$ChoiceLineOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceLineOptionImpl(
      maxSelect: json['maxSelect'] as int? ?? -1,
      enableCancelFeature: json['enableCancelFeature'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ChoiceLineOptionImplToJson(
    _$ChoiceLineOptionImpl instance) {
  final val = <String, dynamic>{
    'maxSelect': instance.maxSelect,
    'enableCancelFeature': instance.enableCancelFeature,
    'presetName': instance.presetName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}
