import 'dart:math';

import '/variable_db.dart';
import 'value_type.dart';

enum FunctionListEnum {
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
  none(0, hasOutput: false, displayWithColor: false);

  const FunctionListEnum(this.argumentLength,
      {this.hasOutput = true,
      this.hasMultipleArgument = false,
      this.hasSeedInput = false,
      this.displayWithColor = true,
      this.functionName,
      this.customName});

  final int argumentLength;
  final bool hasOutput;
  final bool hasMultipleArgument;
  final bool hasSeedInput;
  final bool displayWithColor;
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

class Functions {
  Map<FunctionListEnum, Function(List<ValueType> input)> functionValueType = {};

  void init() {
    functionValueType[FunctionListEnum.plus] = funcPlus;
    functionValueType[FunctionListEnum.minus] = funcMinus;
    functionValueType[FunctionListEnum.mul] = funcMulti;
    functionValueType[FunctionListEnum.div] = funcDiv;
    functionValueType[FunctionListEnum.mod] = funcMod;
    functionValueType[FunctionListEnum.equal] = funcEqual;
    functionValueType[FunctionListEnum.notEqual] = funcNotEqual;
    functionValueType[FunctionListEnum.bigger] = funcBigger;
    functionValueType[FunctionListEnum.smaller] = funcSmaller;
    functionValueType[FunctionListEnum.biggerEqual] = funcBiggerEqual;
    functionValueType[FunctionListEnum.smallerEqual] = funcSmallerEqual;

    functionValueType[FunctionListEnum.andBit] = funcAndBit;
    functionValueType[FunctionListEnum.orBit] = funcOrBit;
    functionValueType[FunctionListEnum.xorBit] = funcXorBit;
    functionValueType[FunctionListEnum.notBit] = funcNotBit;
    functionValueType[FunctionListEnum.shiftLeftBit] = funcShiftLeftBit;
    functionValueType[FunctionListEnum.shiftRightBit] = funcShiftRightBit;

    functionValueType[FunctionListEnum.floor] = funcFloor;
    functionValueType[FunctionListEnum.round] = funcRound;
    functionValueType[FunctionListEnum.ceil] = funcCeil;
    functionValueType[FunctionListEnum.and] = funcAnd;
    functionValueType[FunctionListEnum.or] = funcOr;
    functionValueType[FunctionListEnum.not] = funcNot;
    functionValueType[FunctionListEnum.random] = funcRandom;
    functionValueType[FunctionListEnum.exist] = (input) =>
        ValueType.bool(VariableDataBase().hasValue(input[0].dataUnzip));
    functionValueType[FunctionListEnum.max] = (input) {
      if(input[0].type.isInt && input[1].type.isInt) {
        return ValueType.int(input[0].dataUnzip > input[1].dataUnzip
            ? input[0].dataUnzip
            : input[1].dataUnzip);
      }
      return ValueType.double(max(input[0].dataUnzip, input[1].dataUnzip));
    };
    functionValueType[FunctionListEnum.min] = (input) {
      if(input[0].type.isInt && input[1].type.isInt) {
        return ValueType.int(input[0].dataUnzip < input[1].dataUnzip
            ? input[0].dataUnzip
            : input[1].dataUnzip);
      }
      return ValueType.double(min(input[0].dataUnzip, input[1].dataUnzip));
    };
    functionValueType[FunctionListEnum.isVisible] = (input) => ValueType.bool(
        VariableDataBase().getValueTypeWrapper(input[0].dataUnzip)?.visible ??
            false);
    functionValueType[FunctionListEnum.loadVariable] = (input) =>
        VariableDataBase().getValueType(input[0].dataUnzip) ??
        const ValueType.nulls();
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
      VariableDataBase()
          .setValue(name, ValueTypeWrapper(ValueType.array(array)));
    };
    functionValueType[FunctionListEnum.length] = (input) {
      var array = input[0].dataUnzip;
      if (array is List) {
        return ValueType.int(array.length);
      }
      return ValueType.int(1);
    };
    functionValueType[FunctionListEnum.createList] = (input) {
      var list = [];
      for (var i in input) {
        list.add(i.dataUnzip);
      }
      return ValueType.array(list);
    };
    functionValueType[FunctionListEnum.createRange] = (input) {
      var start = input[0].dataUnzip;
      var end = input[1].dataUnzip;
      var list = List.generate(end - start, (index) => index + start);
      return ValueType.array(list);
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
    return functionValueType[enumData];
  }

  bool hasFunction(String name) {
    return FunctionListEnum.getFunctionListEnum(name) != FunctionListEnum.none;
  }

  Function(List<ValueType> input)? getFunctionValueType(String name) {
    var enumData = FunctionListEnum.getFunctionListEnum(name);
    return functionValueType[enumData];
  }

  FunctionListEnum getFunctionName(Function function) {
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

  ValueType funcMod(List<ValueType> input) {
    if (input[0].type.isInt && input[1].type.isInt) {
      return ValueType.int(input[0].dataUnzip % input[1].dataUnzip);
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
    return ValueType.bool(input[0].dataUnzip == input[1].dataUnzip);
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

  ValueType funcAndBit(List<ValueType> input) =>
      ValueType.int(input[0].dataUnzip & input[1].dataUnzip);

  ValueType funcOrBit(List<ValueType> input) =>
      ValueType.int(input[0].dataUnzip | input[1].dataUnzip);

  ValueType funcXorBit(List<ValueType> input) =>
      ValueType.int(input[0].dataUnzip ^ input[1].dataUnzip);

  ValueType funcNotBit(List<ValueType> input) =>
      ValueType.int(~input[0].dataUnzip);

  ValueType funcShiftLeftBit(List<ValueType> input) =>
      ValueType.int(input[0].dataUnzip << input[1].dataUnzip);

  ValueType funcShiftRightBit(List<ValueType> input) =>
      ValueType.int(input[0].dataUnzip >> input[1].dataUnzip);

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
