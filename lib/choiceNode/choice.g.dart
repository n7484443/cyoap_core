// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SizeData _$SizeDataFromJson(Map<String, dynamic> json) => _SizeData(
      width: (json['width'] as num).toInt(),
      pos: json['pos'] == null
          ? null
          : Pos.fromJson(json['pos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SizeDataToJson(_SizeData instance) => <String, dynamic>{
      'width': instance.width,
      'pos': instance.pos?.toJson(),
    };
