// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceNodeDesign _$$_ChoiceNodeDesignFromJson(Map<String, dynamic> json) =>
    _$_ChoiceNodeDesign(
      isCard: json['isCard'] as bool? ?? true,
      isRound: json['isRound'] as bool? ?? true,
      isOccupySpace: json['isOccupySpace'] as bool? ?? true,
      enableElevation: json['enableElevation'] as bool? ?? true,
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ChoiceNodeDesignToJson(_$_ChoiceNodeDesign instance) =>
    <String, dynamic>{
      'isCard': instance.isCard,
      'isRound': instance.isRound,
      'isOccupySpace': instance.isOccupySpace,
      'enableElevation': instance.enableElevation,
      'maximizingImage': instance.maximizingImage,
      'hideTitle': instance.hideTitle,
      'imagePosition': instance.imagePosition,
    };
