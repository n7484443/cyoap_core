import 'package:petitparser/debug.dart';
import 'package:petitparser/petitparser.dart';

import 'grammar.dart';

class LexicalAnalyser {
  final cyoapScriptGrammarDefinition = CYOAPScriptGrammarDefinition();
  /*
    어휘분석기. 토큰으로 변환한다.
     */
  Result<dynamic> analyse(String input, isCondition, {isDebug = false}) {
    if (isCondition) {
      if (isDebug) {
        final parserConditionsDebug = cyoapScriptGrammarDefinition
            .buildFrom(cyoapScriptGrammarDefinition.startCondition());
        return trace(parserConditionsDebug).parse(input);
      }
      final parserConditions = cyoapScriptGrammarDefinition
          .buildFrom(cyoapScriptGrammarDefinition.startCondition());
      return parserConditions.parse(input);
    } else {
      if (isDebug) {
        final parserLinesDebug = cyoapScriptGrammarDefinition.build();
        return trace(parserLinesDebug).parse(input);
      }
      final parserLines = cyoapScriptGrammarDefinition.build();
      return parserLines.parse(input);
    }
  }
}
