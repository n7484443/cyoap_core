import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_type.dart';

part 'simple_code.freezed.dart';

part 'simple_code.g.dart';

enum SimpleType { action, condition }

mixin SimpleTypeMixin {
  int get argumentLength;
}

enum SimpleConditionType implements SimpleTypeMixin{
  alwaysOn,
  nodeOn,
  nodeOff,
  varEqual,
  varNotEqual,
  varGreater,
  varLess,
  varGreaterEqual,
  varLessEqual;

  @override
  String toString() {
    return name.i18n;
  }

  @override
  int get argumentLength {
    switch (this) {
      case SimpleConditionType.alwaysOn:
        return 0;
      case SimpleConditionType.nodeOn:
      case SimpleConditionType.nodeOff:
        return 1;
      default:
        return 2;
    }
  }
}

enum SimpleActionType implements SimpleTypeMixin{
  nothing,
  varCreateLocal,
  varCreateGlobal,
  varSet,
  varAdd,
  varSub,
  varMul,
  varDiv;

  @override
  String toString() {
    return name.i18n;
  }

  @override
  int get argumentLength {
    switch (this) {
      case SimpleActionType.nothing:
        return 0;
      default:
        return 2;
    }
  }
}

@freezed
abstract class SimpleCodeBlock with _$SimpleCodeBlock {
  const factory SimpleCodeBlock.action({
    @Default(SimpleActionType.varSet) SimpleActionType type,
    @Default([]) List<ValueType> arguments,
  }) = Action;

  const factory SimpleCodeBlock.condition({
    @Default(SimpleConditionType.nodeOn) SimpleConditionType type,
    @Default([]) List<ValueType> arguments,
  }) = Condition;

  factory SimpleCodeBlock.fromJson(Map<String, dynamic> json) => _$SimpleCodeBlockFromJson(json);

  const SimpleCodeBlock._();

  SimpleCodeBlock generateArguments(){
    if(argumentLength == arguments.length){
      return this;
    }
    var list = List<ValueType>.from(arguments, growable: true);
    if(argumentLength < arguments.length){
      return copyWith(arguments: list.sublist(0, argumentLength));
    }else{
      list.addAll(List.filled(argumentLength - arguments.length, getValueTypeFromDynamicInput(null)));
      return copyWith(arguments: list);
    }
  }

  int get argumentLength {
    if (this is Action) {
      return (type as SimpleActionType).argumentLength;
    } else if (this is Condition) {
      return (type as SimpleConditionType).argumentLength;
    }
    return 0;
  }

  String toCode() {
    if (this is Action) {
      var varName = arguments[0];
      var value = arguments[1];
      switch (type) {
        case SimpleActionType.varCreateLocal:
          return "var $varName = $value";
        case SimpleActionType.varCreateGlobal:
          return "let $varName = $value";
        case SimpleActionType.varSet:
          return "$varName = $value";
        case SimpleActionType.varAdd:
          return "$varName += $value";
        case SimpleActionType.varSub:
          return "$varName -= $value";
        case SimpleActionType.varMul:
          return "$varName *= $value";
        case SimpleActionType.varDiv:
          return "$varName /= $value";
      }
    } else if (this is Condition) {
      var varName = arguments[0];
      var value = arguments[1];
      switch (type) {
        case SimpleConditionType.nodeOn:
          if (!(value.dataUnzip ?? true)) {
            return "not(\$[$varName])";
          }
          return "\$[$varName]";
        case SimpleConditionType.varEqual:
          return "$varName == $value";
        case SimpleConditionType.varNotEqual:
          return "$varName != $value";
        case SimpleConditionType.varGreater:
          return "$varName > $value";
        case SimpleConditionType.varLess:
          return "$varName < $value";
        case SimpleConditionType.varGreaterEqual:
          return "$varName >= $value";
        case SimpleConditionType.varLessEqual:
          return "$varName <= $value";
      }
    }
    return "";
  }
}

@freezed
abstract class SimpleCodes with _$SimpleCodes {
  const factory SimpleCodes({
    @Default([]) List<SimpleCodeBlock> code,
    @Default(SimpleType.action) SimpleType type,
  }) = _SimpleCodes;

  factory SimpleCodes.fromJson(Map<String, dynamic> json) => _$SimpleCodesFromJson(json);

  const SimpleCodes._();

  String toCode() {
    if (type == SimpleType.action) {
      return code.map((e) => e.toCode()).join("\n");
    } else {
      if (code.isEmpty) {
        return "true";
      }
      if (code.length == 1) {
        return code.first.toCode();
      }
      return "and(${code.map((e) => e.toCode()).join(",")})";
    }
  }
}
