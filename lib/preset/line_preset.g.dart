// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_preset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceLineDesignPresetImpl _$$ChoiceLineDesignPresetImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceLineDesignPresetImpl(
      name: json['name'] as String?,
      backgroundColorOption: json['backgroundColorOption'] == null
          ? const ColorOption(color: 0)
          : ColorOption.fromJson(
              json['backgroundColorOption'] as Map<String, dynamic>),
      backgroundImageString: json['backgroundImageString'] as String?,
      alwaysVisibleLine: json['alwaysVisibleLine'] as bool? ?? false,
      alignment: $enumDecodeNullable(
              _$ChoiceLineAlignmentEnumMap, json['alignment']) ??
          ChoiceLineAlignment.left,
      maxChildrenPerRow: (json['maxChildrenPerRow'] as num?)?.toInt() ?? 12,
    );

Map<String, dynamic> _$$ChoiceLineDesignPresetImplToJson(
        _$ChoiceLineDesignPresetImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'backgroundColorOption': instance.backgroundColorOption?.toJson(),
      'backgroundImageString': instance.backgroundImageString,
      'alwaysVisibleLine': instance.alwaysVisibleLine,
      'alignment': _$ChoiceLineAlignmentEnumMap[instance.alignment],
      'maxChildrenPerRow': instance.maxChildrenPerRow,
    };

const _$ChoiceLineAlignmentEnumMap = {
  ChoiceLineAlignment.left: 'left',
  ChoiceLineAlignment.center: 'center',
  ChoiceLineAlignment.right: 'right',
};
