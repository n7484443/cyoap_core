// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pos _$PosFromJson(Map<String, dynamic> json) => _Pos(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PosToJson(_Pos instance) => <String, dynamic>{
      'data': instance.data,
    };
