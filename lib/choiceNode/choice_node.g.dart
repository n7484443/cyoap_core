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
      maximizingImage: json['maximizingImage'] as bool? ?? false,
      hideTitle: json['hideTitle'] as bool? ?? false,
      hideAsResult: json['hideAsResult'] as bool? ?? false,
      imagePosition: json['imagePosition'] as int? ?? 0,
      colorNode: json['colorNode'] as int? ?? null,
      colorSelectNode: json['colorSelectNode'] as int? ?? null,
    );

Map<String, dynamic> _$$_ChoiceNodeDesignToJson(_$_ChoiceNodeDesign instance) =>
    <String, dynamic>{
      'isCard': instance.isCard,
      'isRound': instance.isRound,
      'isOccupySpace': instance.isOccupySpace,
      'maximizingImage': instance.maximizingImage,
      'hideTitle': instance.hideTitle,
      'hideAsResult': instance.hideAsResult,
      'imagePosition': instance.imagePosition,
      'colorNode': instance.colorNode,
      'colorSelectNode': instance.colorSelectNode,
    };
