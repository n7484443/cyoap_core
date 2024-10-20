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
      choiceLinePresetList: (json['choiceLinePresetList'] as List<dynamic>?)
              ?.map((e) =>
                  ChoiceLineDesignPreset.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [ChoiceLineDesignPreset(name: 'default')],
      choiceNodePresetList: (json['choiceNodePresetList'] as List<dynamic>?)
              ?.map((e) =>
                  ChoiceNodeDesignPreset.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [ChoiceNodeDesignPreset(name: 'default')],
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
      'choiceLinePresetList':
          instance.choiceLinePresetList.map((e) => e.toJson()).toList(),
      'choiceNodePresetList':
          instance.choiceNodePresetList.map((e) => e.toJson()).toList(),
      'marginVertical': instance.marginVertical,
    };

const _$ImageAttributeEnumMap = {
  ImageAttribute.fit: 'fit',
  ImageAttribute.fill: 'fill',
  ImageAttribute.pattern: 'pattern',
  ImageAttribute.stretch: 'stretch',
};
