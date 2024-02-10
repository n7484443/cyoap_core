import 'analyser_const.dart';
import 'token_data.dart';
import 'package:petitparser/petitparser.dart';

class CYOAPScriptGrammarDefinition extends GrammarDefinition {
  @override
  Parser start() => ref0(block).end();

  Parser token(Object parser,
      [AnalyserConst? type, String? dataStringOverride]) {
    if (parser is Parser) {
      if (type == null) {
        return parser.trim(ref0(hiddenWhiteSpace));
      }
      return parser
          .trim(ref0(hiddenWhiteSpace))
          .map((value) =>
              TokenData(type, dataString: dataStringOverride ?? value))
          .token();
    } else if (parser is String) {
      if (type == null) {
        return parser.toParser().trim(ref0(hiddenWhiteSpace));
      }
      return parser
          .toParser()
          .trim(ref0(hiddenWhiteSpace))
          .map((value) =>
              TokenData(type, dataString: dataStringOverride ?? value))
          .token();
    } else {
      throw Exception("parser must be Parser or String");
    }
  }

  Parser startCondition() => ref0(expression)
      .map((value) => [
            Token(TokenData(AnalyserConst.keywordReturn), "return", 0, 0),
            value
          ])
      .end();

  Parser def() => ref2(
      token,
      (string('var').trim() | string('let').trim()).optionalWith("set"),
      AnalyserConst.setter);

  Parser trueToken() => ref2(token, 'true', AnalyserConst.bools);

  Parser falseToken() => ref2(token, 'false', AnalyserConst.bools);

  Parser continueToken() =>
      ref2(token, 'continue', AnalyserConst.keywordContinue);

  Parser breakToken() => ref2(token, 'break', AnalyserConst.keywordBreak);

  Parser groupingStart() => ref1(token, '(');

  Parser groupingEnd() => ref1(token, ')');

  Parser comma() => ref1(token, ',');

  Parser ifToken() => ref2(token, 'if', AnalyserConst.keywordIf);

  Parser elseStatement() => ref2(token, 'else', AnalyserConst.keywordElse);

  Parser forToken() => ref2(token, 'for', AnalyserConst.keywordFor);

  Parser blockStart() => ref1(token, '{');

  Parser blockEnd() => ref1(token, '}');

  Parser range() => ref2(token, '..', AnalyserConst.keywordTo);

  Parser dotToken() => ref2(token, '.', AnalyserConst.keywordDot);

  Parser inToken() => ref2(token, 'in', AnalyserConst.keywordIn);

  Parser returnToken() => ref2(token, 'return', AnalyserConst.keywordReturn);

  Parser listStart() => ref1(token, '[');

  Parser listEnd() => ref1(token, ']');

/* ========================================================== */
  Parser assign() => ref1(token, '=');

  Parser assignExtend() => [
        ref2(token, '*=', AnalyserConst.assignExtension),
        ref2(token, '/=', AnalyserConst.assignExtension),
        ref2(token, '~/=', AnalyserConst.assignExtension),
        ref2(token, '%=', AnalyserConst.assignExtension),
        ref2(token, '+=', AnalyserConst.assignExtension),
        ref2(token, '-=', AnalyserConst.assignExtension),
        ref2(token, '<<=', AnalyserConst.assignExtension),
        ref2(token, '>>=', AnalyserConst.assignExtension),
        ref2(token, '&=', AnalyserConst.assignExtension),
        ref2(token, '^=', AnalyserConst.assignExtension),
        ref2(token, '|=', AnalyserConst.assignExtension),
      ].toChoiceParser();

  Parser bitwiseNotOperator() => ref2(token, '~', AnalyserConst.function);

  Parser multiplicativeOperator() =>
      ref2(token, '*', AnalyserConst.function) |
      ref2(token, '/', AnalyserConst.function) |
      ref2(token, '%', AnalyserConst.function) |
      ref2(token, '~/', AnalyserConst.function);

  Parser addictiveOperator() =>
      ref2(token, '+', AnalyserConst.function) |
      ref2(token, '-', AnalyserConst.function);

  Parser shiftOperator() =>
      ref2(token, '<<', AnalyserConst.function) |
      ref2(token, '>>', AnalyserConst.function);

  Parser relationOperator() =>
      ref2(token, '>=', AnalyserConst.function) |
      ref2(token, '<=', AnalyserConst.function) |
      ref2(token, '>', AnalyserConst.function) |
      ref2(token, '<', AnalyserConst.function);

  Parser equalityOperator() =>
      ref2(token, '!=', AnalyserConst.function) |
      ref2(token, '==', AnalyserConst.function);

  Parser bitwiseOperator() =>
      ref2(token, '&', AnalyserConst.function) |
      ref2(token, '^', AnalyserConst.function) |
      ref2(token, '|', AnalyserConst.function);

/* ========================================================== */

  Parser ret() => ref0(returnToken) & ref0(expression);

  Parser eq() =>
      (ref0(def) & ref0(assignTargetVariable) & ref0(assign) & ref0(expression))
          .permute([0, 2, 1, 3]).map((value) {
        return [value[0], value[2], value[3]];
      }) |
      (ref0(def) & ref0(assignTargetVariable) & ref0(assignExtend) & ref0(expression))
          .map((value) {
        return [value[2], value[1], value[3]];
      });

  Parser ifStatement() =>
      ref0(ifToken) &
      ref0(expression)
          .skip(before: ref0(groupingStart), after: ref0(groupingEnd)) &
      ref0(block).skip(before: ref0(blockStart), after: ref0(blockEnd)) &
      (ref0(elseStatement) &
              ref0(block).skip(before: ref0(blockStart), after: ref0(blockEnd)))
          .pick(1)
          .optional();

  Parser forExpression() =>
      (ref1(variable, false) & ref0(inToken) & ref0(lists)).permute([1, 0, 2]);

  Parser forStatement() =>
      ref0(forToken) &
      ref0(forExpression)
          .skip(before: ref0(groupingStart), after: ref0(groupingEnd)) &
      ref0(block).skip(before: ref0(blockStart), after: ref0(blockEnd));

  Parser block() => [
        ref0(continueToken),
        ref0(breakToken),
        ref0(ifStatement),
        ref0(forStatement),
        ref0(eq),
        ref0(ret),
        ref0(function),
        newline().trim()
      ]
          .toChoiceParser()
          .star()
          .map((value) =>
              [Token(TokenData(AnalyserConst.lines), "", 0, 0), ...value])
          .trim();

/* ========================================================== */
  Parser expression() => bitwiseExpression();

  Parser infixExpression(expression, separator) {
    //center
    return ref0(expression).plusSeparated(ref0(separator)).map((value) {
      var array = value.sequential.toList();
      while (array.length >= 3) {
        var right = array.removeLast();
        var op = array.removeLast();
        var left = array.removeLast();
        array.add([op, left, right]);
      }

      if (array.length == 1) {
        return array[0];
      }
      return array;
    });
  }

  Parser prefixExpression(expression, separator) {
    // front
    return (ref0(separator).star() & ref0(expression)).map((value) {
      var array = [...value[0], value[1]];
      while (array.length >= 2) {
        var right = array.removeLast();
        var op = array.removeLast();
        array.add([op, right]);
      }

      if (array.length == 1) {
        return array[0];
      }
      return array;
    });
  }

  Parser bitwiseExpression() =>
      ref2(infixExpression, equalityExpression, bitwiseOperator);

  Parser equalityExpression() =>
      ref2(infixExpression, relationExpression, equalityOperator);

  Parser relationExpression() =>
      ref2(infixExpression, shiftExpression, relationOperator);

  Parser shiftExpression() =>
      ref2(infixExpression, addictiveExpression, shiftOperator);

  Parser addictiveExpression() =>
      ref2(infixExpression, multiplicativeExpression, addictiveOperator);

  Parser multiplicativeExpression() =>
      ref2(infixExpression, bitwiseNotExpression, multiplicativeOperator);

  Parser bitwiseNotExpression() =>
      ref2(prefixExpression, prim, bitwiseNotOperator);

/* ========================================================== */
  Parser prim() =>
      ref0(lists) |
      ref0(variableArray) |
      ref0(data) |
      ref0(function) |
      ref0(parens) |
      ref1(variable, true);

  Parser function() => (ref1(variable, false)
              .map((value) => TokenData(AnalyserConst.function,
                  dataString: (value as Token<TokenData>).value.dataString))
              .token() &
          ((ref0(expression).starSeparated(ref0(comma)))
                  .optional()
                  .skip(before: ref0(groupingStart), after: ref0(groupingEnd)))
              .map((value) => value?.elements ?? []))
      .map((value) => [value[0], ...value[1]])
      .trim();

  Parser parens() => ref0(expression)
      .skip(before: ref0(groupingStart), after: ref0(groupingEnd));

  Parser data() => [
        ref0(float),
        ref0(number),
        ref0(trueToken),
        ref0(falseToken),
        ref0(strings)
      ].toChoiceParser();

  Parser variable(bool load) => ref2(
      token,
      ref0(variableGeneralName) | ref0(variableName),
      load ? AnalyserConst.loadAddress : AnalyserConst.strings);

  Parser variableGeneralName() =>
      pattern(r':_0-9a-zA-Zㄱ-ㅎ가-힣ㅏ-ㅣ').plus().flatten();

  Parser variableName() => ("\$[".toParser() &
          ("\\]".toParser() | char("]").neg()).plus().flatten() &
          char("]"))
      .pick(1)
      .map((value) => (value as String).replaceAll("\\]", "]"));

  Parser number() => ref2(token,
      (char('-').optional() & digit().plus()).flatten(), AnalyserConst.ints);

  Parser float() => ref2(
      token,
      (char('-').optional() &
                  (digit().star() & char('.').trim() & digit().plus()) |
              (digit().plus() & char('.').trim() & digit().star()))
          .flatten(),
      AnalyserConst.doubles);

  Parser strings() => ref2(
      token,
      char('"')
              .neg()
              .star()
              .flatten()
              .trim()
              .skip(before: char('"'), after: char('"')) |
          char("'")
              .neg()
              .star()
              .flatten()
              .trim()
              .skip(before: char("'"), after: char("'")),
      AnalyserConst.strings);

  Parser variableArray() => (ref1(variable, true) &
          ref0(expression).skip(before: ref0(listStart), after: ref0(listEnd)));

  Parser assignTargetVariable() => ref1(variable, false) & ref0(expression).skip(before: ref0(listStart), after: ref0(listEnd)).optional();

  Parser lists() => ref0(rangeExpression) | ref0(listFromElement);

  Parser rangeExpression() =>
      (ref0(rangeComponent) & ref0(range) & ref0(rangeComponent))
          .permute([1, 0, 2]);

  Parser rangeComponent() => ref0(number) | ref0(parens) | ref1(variable, true);

  Parser listFromElement() =>
      (ref3(token, ref0(listStart), AnalyserConst.lists, "") &
              ref0(expression)
                  .starSeparated(ref0(comma))
                  .skip(after: ref0(listEnd)))
          .map((value) => [value[0], ...(value[1] as SeparatedList).elements]);

/* ========================================================== */
  Parser hiddenWhiteSpace() =>
      ref0(visibleWhiteSpace) |
      ref0(singleLineComment) |
      ref0(multiLineComment);

  Parser visibleWhiteSpace() => whitespace();

  Parser singleLineComment() =>
      string('//') & ref0(newline).neg().star() & ref0(newline).optional();

  Parser multiLineComment() =>
      string('/*') &
      (ref0(multiLineComment) | string('*/').neg()).star() &
      string('*/');
}
