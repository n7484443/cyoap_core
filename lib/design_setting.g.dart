// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlatformDesignSettingImpl _$$PlatformDesignSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$PlatformDesignSettingImpl(
      variableFont: json['variableFont'] as String? ?? "notoSans",
      backgroundImage: json['backgroundImage'] as String?,
      backgroundColorOption: json['backgroundColorOption'] == null
          ? const ColorOption(color: 0xFFEEEEFF)
          : ColorOption.fromJson(
              json['backgroundColorOption'] as Map<String, dynamic>),
      backgroundAttribute: $enumDecodeNullable(
              _$ImageAttributeEnumMap, json['backgroundAttribute']) ??
          ImageAttribute.fit,
      choiceLinePresetMap:
          (json['choiceLinePresetMap'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k,
                    ChoiceLineDesignPreset.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {'default': ChoiceLineDesignPreset()},
      choiceNodePresetMap:
          (json['choiceNodePresetMap'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k,
                    ChoiceNodeDesignPreset.fromJson(e as Map<String, dynamic>)),
              ) ??
              const {'default': ChoiceNodeDesignPreset()},
      marginVertical: (json['marginVertical'] as num?)?.toDouble() ?? 12.0,
    );

Map<String, dynamic> _$$PlatformDesignSettingImplToJson(
        _$PlatformDesignSettingImpl instance) =>
    <String, dynamic>{
      'variableFont': instance.variableFont,
      'backgroundImage': instance.backgroundImage,
      'backgroundColorOption': instance.backgroundColorOption.toJson(),
      'backgroundAttribute':
          _$ImageAttributeEnumMap[instance.backgroundAttribute]!,
      'choiceLinePresetMap':
          instance.choiceLinePresetMap.map((k, e) => MapEntry(k, e.toJson())),
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
