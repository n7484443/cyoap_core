// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlatformDesignSetting _$$_PlatformDesignSettingFromJson(
        Map<String, dynamic> json) =>
    _$_PlatformDesignSetting(
      titlePosition: json['titlePosition'] as bool? ?? true,
      titleFont: json['titleFont'] as String? ?? "notoSans",
      mainFont: json['mainFont'] as String? ?? "notoSans",
      variableFont: json['variableFont'] as String? ?? "notoSans",
      colorBackground: json['colorBackground'] as int? ?? 0xFFFFFFFF,
      colorTitle: json['colorTitle'] as int? ?? 0xFF000000,
      backgroundImage: json['backgroundImage'] as String?,
      backgroundAttribute: $enumDecodeNullable(
              _$ImageAttributeEnumMap, json['backgroundAttribute']) ??
          ImageAttribute.fit,
      choiceNodePresetList: (json['choiceNodePresetList'] as List<dynamic>?)
              ?.map((e) =>
                  ChoiceNodeDesignPreset.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      marginVertical: (json['marginVertical'] as num?)?.toDouble() ?? 12.0,
    );

Map<String, dynamic> _$$_PlatformDesignSettingToJson(
        _$_PlatformDesignSetting instance) =>
    <String, dynamic>{
      'titlePosition': instance.titlePosition,
      'titleFont': instance.titleFont,
      'mainFont': instance.mainFont,
      'variableFont': instance.variableFont,
      'colorBackground': instance.colorBackground,
      'colorTitle': instance.colorTitle,
      'backgroundImage': instance.backgroundImage,
      'backgroundAttribute':
          _$ImageAttributeEnumMap[instance.backgroundAttribute]!,
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
