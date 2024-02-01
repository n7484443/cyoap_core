import 'package:petitparser/petitparser.dart';
import 'ast.dart';

class SemanticAnalyser {
  static const int blockEndSign = -1;
  static const int functionEndSign = -2;

  AST abstractSyntaxTreeCompile(dynamic motherToken) {
    // print(motherToken);
    AST ast = AST(motherToken);
    // print(jsonEncode(ast.toJson()));
    return ast;
  }

  AST? analyseLines(Result<dynamic> analysedData, {optimize = true}) {
    if (analysedData is Failure) return null;
    var ast = abstractSyntaxTreeCompile(analysedData.value);
    // if (optimize) {
    //   return optimizeTree(ast);
    // }
    return ast;
  }
}
