import 'package:petitparser/petitparser.dart';

import 'ast.dart';

class SemanticAnalyser {
  static const int blockEndSign = -1;
  static const int functionEndSign = -2;

  AST abstractSyntaxTreeCompile(dynamic motherToken) {
    AST ast = AST(motherToken);
    return ast;
  }

  AST? analyseLines(Result<dynamic> analysedData, {optimize = true}) {
    if (analysedData is Failure)
      throw Exception("Compile Error, check syntax and try again.");
    var ast = abstractSyntaxTreeCompile(analysedData.value);
    return ast;
  }
}
