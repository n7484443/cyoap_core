// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SizeDataImpl _$$SizeDataImplFromJson(Map<String, dynamic> json) =>
    _$SizeDataImpl(
      width: (json['width'] as num).toInt(),
      pos: json['pos'] == null
          ? null
          : Pos.fromJson(json['pos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SizeDataImplToJson(_$SizeDataImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'pos': instance.pos?.toJson(),
    };
