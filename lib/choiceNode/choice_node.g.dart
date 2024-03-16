// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceNodeDesignImpl _$$ChoiceNodeDesignImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceNodeDesignImpl(
      isOccupySpace: json['isOccupySpace'] as bool? ?? false,
      hideAsResult: json['hideAsResult'] as bool? ?? false,
      showAsResult: json['showAsResult'] as bool? ?? false,
      showAsSlider: json['showAsSlider'] as bool? ?? false,
      presetName: json['presetName'] as String? ?? 'default',
    );

Map<String, dynamic> _$$ChoiceNodeDesignImplToJson(
        _$ChoiceNodeDesignImpl instance) =>
    <String, dynamic>{
      'isOccupySpace': instance.isOccupySpace,
      'hideAsResult': instance.hideAsResult,
      'showAsResult': instance.showAsResult,
      'showAsSlider': instance.showAsSlider,
      'presetName': instance.presetName,
    };
