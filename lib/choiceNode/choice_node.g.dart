// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChoiceNodeDesign _$ChoiceNodeDesignFromJson(Map<String, dynamic> json) =>
    _ChoiceNodeDesign(
      isOccupySpace: json['isOccupySpace'] as bool? ?? false,
      hideAsResult: json['hideAsResult'] as bool? ?? false,
      showAsResult: json['showAsResult'] as bool? ?? false,
      showAsSlider: json['showAsSlider'] as bool? ?? false,
      executeWhenVisible: json['executeWhenVisible'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
      overridePreset: json['overridePreset'] == null
          ? null
          : ChoiceNodeDesignPreset.fromJson(
              json['overridePreset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChoiceNodeDesignToJson(_ChoiceNodeDesign instance) =>
    <String, dynamic>{
      'isOccupySpace': instance.isOccupySpace,
      'hideAsResult': instance.hideAsResult,
      'showAsResult': instance.showAsResult,
      'showAsSlider': instance.showAsSlider,
      'executeWhenVisible': instance.executeWhenVisible,
      'presetName': instance.presetName,
      'overridePreset': instance.overridePreset?.toJson(),
    };
