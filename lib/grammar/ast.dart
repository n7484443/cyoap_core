import 'package:petitparser/petitparser.dart';
import 'analyser.dart';
import 'analyser_const.dart';
import 'function_list.dart';
import 'token_data.dart';

class AST {
  static int jumpCount = 0;
  Token<TokenData>? data;
  List<AST> child = [];

  AST(dynamic input) {
    if (input is Token<TokenData>) {
      data = input;
      return;
    }
    if (input is List) {
      if (input.isEmpty) {
        return;
      }
      var i = 0;
      if (input[0] is Token<TokenData>) {
        data = input[0];
        i = 1;
      }
      for (i; i < input.length; i++) {
        if (input[i] == null) {
          continue;
        }
        child.add(AST(input[i]));
      }
      return;
    }
    print("something wrong $input | ${input.runtimeType}");
  }

  Map<String, dynamic> toJson() {
    if (data == null) {
      return {"child": child.map((e) => e.toJson()).toList()};
    }
    return {
      "data": data?.value.toJson(),
      "child": child.map((e) => e.toJson()).toList()
    };
  }

  TokenData get body => data!.value;

  List<String> compile() {
    jumpCount = 0;
    var out = _toByteCode();
    jumpCount = 0;

    final pattern = RegExp(r"\d+:");
    final number = RegExp(r"\d");

    var jumpList = List.filled(65535, -1);
    for (int i = 0; i < out.length; i++) {
      var line = out[i];
      if (line.startsWith(pattern)) {
        var num = int.parse(line.substring(0, line.indexOf(":")));
        jumpList[num] = i;
        out[i] = line.substring(line.indexOf(":") + 1);
      }
    }
    for (int i = 0; i < out.length; i++) {
      var line = out[i];
      if (line.contains("goto")) {
        var replacementIndex = line.lastIndexOf(number);
        var num = int.parse(line.substring(line.lastIndexOf(number)).trim());
        out[i] =
        "${line.substring(0, replacementIndex).trimRight()} ${jumpList[num]}";
      }
    }
    return out;
  }

  List<String> _toByteCode() {
    if (data == null) return [];
    switch (body.type) {
      case AnalyserConst.setter:
        List<String> output = child.expand((e) => e._toByteCode()).toList();
        switch (body.dataString) {
          case "var":
            return [...output, "setLocal"];
          case "let":
            return [...output, "setGlobal"];
          default:
            return [...output, "setVariable"];
        }
      case AnalyserConst.lines:
        return child.expand((e) => e._toByteCode()).toList();
      case AnalyserConst.loadAddress:
        return ["push \"${body.dataString}\"", "loadVariable"];
      case AnalyserConst.strings:
        return ["push \"${body.dataString}\""];
      case AnalyserConst.doubles:
      case AnalyserConst.ints:
      case AnalyserConst.bools:
        return ["push ${body.dataString}"];
      case AnalyserConst.keywordBreak:
        return ["break"];
      case AnalyserConst.keywordContinue:
        return ["continue"];
      case AnalyserConst.keywordReturn:
        return [...child[0]._toByteCode(), "return"];
      case AnalyserConst.keywordIf:
        var condition = child[0]._toByteCode();
        var ifCode = child[1]._toByteCode();
        if (child.length == 3) {
          var elseCode = child[2]._toByteCode();
          var jumpCountElseStart = jumpCount++;
          var jumpCountEnd = jumpCount++;
          return [
            ...condition,
            "if_goto $jumpCountElseStart",
            ...ifCode,
            "goto $jumpCountEnd",
            "$jumpCountElseStart:",
            ...elseCode,
            "$jumpCountEnd:",
          ];
        }
        var jumpCountEnd = jumpCount++;
        return [
          ...condition,
          "if_goto $jumpCountEnd",
          ...ifCode,
          "$jumpCountEnd:",
        ];
      case AnalyserConst.keywordFor:
        var loopCondition = child[0];
        var variable = loopCondition.child[0].body.dataString;
        var array = loopCondition.child[1]._toByteCode();

        var loopBlock = child[1];
        var loopCode = loopBlock._toByteCode();
        var loopVariable = "__loop_$hashCode";
        var arrayVariable = "__array_$hashCode";
        var arrayLengthVariable = "__array_length_$hashCode";
        var jumpLoopStart = jumpCount++;
        var jumpLoopUpdate = jumpCount++;
        var jumpLoopEnd = jumpCount++;
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
            loopData.add('goto $jumpLoopUpdate');
          } else if (loopCode[i] == 'break') {
            loopData.add('goto $jumpLoopEnd');
          } else {
            loopData.add(loopCode[i]);
          }
        }
        return [
          ...setup,
          "$jumpLoopStart:",
          ...check,
          "if_goto $jumpLoopEnd",
          ...updateFromList,
          ...loopData,
          "$jumpLoopUpdate:",
          ...update,
          "goto $jumpLoopStart",
          "$jumpLoopEnd:"
        ];
      case AnalyserConst.keywordTo:
        var rangeStart = child[0]._toByteCode();
        var rangeEnd = child[1]._toByteCode();
        return [...rangeStart, ...rangeEnd, "createRange"];
      case AnalyserConst.lists:
        List<String> output = child.expand((e) => e._toByteCode()).toList();
        return [...output, "createList ${output.length}"];
      case AnalyserConst.function:
        switch (body.data) {
          default:
            if (Analyser().functionList.hasFunction(body.data)) {
              var funcEnum = FunctionListEnum.getFunctionListEnum(body.data);
              List<String> output =
              child.expand((e) => e._toByteCode()).toList();
              if (funcEnum.hasMultipleArgument) {
                return [...output, "${funcEnum.name} ${child.length}"];
              }
              return [...output, funcEnum.name];
            }
        }
      case AnalyserConst.assignExtension:
        return [
          ...child[0]._toByteCode(),
          "dup",
          "loadVariable",
          ...child[1]._toByteCode(),
          body.dataString.replaceAll("=", ""),
          "setVariable"
        ];
      default:
        break;
    }
    return [];
  }

  void optimizeTree(){
    _optimizeBool();
    for (var element in child) {
      element.optimizeTree();
    }
  }

  void _optimizeBool() {
    if (data == null) {
      return;
    }
    if (data!.value.type == AnalyserConst.function && data!.value.data == "==") {
      var left = child[0].data!.value;
      var right = child[1].data!.value;
      if(left.type == AnalyserConst.bools && right.type == AnalyserConst.bools){
        data = Token(TokenData(AnalyserConst.bools, dataString: left.data == right.data ? "true" : "false"), data!.buffer, data!.start, data!.stop);
        child = [];
        return;
      }
      if(left.type == AnalyserConst.bools){
        if(left.data){
          data = child[1].data;
          child = child[1].child;
          return;
        }else{
          data = Token(TokenData(AnalyserConst.function, dataString: "not"), data!.buffer, data!.start, data!.stop);
          child = [child[1]];
          return;
        }

      }
      if(right.type == AnalyserConst.bools){
        if(right.data){
          data = child[0].data;
          child = child[0].child;
          return;
        }else{
          data = Token(TokenData(AnalyserConst.function, dataString: "not"), data!.buffer, data!.start, data!.stop);
          child = [child[0]];
          return;
        }
      }

    }
  }
}