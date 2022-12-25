// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_node_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceNodeDesignPreset _$$_ChoiceNodeDesignPresetFromJson(
        Map<String, dynamic> json) =>
    _$_ChoiceNodeDesignPreset(
      name: json['name'] as String,
      titlePosition: json['titlePosition'] as bool? ?? true,
      isCard: json['isCard'] as bool? ?? true,
      isRound: json['isRound'] as bool? ?? true,
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
      colorNode: json['colorNode'] as int? ?? 0xFFFFFFFF,
      colorSelectNode: json['colorSelectNode'] as int? ?? 0xFF40C4FF,
      colorTitle: json['colorTitle'] as int? ?? 0xFF000000,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
    );

Map<String, dynamic> _$$_ChoiceNodeDesignPresetToJson(
        _$_ChoiceNodeDesignPreset instance) =>
    <String, dynamic>{
      'name': instance.name,
      'titlePosition': instance.titlePosition,
      'isCard': instance.isCard,
      'isRound': instance.isRound,
      'maximizingImage': instance.maximizingImage,
      'hideTitle': instance.hideTitle,
      'imagePosition': instance.imagePosition,
      'colorNode': instance.colorNode,
      'colorSelectNode': instance.colorSelectNode,
      'colorTitle': instance.colorTitle,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
    };
