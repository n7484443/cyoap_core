import 'package:cyoap_core/grammar/analyser.dart';
import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main(){
  test('ifTest', () {
    String strTest = """
    if(true){
      var if_test_alpha = true
    }else{
      var if_test_beta = true
    }
    if(true){
      var if_test_gamma = true
    }
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'if_test_alpha': true,
      'if_test_beta': null,
      'if_test_gamma': true,
    });
  });

  test('ifNestedTest0', () {
    String strTest = """
    if(true){
      if(true){
        var ifNestedTest0_0 = true
        if(true){
          var ifNestedTest0_1 = true
        }
      }
    }else{
      var ifNestedTest0_2 = true;
    }
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'ifNestedTest0_0': true,
      'ifNestedTest0_1': true,
      'ifNestedTest0_2': null,
    });
  });

  test('ifNestedTest1', () {
    String strTest = """
    if(true) 
    {
      if(true){
        var ifNestedTest1_0 = true
        if(true)
        {
          var ifNestedTest1_1 = true
        }else{
          var ifNestedTest1_2 = true
        }
      }}
    else
    {
      var ifNestedTest1_3 = true;
    }
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'ifNestedTest1_0': true,
      'ifNestedTest1_1': true,
      'ifNestedTest1_2': null,
      'ifNestedTest1_3': null,
    });
  });

  test('ifSpacedTest0', () {
    String strTest = """
    if(true){
      var ifSpacedTest0_0 = true
    }
    else
    {
      var ifSpacedTest0_1 = true
    }
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'ifSpacedTest0_0': true,
      'ifSpacedTest0_1': null,
    });
  });
}