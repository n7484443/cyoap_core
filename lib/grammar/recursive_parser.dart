import 'dart:convert';

import 'analyser.dart';
import 'function_list.dart';
import 'value_type.dart';

abstract class RecursiveUnit {
  RecursiveUnit? parent;
  ValueType body;

  // 함수 or 값
  RecursiveUnit(this.body);

  Map<String, dynamic> toJson();

  void add(RecursiveUnit unit) {
    unit.parent = this;
  }

  List<RecursiveUnit> get child => [];

  @override
  String toString() {
    return jsonEncode(toJson());
  }

  //return and output
  List<String> toByteCode();
}

enum FunctionType {
  defaultFunction,
  infixFunction, // front
  prefixFunction, //middle
}

class RecursiveFunction extends RecursiveUnit {
  FunctionType functionType;

  RecursiveFunction(super.body,
      {this.functionType = FunctionType.defaultFunction});

  List<RecursiveUnit> childNode = List.empty(growable: true);

  @override
  List<RecursiveUnit> get child => childNode;

  @override
  void add(RecursiveUnit unit) {
    super.add(unit);
    childNode.add(unit);
  }

  @override
  Map<String, dynamic> toJson() => {
        'childNode': childNode,
        'value': body.toString(),
      };

  @override
  List<String> toByteCode() {
    if (body.data.isEmpty) return [];
    if (body.type.isString && body.data == "doLines") {
      return child.expand((e) => e.toByteCode()).toList();
    }
    if (body.type.isString && body.data == "returnCondition") {
      return [...child[0].toByteCode(), "return"];
    }
    if (body.type.isString && body.data == "if") {
      var condition = child[0].toByteCode();
      var ifCode = child[1].toByteCode();
      if (child.length == 3) {
        var elseCode = child[2].toByteCode();
        return [
          ...condition,
          "if_goto ${ifCode.length + 1}",
          ...ifCode,
          "goto ${elseCode.length}",
          ...elseCode,
        ];
      }
      return [
        ...condition,
        "if_goto ${ifCode.length}",
        ...ifCode,
      ];
    }
    if (body.type.isString && body.data == "for") {
      var leftSide = child[0];
      var variable = leftSide.child[0].child[0].body.dataUnzip;
      var array = leftSide.child[1].toByteCode();

      var rightSide = child[1];
      var loopCode = rightSide.toByteCode();
      var loopVariable = "__loop_$hashCode";
      var arrayVariable = "__array_$hashCode";
      var arrayLengthVariable = "__array_length_$hashCode";
      List<String> setup = [
        'push "$loopVariable"',
        "push 0",
        "setLocal",
        'push "$arrayVariable"',
        ...array,
        "setLocal",
        'push "$arrayLengthVariable"',
        'push "$arrayVariable"',
        "loadVariable",
        'length',
        "setLocal",
        'push "$variable"',
        'push "$arrayVariable"',
        "loadVariable",
        'push "$loopVariable"',
        "loadVariable",
        "loadArray",
        "setLocal",
      ];
      List<String> updateFromList = [
        'push "$variable"',
        'push "$arrayVariable"',
        "loadVariable",
        'push "$loopVariable"',
        "loadVariable",
        "loadArray",
        "setVariable",
      ];
      List<String> check = [
        'push "$loopVariable"',
        "loadVariable",
        'push "$arrayLengthVariable"',
        "loadVariable",
        'smaller',
      ];
      List<String> update = [
        'push "$loopVariable"',
        'push "$loopVariable"',
        "loadVariable",
        "push 1",
        "plus",
        "setVariable",
      ];
      var loopData = [];
      for (int i = 0; i < loopCode.length; i++) {
        if (loopCode[i] == 'continue') {
          loopData.add('goto ${loopCode.length - i - 1}');
        } else if (loopCode[i] == 'break') {
          loopData.add('goto ${loopCode.length - i + update.length + 1}');
        } else {
          loopData.add(loopCode[i]);
        }
      }
      return [
        ...setup,
        ...check,
        "if_goto ${updateFromList.length + loopData.length + update.length + 1}",
        ...updateFromList,
        ...loopData,
        ...update,
        "goto -${check.length + 1 + update.length + loopData.length + updateFromList.length + 1}"
      ];
    }
    if (body.type.isString && body.data == "to") {
      var rangeStart = child[0].toByteCode();
      var rangeEnd = child[1].toByteCode();
      return [...rangeStart, ...rangeEnd, "createRange"];
    }
    if (Analyser().functionList.hasFunction(body.data)) {
      var funcEnum = FunctionListEnum.getFunctionListEnum(body.data);
      List<String> output = child.expand((e) => e.toByteCode()).toList();
      if (funcEnum.hasMultipleArgument) {
        return [...output, "${funcEnum.name} ${child.length}"];
      }
      return [...output, funcEnum.name];
    }
    return [];
  }
}

class RecursiveData extends RecursiveUnit {
  RecursiveData(super.body);

  @override
  Map<String, dynamic> toJson() => {
        'value': body.toString(),
      };

  @override
  List<String> toByteCode() {
    if (body.data.isEmpty) return [];
    if (body.type.isString) {
      if (body.data == "break") {
        return ["break"];
      }
      if (body.data == "continue") {
        return ["continue"];
      }
      return ["push \"${body.data}\""];
    }
    return ["push ${body.data}"];
  }
}
