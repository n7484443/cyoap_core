import 'package:petitparser/debug.dart';

import 'grammar.dart';
import 'package:petitparser/petitparser.dart';

class LexicalAnalyser {
  /*
    어휘분석기. 토큰으로 변환한다.
     */
  Result<dynamic> analyse(String input, isCondition, {isDebug = false}) {
    final cyoapScriptGrammarDefinition = CYOAPScriptGrammarDefinition();

    if (isCondition) {
      final parserConditions = cyoapScriptGrammarDefinition
          .buildFrom(cyoapScriptGrammarDefinition.startCondition());
      if (isDebug) {
        final parserConditionsDebug = cyoapScriptGrammarDefinition
            .buildFrom(cyoapScriptGrammarDefinition.startCondition());
        return trace(parserConditionsDebug).parse(input);
      }
      return parserConditions.parse(input);
    } else {
      final parserLines = cyoapScriptGrammarDefinition.build();
      if (isDebug) {
        final parserLinesDebug = cyoapScriptGrammarDefinition.build();
        return trace(parserLinesDebug).parse(input);
      }
      return parserLines.parse(input);
    }
  }
}
