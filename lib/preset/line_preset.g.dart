// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceLineDesignPresetImpl _$$ChoiceLineDesignPresetImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceLineDesignPresetImpl(
      name: json['name'] as String,
      backgroundColor: json['background_color'] as int?,
      backgroundImageString: json['background_image_string'] as String?,
      alwaysVisibleLine: json['always_visible_line'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChoiceLineDesignPresetImplToJson(
        _$ChoiceLineDesignPresetImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color': instance.backgroundColor,
      'background_image_string': instance.backgroundImageString,
      'always_visible_line': instance.alwaysVisibleLine,
    };
