import 'dart:convert';
import 'dart:math';

import 'package:cyoap_core/choiceNode/choice_node.dart';

import '../option.dart';
import 'function_list.dart';
import 'lexical_analyser.dart';
import 'semantic_analyser.dart';
import 'value_type.dart';

class Analyser {
  Analyser._init() {
    functionList.init();
  }

  static final Analyser _instance = Analyser._init();
  List<String> errorList = [];

  factory Analyser() {
    return _instance;
  }

  LexicalAnalyser lexicalAnalyser = LexicalAnalyser();
  SemanticAnalyser semanticAnalyser = SemanticAnalyser();
  Functions functionList = Functions();

  AST? toAst(String? codeInput,
      {String pos = "", required bool isCondition, isDebug = false}) {
    if (codeInput == null || codeInput.trim().isEmpty) return null;
    var tokens =
        lexicalAnalyser.analyse(codeInput, isCondition, isDebug: isDebug);
    return semanticAnalyser.analyseLines(tokens, optimize: false);
  }

  List<String> analyseMultiLine(String? codeInput,
      {String pos = "", isDebug = false}) {
    if (codeInput == null || codeInput.trim().isEmpty) return [];
    try {
      var out = toAst(codeInput, isCondition: false, isDebug: isDebug)!;
      return out.compile();
    } catch (e, stackTrace) {
      addError("$pos, $e", stackTrace);
    }
    return [];
  }

  List<String> analyseSingleLine(String? codeInput,
      {String pos = "", isDebug = false}) {
    if (codeInput == null || codeInput.trim().isEmpty) return [];
    try {
      var out = toAst(codeInput, isCondition: true, isDebug: isDebug)!;
      return out.compile();
    } catch (e, stackTrace) {
      addError("$pos, $e", stackTrace);
    }
    return [];
  }

  dynamic run(List<String> unitList, {String pos = "", int? seedInput}) {
    if (unitList.isEmpty) return null;
    int seed = seedInput ?? Random().nextInt(seedMax);
    try {
      List<ValueType> stack = [];
      for (int line = 0; line < unitList.length; line++) {
        var code = unitList[line];
        if (Option().isDebugMode && Option().enableCode) {
          print("$line $stack $code");
        }
        if (code.trim().isEmpty) {
          continue;
        }
        var spaceIndex = code.indexOf(" ");
        spaceIndex = spaceIndex == -1 ? code.length : spaceIndex;
        var opCode = code.substring(0, spaceIndex);
        var argument = spaceIndex < code.length
            ? code.substring(spaceIndex + 1, code.length)
            : null;
        if (opCode == "push") {
          stack.add(getValueTypeFromStringInput(argument!));
          continue;
        }
        if (opCode == "return") {
          var out = stack.removeLast().dataUnzip;
          return out;
        }
        if (opCode == "if_goto") {
          if (!(stack.removeLast().dataUnzip as bool)) {
            line = int.parse(argument!);
          }
          continue;
        }
        if (opCode == "goto") {
          line = int.parse(argument!);
          continue;
        }

        var funcEnum = FunctionListEnum.getFunctionListEnum(opCode);
        var func = funcEnum.function ?? functionList.getFunction(funcEnum);
        if (func == null) {
          addError("$pos, $opCode is not a function", StackTrace.current);
          return null;
        }
        //기본적으로 funcEnum.argumentLength 개의 인자를 사용함. code[1] 가 존재시 인자의 개수로 사용
        var argCount = funcEnum.argumentLength;
        if (argument != null && funcEnum.hasMultipleArgument) {
          argCount = int.parse(argument);
        }
        List<ValueType> argumentList = [];
        for (int i = 0; i < argCount; i++) {
          argumentList.add(stack.removeLast());
        }
        argumentList = argumentList.reversed.toList();
        if (funcEnum.hasSeedInput) {
          argumentList.add(ValueType.int(seed));
          seed += 1;
        }
        Object? out;
        if (funcEnum.communicateOutOfSandbox && functionList.needConvertJson) {
          out = ValueType.fromJson(func(jsonEncode(argumentList)));
        } else {
          out = func(argumentList);
        }
        if (out == null) {
          continue;
        }
        if(out is List){
          stack.addAll(out as List<ValueType>);
        } else {
          stack.add(out as ValueType);
        }
      }
    } catch (e, stackTrace) {
      addError("$pos, $e", stackTrace);
    }
    return null;
  }

  void addError(String str, StackTrace stackTrace) {
    if (!errorList.contains(str)) {
      print("$str $stackTrace");
      errorList.add(str);
    }
  }

  void clearError() {
    errorList.clear();
  }
}
