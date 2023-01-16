// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceNodeDesign _$$_ChoiceNodeDesignFromJson(Map<String, dynamic> json) =>
    _$_ChoiceNodeDesign(
      isOccupySpace: json['isOccupySpace'] as bool? ?? false,
      hideAsResult: json['hideAsResult'] as bool? ?? false,
      showAsResult: json['showAsResult'] as bool? ?? false,
      showAsSlider: json['showAsSlider'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
    );

Map<String, dynamic> _$$_ChoiceNodeDesignToJson(_$_ChoiceNodeDesign instance) =>
    <String, dynamic>{
      'isOccupySpace': instance.isOccupySpace,
      'hideAsResult': instance.hideAsResult,
      'showAsResult': instance.showAsResult,
      'showAsSlider': instance.showAsSlider,
      'presetName': instance.presetName,
    };
