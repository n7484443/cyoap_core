// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlatformDesignSetting _$$_PlatformDesignSettingFromJson(
        Map<String, dynamic> json) =>
    _$_PlatformDesignSetting(
      variableFont: json['variableFont'] as String? ?? "notoSans",
      colorBackground: json['colorBackground'] as int? ?? 0xFFFFFFFF,
      backgroundImage: json['backgroundImage'] as String?,
      backgroundAttribute: $enumDecodeNullable(
              _$ImageAttributeEnumMap, json['backgroundAttribute']) ??
          ImageAttribute.fit,
      choiceNodePresetMap:
          (json['choiceNodePresetMap'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k,
                    ChoiceNodeDesignPreset.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {'default': ChoiceNodeDesignPreset()},
      marginVertical: (json['marginVertical'] as num?)?.toDouble() ?? 12.0,
    );

Map<String, dynamic> _$$_PlatformDesignSettingToJson(
        _$_PlatformDesignSetting instance) =>
    <String, dynamic>{
      'variableFont': instance.variableFont,
      'colorBackground': instance.colorBackground,
      'backgroundImage': instance.backgroundImage,
      'backgroundAttribute':
          _$ImageAttributeEnumMap[instance.backgroundAttribute]!,
      'choiceNodePresetMap':
          instance.choiceNodePresetMap.map((k, e) => MapEntry(k, e.toJson())),
      'marginVertical': instance.marginVertical,
    };

const _$ImageAttributeEnumMap = {
  ImageAttribute.fit: 'fit',
  ImageAttribute.fill: 'fill',
  ImageAttribute.pattern: 'pattern',
  ImageAttribute.stretch: 'stretch',
};
