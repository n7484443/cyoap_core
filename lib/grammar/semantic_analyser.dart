import 'package:cyoap_core/option.dart';

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

  void abstractSyntaxTreeAnalyse(RecursiveUnit mother, List<Token> tokens) {
    List<RecursiveUnit> stack = [mother];
    if (Option().isDebugMode && Option().enableToken) {
      print(tokens);
    }

    for (var pos = 0; pos < tokens.length; pos++) {
      var token = tokens[pos];
      if (Option().isDebugMode && Option().enableRecursiveStack) {
        print("$token $stack");
      }
      switch (token.type) {
        case AnalyserConst.functionEndMarker:
          stack.add(RecursiveData(ValueType.string("function_end")));
          break;
        case AnalyserConst.functionFront:
        case AnalyserConst.function:
        case AnalyserConst.functionCenter:
          RecursiveFunction sub = RecursiveFunction(
              ValueType.string(token.data),
              functionType: FunctionType.defaultFunction);
          var list = <RecursiveUnit>[];
          var length = 10;
          if (token.type == AnalyserConst.functionFront) {
            length = 1;
          } else if (token.type == AnalyserConst.functionCenter) {
            if (token.data == "setListElement") {
              length = 3;
            } else {
              length = 2;
            }
          }
          for (int i = 0; i < length; i++) {
            var removed = stack.removeLast();
            if (removed.body.data == "function_end") {
              break;
            }
            list.add(removed);
          }
          for (var i in list.reversed) {
            sub.add(i);
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
        case AnalyserConst.variableName:
          RecursiveUnit out =
              RecursiveFunction(const ValueType.string("loadVariable"));
          out.add(RecursiveData(ValueType.string(token.dataString)));
          stack.add(out);
          break;
        case AnalyserConst.loadAddress:
          stack.add(RecursiveData(ValueType.string(token.dataString)));
          break;
        case AnalyserConst.lineEnd:
          while (stack.last.body.data != "doLines" &&
              stack.last.body.data != "returnCondition") {
            var last = stack.removeLast();
            stack.last.add(last);
          }
          break;
        default:
          if (stack.isNotEmpty &&
              stack.last is RecursiveFunction &&
              (stack.last as RecursiveFunction).functionType ==
                  FunctionType.prefixFunction) {
            stack.last
                .add(RecursiveData(getValueTypeFromDynamicInput(token.data)));
          } else {
            stack.add(RecursiveData(getValueTypeFromDynamicInput(token.data)));
          }
          break;
      }
    }
    while (stack.length > 1) {
      var last = stack.removeLast();
      stack.last.add(last);
    }
  }

  RecursiveUnit removeBracket(RecursiveUnit mother) {
    List<RecursiveUnit> needVisit = List.from([mother], growable: true);
    while (needVisit.isNotEmpty) {
      var pointer = needVisit.removeAt(0);
      if (pointer.body.data == "bracket") {
        var index = pointer.parent!.child.indexOf(pointer);
        var parent = pointer.parent!;
        parent.child.remove(pointer);
        for (var child in pointer.child.reversed) {
          parent.child.insert(index, child);
          child.parent = parent;
          needVisit.add(child);
        }
        continue;
      }
      for (var child in pointer.child) {
        needVisit.add(child);
      }
    }
    return mother;
  }

  RecursiveUnit optimizeTree(RecursiveUnit mother) {
    RecursiveUnit output = removeBracket(mother);
    List<RecursiveUnit> needVisit = List.from([mother], growable: true);
    while (needVisit.isNotEmpty) {
      var pointer = needVisit.removeAt(0);
      if (pointer.body.data == "bracket") {
        pointer.parent!.child.remove(pointer);
        for (var child in pointer.child) {
          pointer.parent!.add(child);
          needVisit.add(child);
        }
        print("removed");
        continue;
      }
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
        continue;
      }
      if (pointer.body.data == "==" && pointer.child.length == 2) {
        var replace = pointer.parent;
        if (replace != null) {
          var left = pointer.child[0];
          var right = pointer.child[1];
          if (left.body.type == DataType.bools ||
              right.body.type == DataType.bools) {
            var parentChildList = replace.child;
            var pos = parentChildList.indexOf(pointer);
            if (pos != -1) {
              if (left.body.data == 'true') {
                parentChildList[pos] = right;
                right.parent = replace;
                needVisit.add(right);
                continue;
              }
              if (left.body.data == 'false') {
                RecursiveUnit not =
                    RecursiveFunction(const ValueType.string("not"));
                parentChildList[pos] = not;
                not.add(right);
                needVisit.add(right);
                continue;
              }
              if (right.body.data == 'true') {
                parentChildList[pos] = left;
                left.parent = replace;
                needVisit.add(left);
                continue;
              }
              if (right.body.data == 'false') {
                RecursiveUnit not =
                    RecursiveFunction(const ValueType.string("not"));
                parentChildList[pos] = not;
                not.add(left);
                needVisit.add(left);
                continue;
              }
            }
          }
        }
      }

      for (var child in pointer.child) {
        needVisit.add(child);
      }
    }
    if (Option().isDebugMode && Option().enableRecursiveResult) {
      print(output);
    }
    return output;
  }

  RecursiveUnit? analyseLines(List<Token> analysedData, {optimize = true}) {
    if (analysedData.isEmpty) return null;
    RecursiveUnit mother = RecursiveFunction(const ValueType.string("doLines"));
    abstractSyntaxTreeAnalyse(mother, analysedData);
    if(optimize){
      return optimizeTree(mother);
    }
    return mother;
  }

  RecursiveUnit? analyseLine(List<Token> analysedData) {
    if (analysedData.isEmpty) return null;
    RecursiveUnit mother =
        RecursiveFunction(const ValueType.string("returnCondition"));
    abstractSyntaxTreeAnalyse(mother, analysedData);
    return optimizeTree(mother);
  }
}
