import 'dart:convert';

import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_type.freezed.dart';

part 'value_type.g.dart';

enum DataType {
  ints("int"),
  doubles("double"),
  strings("String"),
  bools("bool"),
  arrays("array");

  final String name;

  const DataType(this.name);

  @override
  String toString() => name.i18n;
}

extension DataTypeExtension on DataType {
  bool get isNum => isInt || isDouble;

  bool get isInt => this == DataType.ints;

  bool get isDouble => this == DataType.doubles;

  bool get isString => this == DataType.strings;

  bool get isBool => this == DataType.bools;

  bool isNotIntOne(DataType other) => (isNum && other.isNum) && this != other;
}

DataType fromName(String name) {
  for (var type in DataType.values) {
    if (type.name == name) {
      return type;
    }
  }
  return DataType.strings;
}

ValueType getValueTypeFromStringInput(String input) {
  if (input.startsWith('"') && input.endsWith('"')) {
    return ValueType(
        data: input.substring(1, input.length - 1), type: DataType.strings);
  }
  if (input.startsWith('[') && input.endsWith(']')) {
    return ValueType(data: input, type: DataType.arrays);
  }
  if (input == "true" || input == "false") {
    return ValueType(data: input, type: DataType.bools);
  }
  if (input.contains('.')) {
    var out = double.tryParse(input);
    if (out != null) {
      return ValueType(data: input, type: DataType.doubles);
    }
    return ValueType(data: input, type: DataType.strings);
  }
  var out = double.tryParse(input);
  if (out != null) {
    return ValueType(data: input, type: DataType.ints);
  }
  return ValueType(data: input, type: DataType.strings);
}

ValueType getValueTypeFromDynamicInput(dynamic input) {
  if (input is Map<String, dynamic>) {
    return ValueType.fromJson(input);
  }
  if (input is bool) {
    return ValueType(data: input ? "true" : "false", type: DataType.bools);
  }
  if (input is int) {
    return ValueType(data: input.toString(), type: DataType.ints);
  }
  if (input is double) {
    return ValueType(data: input.toString(), type: DataType.doubles);
  }
  if (input is List) {
    return ValueType(data: input.toString(), type: DataType.arrays);
  }
  if (input == null) {
    return ValueType(data: "", type: DataType.strings);
  }
  return ValueType(data: input.toString(), type: DataType.strings);
}

@freezed
class ValueType with _$ValueType {
  const factory ValueType({
    required String data,
    required DataType type,
  }) = _ValueType;

  const ValueType._();

  factory ValueType.fromJson(Map<String, dynamic> json) =>
      _$ValueTypeFromJson(json);

  dynamic get dataUnzip {
    if (data.isEmpty) return null;
    if (type == DataType.ints) return int.parse(data);
    if (type == DataType.bools) return data.trim() == "true";
    if (type == DataType.doubles) return double.parse(data);
    if (type == DataType.arrays) {
      if (data.substring(1, data.length - 1).isEmpty) {
        return [];
      }
      return getList(data);
    }
    return data;
  }

  List<ValueType> getList(String input) {
    var str = input.substring(1, input.length - 1).trim();
    List<ValueType> list = [];
    int stack = 0;
    var char = '';
    for (var ch in str.split('')) {
      if (ch == ',' && stack == 0) {
        list.add(getValueTypeFromStringInput(char.trim()));
        char = '';
        continue;
      }
      char += ch;
      if (ch == '[') {
        stack += 1;
      } else if (ch == ']') {
        stack -= 1;
      }
    }
    if (char.isNotEmpty) {
      list.add(getValueTypeFromStringInput(char.trim()));
    }
    return list;
  }

  @override
  String toString() {
    return dataUnzip.toString();
  }
}

@freezed
class ValueTypeWrapper with _$ValueTypeWrapper {
  const factory ValueTypeWrapper({
    @ValueTypeConverter() required ValueType valueType,
    @Default(false) bool visible,
    @Default('') String displayName,
  }) = _ValueTypeWrapper;

  const ValueTypeWrapper._();

  @override
  String toString() {
    return '( $valueType | $visible )';
  }

  factory ValueTypeWrapper.fromJson(Map<String, dynamic> json) =>
      _$ValueTypeWrapperFromJson(json);
}

class ValueTypeConverter implements JsonConverter<ValueType, Map<String, dynamic>> {
  const ValueTypeConverter();

  @override
  ValueType fromJson(Map<String, dynamic> json) {
    if(json is! String){
      return getValueTypeFromDynamicInput(json["valueType"]);
    }
    return ValueType.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(ValueType object) {
    return object.toJson();
  }
}

