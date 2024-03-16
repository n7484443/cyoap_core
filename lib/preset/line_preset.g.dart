// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceLineDesignPresetImpl _$$ChoiceLineDesignPresetImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceLineDesignPresetImpl(
      name: json['name'] as String,
      backgroundColorOption: json['backgroundColorOption'] == null
          ? const ColorOption(color: 0)
          : ColorOption.fromJson(
              json['backgroundColorOption'] as Map<String, dynamic>),
      backgroundImageString: json['backgroundImageString'] as String?,
      alwaysVisibleLine: json['alwaysVisibleLine'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChoiceLineDesignPresetImplToJson(
    _$ChoiceLineDesignPresetImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'backgroundColorOption': instance.backgroundColorOption.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backgroundImageString', instance.backgroundImageString);
  val['alwaysVisibleLine'] = instance.alwaysVisibleLine;
  return val;
}
