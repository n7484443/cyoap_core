import 'dart:math';

import '/variable_db.dart';
import 'value_type.dart';

enum FunctionListEnum {
  dup(1),
  plus(2, displayWithColor: false, customName: '+'),
  minus(2, displayWithColor: false, customName: '-'),
  mul(2, displayWithColor: false, customName: '*'),
  div(2, displayWithColor: false, customName: '/'),
  mod(2, displayWithColor: false, customName: '%'),
  equal(2, displayWithColor: false, customName: '=='),
  notEqual(2, displayWithColor: false, customName: '!='),
  bigger(2, displayWithColor: false, customName: '>'),
  smaller(2, displayWithColor: false, customName: '<'),
  biggerEqual(2, displayWithColor: false, customName: '>='),
  smallerEqual(2, displayWithColor: false, customName: '<='),
  andBit(2, displayWithColor: false, customName: '&'),
  orBit(2, displayWithColor: false, customName: '|'),
  xorBit(2, displayWithColor: false, customName: '^'),
  notBit(1, displayWithColor: false, customName: '~'),
  shiftLeftBit(2, displayWithColor: false, customName: '<<'),
  shiftRightBit(2, displayWithColor: false, customName: '>>'),
  floor(1),
  round(1),
  ceil(1),
  and(2, hasMultipleArgument: true),
  or(2, hasMultipleArgument: true),
  not(1),
  random(1, hasSeedInput: true),
  exist(1),
  max(2),
  min(2),
  isVisible(1),
  loadVariable(1, displayWithColor: false),
  loadArray(2, displayWithColor: false),
  setListElement(3, displayWithColor: false),
  length(1),
  createList(0, hasMultipleArgument: true),
  createRange(2),
  returnCondition(1, displayWithColor: false),
  setLocal(2, hasOutput: false, functionName: 'var'),
  setGlobal(2, hasOutput: false, functionName: 'let'),
  setVariable(2, hasOutput: false, displayWithColor: false),
  setVisible(2, hasOutput: false),
  showDialog(1, hasOutput: false, communicateOutOfSandbox: true),
  none(0, hasOutput: false, displayWithColor: false);

  const FunctionListEnum(this.argumentLength,
      {this.hasOutput = true,
      this.hasMultipleArgument = false,
      this.hasSeedInput = false,
      this.displayWithColor = true,
      this.communicateOutOfSandbox = false,
      this.functionName,
      this.customName});

  final int argumentLength;
  final bool hasOutput;
  final bool hasMultipleArgument;
  final bool hasSeedInput;
  final bool displayWithColor;
  final bool communicateOutOfSandbox;
  final String? functionName;
  final String? customName;

  static FunctionListEnum getFunctionListEnum(String name) {
    return FunctionListEnum.values.firstWhere(
        (element) => element.name == name || element.customName == name,
        orElse: () {
      if (name != 'if' && name != 'for') {
        print("unfounded function $name");
      }
      return none;
    });
  }
}

const epsilon = 1e-6;

extension FunctionListEnumExtension on FunctionListEnum {
  Function? get function {
    switch (this) {
      case FunctionListEnum.dup:
        return funcDup;
      case FunctionListEnum.plus:
        return funcPlus;
      case FunctionListEnum.minus:
        return funcMinus;
      case FunctionListEnum.mul:
        return funcMulti;
      case FunctionListEnum.div:
        return funcDiv;
      case FunctionListEnum.mod:
        return funcMod;

      case FunctionListEnum.equal:
        return funcEqual;
      case FunctionListEnum.notEqual:
        return funcNotEqual;
      case FunctionListEnum.bigger:
        return funcBigger;
      case FunctionListEnum.smaller:
        return funcSmaller;
      case FunctionListEnum.biggerEqual:
        return funcBiggerEqual;
      case FunctionListEnum.smallerEqual:
        return funcSmallerEqual;

      case FunctionListEnum.andBit:
        return funcAndBit;
      case FunctionListEnum.orBit:
        return funcOrBit;
      case FunctionListEnum.xorBit:
        return funcXorBit;
      case FunctionListEnum.notBit:
        return funcNotBit;
      case FunctionListEnum.shiftLeftBit:
        return funcShiftLeftBit;
      case FunctionListEnum.shiftRightBit:
        return funcShiftRightBit;

      case FunctionListEnum.floor:
        return funcFloor;
      case FunctionListEnum.round:
        return funcRound;
      case FunctionListEnum.ceil:
        return funcCeil;

      case FunctionListEnum.and:
        return funcAnd;
      case FunctionListEnum.or:
        return funcOr;
      case FunctionListEnum.not:
        return funcNot;
      case FunctionListEnum.random:
        return funcRandom;
      case FunctionListEnum.max:
        return funcMax;
      case FunctionListEnum.min:
        return funcMin;
      default:
        return null;
    }
  }

  List<ValueType> funcDup(List<ValueType> input) {
    return [input[0], input[0]];
  }

  ValueType funcPlus(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip + input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip + input[1].dataUnzip);
    } else {
      return getValueTypeFromDynamicInput(input[0].data + input[1].data);
    }
  }

  ValueType funcMinus(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip - input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip - input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcMulti(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip * input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip * input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcDiv(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip ~/ input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip / input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcMod(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip % input[1].dataUnzip);
    } else if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip / input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcEqual(List<ValueType> input) {
    if (input[0].type.isNotIntOne(input[1].type)) {
      return getValueTypeFromDynamicInput(
          (input[0].dataUnzip - input[1].dataUnzip as num).abs() <= epsilon);
    }
    return getValueTypeFromDynamicInput(
        input[0].dataUnzip == input[1].dataUnzip);
  }

  ValueType funcNotEqual(List<ValueType> input) =>
      getValueTypeFromDynamicInput(!funcEqual(input).dataUnzip);

  ValueType funcBigger(List<ValueType> input) {
    if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip > input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(false);
  }

  ValueType funcSmaller(List<ValueType> input) {
    if (input[0].type.isNum && input[1].type.isNum) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip < input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(false);
  }

  ValueType funcBiggerEqual(List<ValueType> input) =>
      getValueTypeFromDynamicInput(!funcSmaller(input).dataUnzip);

  ValueType funcSmallerEqual(List<ValueType> input) =>
      getValueTypeFromDynamicInput(!funcBigger(input).dataUnzip);

  ValueType funcAndBit(List<ValueType> input) =>
      getValueTypeFromDynamicInput(input[0].dataUnzip & input[1].dataUnzip);

  ValueType funcOrBit(List<ValueType> input) =>
      getValueTypeFromDynamicInput(input[0].dataUnzip | input[1].dataUnzip);

  ValueType funcXorBit(List<ValueType> input) =>
      getValueTypeFromDynamicInput(input[0].dataUnzip ^ input[1].dataUnzip);

  ValueType funcNotBit(List<ValueType> input) =>
      getValueTypeFromDynamicInput(~input[0].dataUnzip);

  ValueType funcShiftLeftBit(List<ValueType> input) =>
      getValueTypeFromDynamicInput(input[0].dataUnzip << input[1].dataUnzip);

  ValueType funcShiftRightBit(List<ValueType> input) =>
      getValueTypeFromDynamicInput(input[0].dataUnzip >> input[1].dataUnzip);

  ValueType funcFloor(List<ValueType> input) {
    if (input[0].type.isNum) {
      return getValueTypeFromDynamicInput((input[0].dataUnzip).floor());
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcRound(List<ValueType> input) {
    if (input[0].type.isNum) {
      return getValueTypeFromDynamicInput((input[0].dataUnzip).round());
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcCeil(List<ValueType> input) {
    if (input[0].type.isNum) {
      return getValueTypeFromDynamicInput((input[0].dataUnzip).ceil());
    }
    return getValueTypeFromDynamicInput(null);
  }

  ValueType funcAnd(List<ValueType> input) {
    for (var i in input) {
      if (!(i.type.isBool && i.dataUnzip)) {
        return getValueTypeFromDynamicInput(false);
      }
    }
    return getValueTypeFromDynamicInput(true);
  }

  ValueType funcOr(List<ValueType> input) {
    for (var i in input) {
      if (i.type.isBool && i.dataUnzip) {
        return getValueTypeFromDynamicInput(true);
      }
    }
    return getValueTypeFromDynamicInput(false);
  }

  ValueType funcNot(List<ValueType> input) {
    if (input[0].type.isBool) {
      return getValueTypeFromDynamicInput(!input[0].dataUnzip);
    }
    return getValueTypeFromDynamicInput(false);
  }

  ValueType funcRandom(List<ValueType> input) {
    int? seed = input.length == 1 ? null : input.last.dataUnzip as int;

    if (input.first.type.isInt) {
      return getValueTypeFromDynamicInput(
          Random(seed).nextInt(input[0].dataUnzip as int));
    }
    return getValueTypeFromDynamicInput(Random(seed).nextBool());
  }

  ValueType funcMax(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip > input[1].dataUnzip
              ? input[0].dataUnzip
              : input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(
        max(input[0].dataUnzip as double, input[1].dataUnzip as double));
  }

  ValueType funcMin(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return getValueTypeFromDynamicInput(
          input[0].dataUnzip < input[1].dataUnzip
              ? input[0].dataUnzip
              : input[1].dataUnzip);
    }
    return getValueTypeFromDynamicInput(
        min(input[0].dataUnzip as double, input[1].dataUnzip as double));
  }
}

class Functions {
  Map<FunctionListEnum, Function(List<ValueType> input)> functionValueType = {};
  Map<FunctionListEnum, Function(List<dynamic> input)>
      functionValueTypeOutOfSandbox = {};
  bool needConvertJson = false;

  void init() {
    functionValueType[FunctionListEnum.exist] = (input) =>
        getValueTypeFromDynamicInput(
            VariableDataBase().hasValue(input[0].dataUnzip));
    functionValueType[FunctionListEnum.isVisible] = (input) =>
        getValueTypeFromDynamicInput(VariableDataBase()
                .getValueTypeWrapper(input[0].dataUnzip)
                ?.visible ??
            false);
    functionValueType[FunctionListEnum.loadVariable] = (input) =>
        VariableDataBase().getValueType(input[0].dataUnzip) ??
        getValueTypeFromDynamicInput(null);
    functionValueType[FunctionListEnum.loadArray] = (input) {
      var array = input[0].dataUnzip as List<ValueType>;
      var pos = input[1].dataUnzip as int;
      return array[pos];
    };
    functionValueType[FunctionListEnum.setListElement] = (input) {
      var name = input[0].dataUnzip as String;
      var pos = input[1].dataUnzip as int;
      var array = VariableDataBase().getValueType(name)?.dataUnzip as List;
      array[pos] = input[2];
      VariableDataBase().setValue(name,
          ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(array)), ValueTypeLocation.auto);
    };
    functionValueType[FunctionListEnum.length] = (input) {
      var array = input[0].dataUnzip;
      if (array is List) {
        return getValueTypeFromDynamicInput(array.length);
      }
      return getValueTypeFromDynamicInput(1);
    };
    functionValueType[FunctionListEnum.createList] = (input) {
      var list = [];
      for (var i in input) {
        list.add(i.dataUnzip);
      }
      return getValueTypeFromDynamicInput(list);
    };
    functionValueType[FunctionListEnum.createRange] = (input) {
      var start = input[0].dataUnzip;
      var end = input[1].dataUnzip;
      var list = List.generate(end - start, (index) => index + start);
      return getValueTypeFromDynamicInput(list);
    };
    functionValueType[FunctionListEnum.returnCondition] = (input) => input[0];

    functionValueType[FunctionListEnum.setLocal] = (input) {
      var varName = input[0].dataUnzip as String;
      VariableDataBase().setValue(
          varName, ValueTypeWrapper(valueType: input[1]), ValueTypeLocation.auto);
    };
    functionValueType[FunctionListEnum.setGlobal] = (input) {
      var varName = input[0].dataUnzip as String;
      VariableDataBase().setValue(
          varName, ValueTypeWrapper(valueType: input[1]), ValueTypeLocation.global);
    };
    functionValueType[FunctionListEnum.setVariable] = (input) {
      var varName = input[0].dataUnzip as String;
      var original = VariableDataBase().getValueTypeWrapper(varName);
      if (original != null) {
        var copy = original.copyWith(valueType: input[1]);
        VariableDataBase().setValue(varName, copy, ValueTypeLocation.auto);
      }
    };
    functionValueType[FunctionListEnum.setVisible] = (input) {
      var varName = input[0].dataUnzip as String;
      var value = input[1].dataUnzip as bool;
      var original = VariableDataBase().getValueTypeWrapper(varName);
      if (original != null) {
        VariableDataBase().setValue(
            varName, original.copyWith(visible: value), ValueTypeLocation.auto);
      }else{
        print("not found $varName");
      }
    };
  }

  Function? getFunction(FunctionListEnum enumData) {
    return functionValueType[enumData] ??
        functionValueTypeOutOfSandbox[enumData];
  }

  bool hasFunction(String name) {
    return FunctionListEnum.getFunctionListEnum(name) != FunctionListEnum.none;
  }
}
