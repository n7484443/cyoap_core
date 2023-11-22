// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceLineDesignPresetImpl _$$ChoiceLineDesignPresetImplFromJson(Map json) =>
    _$ChoiceLineDesignPresetImpl(
      name: json['name'] as String,
      backgroundColorOption: json['background_color_option'] == null
          ? const ColorOption()
          : ColorOption.fromJson(Map<String, dynamic>.from(
              json['background_color_option'] as Map)),
      backgroundImageString: json['background_image_string'] as String?,
      alwaysVisibleLine: json['always_visible_line'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChoiceLineDesignPresetImplToJson(
        _$ChoiceLineDesignPresetImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'background_color_option': instance.backgroundColorOption.toJson(),
      'background_image_string': instance.backgroundImageString,
      'always_visible_line': instance.alwaysVisibleLine,
    };
