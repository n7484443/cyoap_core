// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_code_handler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConditionalCodeHandler _$ConditionalCodeHandlerFromJson(
        Map<String, dynamic> json) =>
    ConditionalCodeHandler(
      conditionClickableString: json['conditionClickableString'] as String?,
      conditionVisibleString: json['conditionVisibleString'] as String?,
      executeCodeString: json['executeCodeString'] as String?,
    )
      ..conditionClickableCode =
          (json['conditionClickableCode'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              []
      ..conditionVisibleCode = (json['conditionVisibleCode'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          []
      ..executeCode = (json['executeCode'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          []
      ..textCode = (json['textCode'] as List<dynamic>?)
              ?.map(
                  (e) => (e as List<dynamic>).map((e) => e as String).toList())
              .toList() ??
          [[]];

Map<String, dynamic> _$ConditionalCodeHandlerToJson(
        ConditionalCodeHandler instance) =>
    <String, dynamic>{
      'conditionClickableCode': instance.conditionClickableCode,
      'conditionVisibleCode': instance.conditionVisibleCode,
      'executeCode': instance.executeCode,
      'textCode': instance.textCode,
      'conditionClickableString': instance.conditionClickableString,
      'conditionVisibleString': instance.conditionVisibleString,
      'executeCodeString': instance.executeCodeString,
    };
