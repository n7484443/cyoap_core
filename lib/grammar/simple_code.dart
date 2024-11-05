import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_type.dart';

part 'simple_code.freezed.dart';

part 'simple_code.g.dart';

enum SimpleType { action, condition }

enum SimpleConditionType {
  nodeOnOff,
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
}

enum SimpleActionType {
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
}

@freezed
class SimpleCodeBlock with _$SimpleCodeBlock {
  const factory SimpleCodeBlock.action({
    @Default(SimpleActionType.varSet) SimpleActionType type,
    @Default("") String varName,
    @Default(null) ValueType? value,
  }) = Action;

  const factory SimpleCodeBlock.condition({
    @Default(SimpleConditionType.nodeOnOff) SimpleConditionType type,
    @Default("") String varName,
    @Default(null) String? anotherVarName,
    @Default(ValueType(data: 'true', type: DataType.bools)) ValueType? value,
  }) = Condition;

  factory SimpleCodeBlock.fromJson(Map<String, dynamic> json) => _$SimpleCodeBlockFromJson(json);

  const SimpleCodeBlock._();

  String toCode() {
    if (this is Action) {
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
      var conditionConvert = this as Condition;
      String rightSide = conditionConvert.anotherVarName ?? value?.data ?? "true";
      switch (type) {
        case SimpleConditionType.nodeOnOff:
          if (!(value?.dataUnzip ?? true)) {
            return "not(\$[$varName])";
          }
          return "\$[$varName]";
        case SimpleConditionType.varEqual:
          return "$varName == $rightSide";
        case SimpleConditionType.varNotEqual:
          return "$varName != $rightSide";
        case SimpleConditionType.varGreater:
          return "$varName > $rightSide";
        case SimpleConditionType.varLess:
          return "$varName < $rightSide";
        case SimpleConditionType.varGreaterEqual:
          return "$varName >= $rightSide";
        case SimpleConditionType.varLessEqual:
          return "$varName <= $rightSide";
      }
    }
    return "";
  }
}

@freezed
class SimpleCodes with _$SimpleCodes {
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
