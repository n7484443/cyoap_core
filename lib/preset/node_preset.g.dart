// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceNodeDesignPreset _$$_ChoiceNodeDesignPresetFromJson(
        Map<String, dynamic> json) =>
    _$_ChoiceNodeDesignPreset(
      name: json['name'] as String,
      titlePosition: json['titlePosition'] as bool? ?? true,
      elevation: (json['elevation'] as num?)?.toDouble() ?? 0.0,
      round: (json['round'] as num?)?.toDouble() ?? 0.0,
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
      colorNode: json['colorNode'] as int? ?? 0xFFFFFFFF,
      colorSelectNode: json['colorSelectNode'] as int? ?? 0xFF40C4FF,
      colorTitle: json['colorTitle'] as int? ?? 0xFF000000,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
      outline: $enumDecodeNullable(_$OutlineEnumMap, json['outline']) ??
          Outline.solid,
    );

Map<String, dynamic> _$$_ChoiceNodeDesignPresetToJson(
        _$_ChoiceNodeDesignPreset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'titlePosition': instance.titlePosition,
      'elevation': instance.elevation,
      'round': instance.round,
      'maximizingImage': instance.maximizingImage,
      'hideTitle': instance.hideTitle,
      'imagePosition': instance.imagePosition,
      'colorNode': instance.colorNode,
      'colorSelectNode': instance.colorSelectNode,
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'outline': _$OutlineEnumMap[instance.outline]!,
    };

const _$OutlineEnumMap = {
  Outline.none: 'none',
  Outline.solid: 'solid',
  Outline.dotted: 'dotted',
};
