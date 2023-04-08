import 'dart:convert';

import 'package:meta/meta.dart';

enum DataType {
  ints("int"),
  doubles("double"),
  strings("String"),
  bools("bool"),
  arrays("array");

  final String name;

  const DataType(this.name);
}

extension DataTypeExtension on DataType {
  bool get isNum => isInt || isDouble;

  bool get isInt => this == DataType.ints;

  bool get isDouble => this == DataType.doubles;

  bool get isString => this == DataType.strings;

  bool get isBool => this == DataType.bools;

  bool isNotIntOne(DataType other) => (isNum && other.isNum) && this != other;
}

ValueType getValueTypeFromStringInput(String input) {
  if (input.startsWith('"') && input.endsWith('"')) {
    return ValueType.string(input.substring(1, input.length - 1));
  }
  if (input.startsWith('[') && input.endsWith(']')) {
    return ValueType(input, DataType.arrays);
  }
  if (input == "true" || input == "false") {
    return ValueType(input, DataType.bools);
  }
  if (input.contains('.')) {
    var out = double.tryParse(input);
    if (out != null) {
      return ValueType(input, DataType.doubles);
    }
    return ValueType.string(input);
  }
  var out = double.tryParse(input);
  if (out != null) {
    return ValueType(input, DataType.ints);
  }
  return ValueType.string(input);
}

ValueType getValueTypeFromDynamicInput(dynamic input) {
  if (input is Map<String, dynamic>) {
    return getValueTypeFromDynamicInput(input["data"]);
  }
  if (input is String) {
    if (input.startsWith('{') && input.endsWith('}')) {
      //input 값을 , 이후 부분에서 자르기
      input = "${input.trim().substring(0, input.indexOf(','))}}";
      input = input.replaceAll('data', '"data"');
      var json = jsonDecode(input);
      return getValueTypeFromDynamicInput(json["data"]);
    }
    return ValueType.string(input);
  }
  if (input is bool) {
    return ValueType.bool(input);
  }
  if (input is int) {
    return ValueType.int(input);
  }
  if (input is double) {
    return ValueType.double(input);
  }
  if (input is List) {
    return ValueType.array(input);
  }
  return ValueType.string(input.toString());
}

@immutable
class ValueType {
  final String data;
  final DataType type;

  const ValueType(this.data, this.type);

  ValueType.int(int data)
      : data = data.toString(),
        type = DataType.ints;

  ValueType.double(double data)
      : data = data.toString(),
        type = DataType.doubles;

  ValueType.array(List list)
      : data = list.toString(),
        type = DataType.arrays;

  const ValueType.nulls()
      : data = "",
        type = DataType.strings;

  const ValueType.string(this.data) : type = DataType.strings;

  const ValueType.bool(bool data)
      : data = data ? "true" : "false",
        type = DataType.bools;

  dynamic get dataUnzip {
    if (data.isEmpty) return null;
    if (type == DataType.ints) return int.parse(data);
    if (type == DataType.bools) return data == "true";
    if (type == DataType.doubles) return double.parse(data);
    if (type == DataType.arrays) {
      return data
          .substring(1, data.length - 1)
          .split(",")
          .map((e) => int.parse(e))
          .toList();
    }
    return data;
  }

  @override
  String toString() {
    return dataUnzip.toString();
  }
}

@immutable
class ValueTypeWrapper {
  final ValueType valueType;
  final bool visible;
  final String displayName;

  const ValueTypeWrapper(this.valueType,
      {this.visible = false, this.displayName = ''});

  @override
  String toString() {
    return '( $valueType | $visible )';
  }

  ValueTypeWrapper copyWith(
      {ValueType? valueType,
      bool? visible,
      String? displayName,
      bool? isGlobal}) {
    return ValueTypeWrapper(valueType ?? this.valueType,
        visible: visible ?? this.visible,
        displayName: displayName ?? this.displayName);
  }

  ValueTypeWrapper.fromJson(Map<String, dynamic> json)
      : valueType = getValueTypeFromDynamicInput(json['valueType']),
        visible = json['visible'] ?? false,
        displayName = json['displayName'] ?? '';

  Map<String, dynamic> toJson() => {
        'visible': visible,
        'valueType': valueType.dataUnzip,
        'displayName': displayName,
      };
}
