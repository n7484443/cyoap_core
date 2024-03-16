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
    ConditionalCodeHandler instance) {
  final val = <String, dynamic>{
    'conditionClickableCode': instance.conditionClickableCode,
    'conditionVisibleCode': instance.conditionVisibleCode,
    'executeCode': instance.executeCode,
    'textCode': instance.textCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('conditionClickableString', instance.conditionClickableString);
  writeNotNull('conditionVisibleString', instance.conditionVisibleString);
  writeNotNull('executeCodeString', instance.executeCodeString);
  return val;
}
