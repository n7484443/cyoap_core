import 'dart:math';

import '/variable_db.dart';
import 'value_type.dart';

enum FunctionListEnum {
  plus(2, displayWithColor: false),
  minus(2, displayWithColor: false),
  mul(2, displayWithColor: false),
  div(2, displayWithColor: false),
  equal(2, displayWithColor: false),
  notEqual(2, displayWithColor: false),
  bigger(2, displayWithColor: false),
  smaller(2, displayWithColor: false),
  biggerEqual(2, displayWithColor: false),
  smallerEqual(2, displayWithColor: false),
  floor(1),
  round(1),
  ceil(1),
  and(2, hasMultipleArgument: true),
  or(2, hasMultipleArgument: true),
  not(1),
  random(1, hasSeedInput: true),
  exist(1),
  isVisible(1),
  loadVariable(1, displayWithColor: false),
  loadArray(2, displayWithColor: false),
  returnCondition(1, displayWithColor: false),
  setLocal(2, hasOutput: false, functionName: 'var'),
  setGlobal(2, hasOutput: false, functionName: 'let'),
  setVariable(2, hasOutput: false, displayWithColor: false),
  setVisible(2, hasOutput: false),
  none(0, hasOutput: false, displayWithColor: false);

  const FunctionListEnum(this.argumentLength,
      {this.hasOutput = true,
      this.hasMultipleArgument = false,
      this.hasSeedInput = false,
      this.displayWithColor = true,
        this.functionName});

  final int argumentLength;
  final bool hasOutput;
  final bool hasMultipleArgument;
  final bool hasSeedInput;
  final bool displayWithColor;
  final String? functionName;

  static FunctionListEnum getFunctionListEnum(String name) {
    return FunctionListEnum.values.firstWhere((element) => element.name == name,
        orElse: () {
      print("unfounded function $name");
      return none;
    });
  }
}

class Functions {
  Map<FunctionListEnum, ValueType Function(List<ValueType> input)>
      functionUnspecifiedFunction = {};

  Map<FunctionListEnum, Function(List<ValueType> input)> functionValueType = {};

  void init() {
    functionUnspecifiedFunction[FunctionListEnum.plus] = funcPlus;
    functionUnspecifiedFunction[FunctionListEnum.minus] = funcMinus;
    functionUnspecifiedFunction[FunctionListEnum.mul] = funcMulti;
    functionUnspecifiedFunction[FunctionListEnum.div] = funcDiv;
    functionUnspecifiedFunction[FunctionListEnum.equal] = funcEqual;
    functionUnspecifiedFunction[FunctionListEnum.notEqual] = funcNotEqual;
    functionUnspecifiedFunction[FunctionListEnum.bigger] = funcBigger;
    functionUnspecifiedFunction[FunctionListEnum.smaller] = funcSmaller;
    functionUnspecifiedFunction[FunctionListEnum.biggerEqual] = funcBiggerEqual;
    functionUnspecifiedFunction[FunctionListEnum.smallerEqual] =
        funcSmallerEqual;

    functionValueType[FunctionListEnum.floor] = funcFloor;
    functionValueType[FunctionListEnum.round] = funcRound;
    functionValueType[FunctionListEnum.ceil] = funcCeil;
    functionValueType[FunctionListEnum.and] = funcAnd;
    functionValueType[FunctionListEnum.or] = funcOr;
    functionValueType[FunctionListEnum.not] = funcNot;
    functionValueType[FunctionListEnum.random] = funcRandom;
    functionValueType[FunctionListEnum.exist] = (input) =>
        ValueType.bool(VariableDataBase().hasValue(input[0].dataUnzip));
    functionValueType[FunctionListEnum.isVisible] = (input) => ValueType.bool(
        VariableDataBase().getValueTypeWrapper(input[0].dataUnzip)?.visible ??
            false);
    functionValueType[FunctionListEnum.loadVariable] = (input) =>
        VariableDataBase().getValueType(input[0].dataUnzip) ??
        const ValueType.nulls();
    functionValueType[FunctionListEnum.loadArray] = (input) {
      var array = input[0].dataUnzip as List;
      var pos = input[1].dataUnzip as int;
      return ValueType.int(array[pos]);
    };
    functionValueType[FunctionListEnum.returnCondition] = (input) => input[0];

    functionValueType[FunctionListEnum.setLocal] = (input) {
      var varName = input[0].dataUnzip as String;
      VariableDataBase()
          .setValue(varName, ValueTypeWrapper(input[1]), isGlobal: false);
    };
    functionValueType[FunctionListEnum.setGlobal] = (input) {
      var varName = input[0].dataUnzip as String;
      VariableDataBase()
          .setValue(varName, ValueTypeWrapper(input[1]), isGlobal: true);
    };
    functionValueType[FunctionListEnum.setVariable] = (input) {
      var varName = input[0].dataUnzip as String;
      var original = VariableDataBase().getValueTypeWrapper(varName);
      if (original != null) {
        var copy = original.copyWith(valueType: input[1]);
        VariableDataBase().setValue(varName, copy);
      }
    };
    functionValueType[FunctionListEnum.setVisible] = (input) {
      var varName = input[0].dataUnzip as String;
      var value = input[1].dataUnzip as bool;
      var original = VariableDataBase().getValueTypeWrapper(varName);
      if (original != null) {
        VariableDataBase().setValue(varName, original.copyWith(visible: value));
      }
    };
  }

  Function? getFunctionFromString(String name) {
    var enumData = FunctionListEnum.getFunctionListEnum(name);
    return getFunction(enumData);
  }

  Function? getFunction(FunctionListEnum enumData) {
    return functionUnspecifiedFunction[enumData] ?? functionValueType[enumData];
  }

  bool isUnspecifiedFunction(String name) {
    var enumData = FunctionListEnum.getFunctionListEnum(name);
    return functionUnspecifiedFunction[enumData] != null;
  }

  bool hasFunction(String name) {
    return FunctionListEnum.getFunctionListEnum(name) != FunctionListEnum.none;
  }

  Function(List<ValueType> input)? getFunctionValueType(String name) {
    var enumData = FunctionListEnum.getFunctionListEnum(name);
    return functionUnspecifiedFunction[enumData] ?? functionValueType[enumData];
  }

  FunctionListEnum getFunctionName(Function function) {
    for (var key in functionUnspecifiedFunction.keys) {
      if (functionUnspecifiedFunction[key] == function) {
        return key;
      }
    }
    for (var key in functionValueType.keys) {
      if (functionValueType[key] == function) {
        return key;
      }
    }
    return FunctionListEnum.none;
  }

  ValueType funcFloor(List<ValueType> input) {
    if (input[0].type.isNum) {
      return ValueType.int((input[0].dataUnzip).floor());
    }
    return const ValueType.nulls();
  }

  ValueType funcRound(List<ValueType> input) {
    if (input[0].type.isNum) {
      return ValueType.int((input[0].dataUnzip).round());
    }
    return const ValueType.nulls();
  }

  ValueType funcCeil(List<ValueType> input) {
    if (input[0].type.isNum) {
      return ValueType.int((input[0].dataUnzip).ceil());
    }
    return const ValueType.nulls();
  }

  ValueType funcPlus(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return ValueType.int(input[0].dataUnzip + input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return ValueType.double(input[0].dataUnzip + input[1].dataUnzip);
    } else {
      return ValueType.string(input[0].data + input[1].data);
    }
  }

  ValueType funcMinus(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return ValueType.int(input[0].dataUnzip - input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return ValueType.double(input[0].dataUnzip - input[1].dataUnzip);
    }
    return const ValueType.nulls();
  }

  ValueType funcMulti(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return ValueType.int(input[0].dataUnzip * input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return ValueType.double(input[0].dataUnzip * input[1].dataUnzip);
    }
    return const ValueType.nulls();
  }

  ValueType funcDiv(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return ValueType.int(input[0].dataUnzip ~/ input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return ValueType.double(input[0].dataUnzip / input[1].dataUnzip);
    }
    return const ValueType.nulls();
  }

  var epsilon = 0.000001;

  ValueType funcEqual(List<ValueType> input) {
    if (input[0].type.isNotIntOne(input[1].type)) {
      return ValueType.bool(
          (input[0].dataUnzip - input[1].dataUnzip as num).abs() <= epsilon);
    }
    return ValueType.bool(input[0].data == input[1].data);
  }

  ValueType funcNotEqual(List<ValueType> input) =>
      ValueType.bool(!funcEqual(input).dataUnzip);

  ValueType funcBigger(List<ValueType> input) {
    if (input[0].type.isNum && input[1].type.isNum) {
      return ValueType.bool(input[0].dataUnzip > input[1].dataUnzip);
    }
    return const ValueType.bool(false);
  }

  ValueType funcSmaller(List<ValueType> input) {
    if (input[0].type.isNum && input[1].type.isNum) {
      return ValueType.bool(input[0].dataUnzip < input[1].dataUnzip);
    }
    return const ValueType.bool(false);
  }

  ValueType funcBiggerEqual(List<ValueType> input) =>
      ValueType.bool(!funcSmaller(input).dataUnzip);

  ValueType funcSmallerEqual(List<ValueType> input) =>
      ValueType.bool(!funcBigger(input).dataUnzip);

  ValueType funcRandom(List<ValueType> input) {
    int? seed = input.length == 1 ? null : input.last.dataUnzip as int;

    if (input.first.type.isInt) {
      return ValueType.int(Random(seed).nextInt(input[0].dataUnzip as int));
    }
    return ValueType.bool(Random(seed).nextBool());
  }

  ValueType funcAnd(List<ValueType> input) {
    for (var i in input) {
      if (!(i.type.isBool && i.dataUnzip)) {
        return const ValueType.bool(false);
      }
    }
    return const ValueType.bool(true);
  }

  ValueType funcOr(List<ValueType> input) {
    for (var i in input) {
      if (i.type.isBool && i.dataUnzip) {
        return const ValueType.bool(true);
      }
    }
    return const ValueType.bool(false);
  }

  ValueType funcNot(List<ValueType> input) {
    if (input[0].type.isBool) {
      return ValueType.bool(!input[0].dataUnzip);
    }
    return const ValueType.bool(false);
  }
}
