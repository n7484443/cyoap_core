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
      colorNode: json['colorNode'] as int? ?? 0xFFFFFFFF,
      colorOutline: json['colorOutline'] as int? ?? 0xFF40C4FF,
      colorTitle: json['colorTitle'] as int? ?? 0xFF000000,
      backgroundImage: json['backgroundImage'] as String?,
      backgroundAttribute: $enumDecodeNullable(
              _$ImageAttributeEnumMap, json['backgroundAttribute']) ??
          ImageAttribute.fit,
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
      'colorNode': instance.colorNode,
      'colorOutline': instance.colorOutline,
      'colorTitle': instance.colorTitle,
      'backgroundImage': instance.backgroundImage,
      'backgroundAttribute':
          _$ImageAttributeEnumMap[instance.backgroundAttribute]!,
      'marginVertical': instance.marginVertical,
    };

const _$ImageAttributeEnumMap = {
  ImageAttribute.fit: 'fit',
  ImageAttribute.fill: 'fill',
  ImageAttribute.pattern: 'pattern',
  ImageAttribute.stretch: 'stretch',
};
