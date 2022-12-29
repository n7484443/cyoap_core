// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_line_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceLineDesignPreset _$$_ChoiceLineDesignPresetFromJson(
        Map<String, dynamic> json) =>
    _$_ChoiceLineDesignPreset(
      name: json['name'] as String,
      backgroundColor: json['background_color'] as int?,
      backgroundImageString: json['background_image_string'] as String?,
      alwaysVisibleLine: json['always_visible_line'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ChoiceLineDesignPresetToJson(
        _$_ChoiceLineDesignPreset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'background_image_string': instance.backgroundImageString,
      'always_visible_line': instance.alwaysVisibleLine,
    };
