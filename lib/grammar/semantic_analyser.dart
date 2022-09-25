import 'analyser_const.dart';
import 'recursive_parser.dart';
import 'token.dart';
import 'value_type.dart';

class SemanticAnalyser {
  static const int blockEndSign = -1;
  static const int functionEndSign = -2;

  bool checkBlock(RecursiveUnit input) {
    return input.body.data != "if" && input.body.data != "for";
  }

  ///-1:block end
  void abstractSyntaxTreeAnalyse(RecursiveUnit mother, List<Token> tokens) {
    List<RecursiveUnit> stack = [mother];
    for (var pos = 0; pos < tokens.length; pos++) {
      var token = tokens[pos];
      switch (token.type) {
        case AnalyserConst.functionUnspecified:
          RecursiveFunction sub =
              RecursiveFunction(ValueType.string(token.data));
          var deleted = stack.removeLast();
          if (token.data == "setLocal" ||
              token.data == "setGlobal" ||
              token.data == "setVariable") {
            sub.add(RecursiveData(deleted.child[0].body));
          } else {
            sub.add(deleted);
          }
          stack.add(sub);
          break;
        case AnalyserConst.blockStart:
          while (checkBlock(stack.last)) {
            var last = stack.removeLast();
            stack.last.add(last);
          }
          RecursiveFunction sub =
              RecursiveFunction(const ValueType.string("doLines"));
          stack.add(sub);
          break;
        case AnalyserConst.blockEnd:
          while (checkBlock(stack.last)) {
            var last = stack.removeLast();
            stack.last.add(last);
          }
          if (!(pos < tokens.length - 1 &&
              tokens[pos + 1].type == AnalyserConst.functionElse)) {
            var last = stack.removeLast();
            stack.last.add(last);
          }
          break;
        case AnalyserConst.functionElse:
          break;
        case AnalyserConst.functionIf:
          RecursiveFunction sub =
              RecursiveFunction(const ValueType.string("if"));
          stack.add(sub);
          break;
        case AnalyserConst.functionFor:
          RecursiveFunction sub =
              RecursiveFunction(const ValueType.string("for"));
          stack.add(sub);
          break;
        case AnalyserConst.function:
          RecursiveFunction sub =
              RecursiveFunction(ValueType.string(token.data));
          stack.add(sub);
          break;
        case AnalyserConst.functionStart:
          break;
        case AnalyserConst.functionEnd:
          var last = stack.removeLast();
          stack.last.add(last);
          break;
        case AnalyserConst.functionComma:
          var last = stack.removeLast();
          stack.last.add(last);
          break;
        case AnalyserConst.variableName:
          RecursiveUnit out =
              RecursiveFunction(const ValueType.string("loadVariable"));
          out.add(RecursiveData(ValueType.string(token.dataString)));
          stack.add(out);
          break;
        case AnalyserConst.lineEnd:
          while (stack.last.body.data != "doLines" &&
              stack.last.body.data != "returnCondition") {
            var last = stack.removeLast();
            stack.last.add(last);
          }
          break;
        default:
          var sub = RecursiveData(getValueTypeFromDynamicInput(token.data));
          stack.add(sub);
          break;
      }
    }
    while (stack.length != 1) {
      var last = stack.removeLast();
      stack.first.add(last);
    }
  }

  RecursiveUnit optimizeTree(RecursiveUnit mother) {
    RecursiveUnit output = mother;
    List<RecursiveUnit> needVisit = List.from([mother], growable: true);
    while (needVisit.isNotEmpty) {
      var pointer = needVisit.removeAt(0);
      if (pointer.body.data == "doLines" && pointer.child.length == 1) {
        var replace = pointer.child.first;
        if (pointer.parent != null) {
          var parentChildList = pointer.parent!.child;
          var pos = parentChildList.indexOf(pointer);
          if (pos != -1) {
            parentChildList[pos] = replace;
            replace.parent = pointer.parent;
            needVisit.add(replace);
          }
        } else {
          output = replace;
          replace.parent = null;
        }
      } else {
        for (var child in pointer.child) {
          needVisit.add(child);
        }
      }
    }
    return output;
  }

  RecursiveUnit? analyseLines(List<Token> analysedData) {
    if (analysedData.isEmpty) return null;
    RecursiveUnit mother = RecursiveFunction(const ValueType.string("doLines"));
    abstractSyntaxTreeAnalyse(mother, analysedData);
    return optimizeTree(mother);
  }

  RecursiveUnit? analyseLine(List<Token> analysedData) {
    if (analysedData.isEmpty) return null;
    RecursiveUnit mother =
        RecursiveFunction(const ValueType.string("returnCondition"));
    abstractSyntaxTreeAnalyse(mother, analysedData);
    return mother;
  }
}
