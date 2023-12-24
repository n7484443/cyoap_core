// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PosImpl _$$PosImplFromJson(Map json) => _$PosImpl(
      data: (json['data'] as List<dynamic>?)?.map((e) => e as int).toList() ??
          const [],
    );

Map<String, dynamic> _$$PosImplToJson(_$PosImpl instance) => <String, dynamic>{
      'data': instance.data,
    };

_$PositionImpl _$$PositionImplFromJson(Map json) => _$PositionImpl(
      x: json['x'] as int? ?? 0,
      y: json['y'] as int? ?? 0,
      w: json['w'] as int? ?? 1,
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'w': instance.w,
    };
