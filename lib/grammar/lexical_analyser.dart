import 'analyser_const.dart';
import 'token.dart';

class LexicalAnalyser {
  void addToken(List<Token> tokenList, Token? tokenAdded) {
    if (tokenAdded != null) {
      switch (tokenAdded.dataString) {
        case 'let':
          tokenAdded.type = AnalyserConst.variableLet;
          break;
        case 'var':
          tokenAdded.type = AnalyserConst.variableVar;
          break;
        case 'in':
          tokenAdded.type = AnalyserConst.functionCenter;
          break;
        case 'break':
          tokenAdded.type = AnalyserConst.keywordBreak;
          break;
        case 'continue':
          tokenAdded.type = AnalyserConst.keywordContinue;
          break;
        case 'true':
        case 'false':
          tokenAdded.type = AnalyserConst.bools;
          break;
        case 'else':
          tokenAdded.type = AnalyserConst.functionElse;
          break;
        default:
          if (tokenAdded.type == AnalyserConst.unspecified) {
            if (tokenAdded.dataString.contains("..")) {
              var split = tokenAdded.dataString.split("..");
              tokenList.add(Token(AnalyserConst.functionStart));
              if (isStringDouble(split[0])) {
                tokenList.add(Token(AnalyserConst.ints, dataString: split[0]));
              } else {
                tokenList.add(
                    Token(AnalyserConst.variableName, dataString: split[0]));
              }
              tokenList
                  .add(Token(AnalyserConst.functionCenter, dataString: "to"));
              if (isStringDouble(split[1])) {
                tokenList.add(Token(AnalyserConst.ints, dataString: split[1]));
              } else {
                tokenList.add(
                    Token(AnalyserConst.variableName, dataString: split[1]));
              }
              tokenList.add(Token(AnalyserConst.functionEnd));
              return;
            } else if (isStringDouble(tokenAdded.dataString)) {
              if (tokenAdded.dataString.contains('.')) {
                tokenAdded.type = AnalyserConst.doubles;
              } else {
                tokenAdded.type = AnalyserConst.ints;
              }
            } else {
              tokenAdded.type = AnalyserConst.variableName;
            }
          }
          break;
      }
      tokenList.add(tokenAdded);
    }
  }

  /*
    어휘분석기. 토큰으로 변환한다.
     */
  List<Token> analyse(String input) {
    bool isStringInputSingle = false;
    bool isStringInputDouble = false;
    Token? tokenAdded;
    List<Token> tokenList = List.empty(growable: true);

    // var regexBrace = RegExp(r'[{}]');
    // var regexComment = RegExp(r"//.*");
    // var codes = input.split('\n');
    // List<String> codeList = [];
    // for (var code in codes) {
    //   code = code.replaceAll(regexComment, "");
    //   while(code.contains(regexBrace)){
    //     var index = code.indexOf(regexBrace);
    //     var before = code.substring(0, index);
    //     codeList.add(before);
    //     codeList.add(code[index]);
    //     if(index + 1 >= code.length) {
    //       code = code.substring(index + 1);
    //     }else{
    //       break;
    //     }
    //   }
    //   if(code.trim().isNotEmpty) {
    //     codeList.add(code);
    //   }
    // }
    // codeList = codeList.map((e) => e.trim()).where((e) => e.isNotEmpty).toList();

    var line = input.trim();
    for (var c in line.split('')) {
      if (isStringInputSingle) {
        if (c == "'") {
          isStringInputSingle = false;
          tokenList.add(tokenAdded!);
          tokenAdded = null;
          continue;
        }
        tokenAdded!.addUnitData(c);
        continue;
      } else if (isStringInputDouble) {
        if (c == '"') {
          isStringInputDouble = false;
          tokenList.add(tokenAdded!);
          tokenAdded = null;
          continue;
        }
        tokenAdded!.addUnitData(c);
        continue;
      }
      switch (c) {
        case '+':
        case '-':
        case '*':
        case '/':
        case '%':
        case '&':
        case '|':
        case '^':
          addToken(tokenList, tokenAdded);
          tokenAdded = Token(AnalyserConst.functionCenter, dataString: c);
          break;
        case '<':
        case '>':
          if (tokenAdded != null &&
              tokenAdded.type == AnalyserConst.functionCenter) {
            tokenAdded.addUnitData(c);
          } else {
            addToken(tokenList, tokenAdded);
            tokenAdded = Token(AnalyserConst.functionCenter, dataString: c);
          }
          break;
        case '~':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.functionFront, dataString: c));
          break;

        case '=':
          if (tokenAdded != null &&
              tokenAdded.type == AnalyserConst.functionCenter) {
            tokenAdded.addUnitData(c);
            if (tokenAdded.dataString == '+=' ||
                tokenAdded.dataString == '-=' ||
                tokenAdded.dataString == '*=' ||
                tokenAdded.dataString == '/=') {
              tokenList
                  .add(Token(AnalyserConst.functionCenter, dataString: '='));
              tokenList.add(tokenList[tokenList.length - 2]);
              tokenList.add(Token(AnalyserConst.functionCenter,
                  dataString: tokenAdded.dataString.replaceAll("=", "")));
              tokenAdded = null;
            }
          } else {
            addToken(tokenList, tokenAdded);
            tokenAdded = Token(AnalyserConst.functionCenter, dataString: c);
          }
          break;
        case "'":
          tokenAdded = Token(AnalyserConst.strings);
          isStringInputSingle = true;
          break;
        case '"':
          tokenAdded = Token(AnalyserConst.strings);
          isStringInputDouble = true;
          break;
        case '(':
          if (tokenAdded != null) {
            tokenAdded.type = AnalyserConst.function;
            tokenList.add(tokenAdded);
            tokenAdded = null;
          }
          tokenList.add(Token(AnalyserConst.functionStart));
          break;
        case ')':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.functionEnd));
          break;
        case ',':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.functionComma));
          break;
        case '{':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.blockStart));
          break;
        case '}':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.blockEnd));
          break;
        case ' ':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          break;
        case '[':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.listStart));
          break;
        case ']':
          addToken(tokenList, tokenAdded);
          tokenAdded = null;
          tokenList.add(Token(AnalyserConst.listEnd));
          break;
        default:
          if (tokenAdded == null) {
            tokenAdded = Token(AnalyserConst.unspecified, dataString: c);
          } else if (tokenAdded.type == AnalyserConst.functionCenter) {
            if (tokenList.last.type == AnalyserConst.functionCenter &&
                (tokenAdded.dataString == '+' ||
                    tokenAdded.dataString == '-')) {
              tokenAdded.type = AnalyserConst.unspecified;
              tokenAdded.addUnitData(c);
            } else {
              addToken(tokenList, tokenAdded);
              tokenAdded = Token(AnalyserConst.unspecified, dataString: c);
            }
          } else if (tokenAdded.type == AnalyserConst.functionFront) {
            addToken(tokenList, tokenAdded);
            tokenAdded = Token(AnalyserConst.unspecified, dataString: c);
          } else {
            tokenAdded.addUnitData(c);
          }
          break;
      }
    }
    addToken(tokenList, tokenAdded);
    return tokenList;
  }

  List<Token> changeToFunction(List<Token> tokenList) {
    var tokenOutput = List<Token>.empty(growable: true);
    var check = 0;
    for (var token in tokenList) {
      if (token.type == AnalyserConst.variableVar) {
        check = 1;
      } else if (token.type == AnalyserConst.variableLet) {
        check = 2;
      } else if (token.dataString == "=") {
        switch (check) {
          case 0:
            tokenOutput.last = Token(AnalyserConst.loadAddress,
                dataString: tokenOutput.last.dataString);
            tokenOutput.add(
                Token(AnalyserConst.functionCenter, dataString: "setVariable"));
            break;
          case 1:
            tokenOutput.last = Token(AnalyserConst.loadAddress,
                dataString: tokenOutput.last.dataString);
            tokenOutput.add(
                Token(AnalyserConst.functionCenter, dataString: "setLocal"));
            break;
          case 2:
            tokenOutput.last = Token(AnalyserConst.loadAddress,
                dataString: tokenOutput.last.dataString);
            tokenOutput.add(
                Token(AnalyserConst.functionCenter, dataString: "setGlobal"));
            break;
          case 3:
            var index = tokenOutput.lastIndexWhere(
                (element) => element.dataString == "createList");
            tokenOutput[index - 1].type = AnalyserConst.loadAddress;
            tokenOutput[index] = Token(AnalyserConst.functionCenter,
                dataString: "setListElement");
            break;
        }
        check = 0;
      } else if (token.type == AnalyserConst.listStart) {
        tokenOutput
            .add(Token(AnalyserConst.function, dataString: "createList"));
        tokenOutput.add(Token(AnalyserConst.functionStart));
      } else if (token.type == AnalyserConst.listEnd) {
        tokenOutput.add(Token(AnalyserConst.functionEnd));
        check = 3;
      } else if (token.type == AnalyserConst.lineEnd) {
        check = 0;
        tokenOutput.add(token);
      } else {
        tokenOutput.add(token);
      }
    }
    return tokenOutput;
  }

  List<Token> infixToPostFix(List<Token> tokens) {
    var tokenOutput = List<Token>.empty(growable: true);
    var stack = List<Token>.empty(growable: true);
    for (var token in tokens) {
      switch (token.type) {
        case AnalyserConst.function:
          stack.add(token);
          tokenOutput.add(Token(AnalyserConst.functionEndMarker));
          break;
        case AnalyserConst.functionFront:
          stack.add(token);
          break;
        case AnalyserConst.functionCenter:
          while (stack.isNotEmpty &&
              stack.last.type != AnalyserConst.functionStart &&
              stack.last.type != AnalyserConst.functionFront &&
              precedence(stack.last) < precedence(token)) {
            tokenOutput.add(stack.removeLast());
          }
          stack.add(token);
          break;
        case AnalyserConst.functionComma:
          while (stack.last.type != AnalyserConst.functionStart) {
            tokenOutput.add(stack.removeLast());
          }
          break;
        case AnalyserConst.functionStart:
          stack.add(token);
          break;
        case AnalyserConst.functionEnd:
          while (stack.last.type != AnalyserConst.functionStart) {
            tokenOutput.add(stack.removeLast());
          }
          stack.removeLast();
          if (stack.isNotEmpty && stack.last.type == AnalyserConst.function) {
            tokenOutput.add(stack.removeLast());
          }
          break;
        case AnalyserConst.blockEnd:
        case AnalyserConst.lineEnd:
          while (stack.isNotEmpty) {
            tokenOutput.add(stack.removeLast());
          }
          tokenOutput.add(token);
          break;
        default:
          tokenOutput.add(token);
          break;
      }
    }
    while (stack.isNotEmpty) {
      tokenOutput.add(stack.removeLast());
    }
    return tokenOutput;
  }

  int precedence(Token token) {
    switch (token.data) {
      case "*":
      case "/":
        return 2;
      case "+":
      case "-":
        return 3;
      case "<<":
      case ">>":
        return 4;
      case "<":
      case ">":
      case "<=":
      case ">=":
        return 5;
      case "==":
      case "!=":
        return 6;
      case "&":
        return 7;
      case "^":
        return 8;
      case "|":
        return 9;
    }
    return 10;
  }

  bool isStringDouble(String s) {
    return double.tryParse(s) != null;
  }
}
