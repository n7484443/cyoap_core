import 'package:cyoap_core/grammar/analyser.dart';
import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main(){
  test('and_test_0', () {
    var strTest = """
    var and_test_alpha = true
    var and_test_beta = true
    var and_test_1 = and(true, and_test_beta, true, true, true, true)
    var and_test_2 = and(false, true, true, true)
    var and_test_3 = and(true, false)
    var and_test_4 = and(false, false)
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'and_test_alpha': true,
      'and_test_beta': true,
      'and_test_1': true,
      'and_test_2': false,
      'and_test_3': false,
      'and_test_4': false,
    });
  });
  test('and_test_1', () {
    String strTest = """
    var and_test_1_output_0 = and(and_test_1_input_0 == false, and_test_1_input_1 == false)
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'and_test_1_output_0': true,
    }, input: {
      'and_test_1_input_0': false,
      'and_test_1_input_1': false,
    });
    expectMultiple(code, {
      'and_test_1_output_0': false,
    }, input: {
      'and_test_1_input_0': false,
      'and_test_1_input_1': true,
    });
    expectMultiple(code, {
      'and_test_1_output_0': false,
    }, input: {
      'and_test_1_input_0': true,
      'and_test_1_input_1': false,
    });
    expectMultiple(code, {
      'and_test_1_output_0': false,
    }, input: {
      'and_test_1_input_0': true,
      'and_test_1_input_1': true,
    });
  });
  test('and_test_2', () {
    String strTest = """
    var and_test_2_output_0 = and(and_test_2_input_0 == and_test_2_input_1 == true, and_test_2_input_2 == false)
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'and_test_2_output_0': true,
    }, input: {
      'and_test_2_input_0': false,
      'and_test_2_input_1': false,
      'and_test_2_input_2': false,
    });
    expectMultiple(code, {
      'and_test_2_output_0': false,
    }, input: {
      'and_test_2_input_0': false,
      'and_test_2_input_1': true,
      'and_test_2_input_2': false,
    });
    expectMultiple(code, {
      'and_test_2_output_0': false,
    }, input: {
      'and_test_2_input_0': true,
      'and_test_2_input_1': false,
      'and_test_2_input_2': false,
    });
    expectMultiple(code, {
      'and_test_2_output_0': true,
    }, input: {
      'and_test_2_input_0': true,
      'and_test_2_input_1': true,
      'and_test_2_input_2': false,
    });


    expectMultiple(code, {
      'and_test_2_output_0': false,
    }, input: {
      'and_test_2_input_0': false,
      'and_test_2_input_1': false,
      'and_test_2_input_2': true,
    });
    expectMultiple(code, {
      'and_test_2_output_0': false,
    }, input: {
      'and_test_2_input_0': false,
      'and_test_2_input_1': true,
      'and_test_2_input_2': true,
    });
    expectMultiple(code, {
      'and_test_2_output_0': false,
    }, input: {
      'and_test_2_input_0': true,
      'and_test_2_input_1': false,
      'and_test_2_input_2': true,
    });
    expectMultiple(code, {
      'and_test_2_output_0': false,
    }, input: {
      'and_test_2_input_0': true,
      'and_test_2_input_1': true,
      'and_test_2_input_2': true,
    });
  });

  test('and_test_3', () {
    String strTest = """
    var and_test_3_output_0 = and(and_test_3_input_0 == (and_test_3_input_1 == true), and_test_3_input_2 == false)
    """;
    var code = Analyser().analyseMultiLine(strTest);
    expectMultiple(code, {
      'and_test_3_output_0': true,
    }, input: {
      'and_test_3_input_0': false,
      'and_test_3_input_1': false,
      'and_test_3_input_2': false,
    });
    expectMultiple(code, {
      'and_test_3_output_0': false,
    }, input: {
      'and_test_3_input_0': false,
      'and_test_3_input_1': true,
      'and_test_3_input_2': false,
    });
    expectMultiple(code, {
      'and_test_3_output_0': false,
    }, input: {
      'and_test_3_input_0': true,
      'and_test_3_input_1': false,
      'and_test_3_input_2': false,
    });
    expectMultiple(code, {
      'and_test_3_output_0': true,
    }, input: {
      'and_test_3_input_0': true,
      'and_test_3_input_1': true,
      'and_test_3_input_2': false,
    });


    expectMultiple(code, {
      'and_test_3_output_0': false,
    }, input: {
      'and_test_3_input_0': false,
      'and_test_3_input_1': false,
      'and_test_3_input_2': true,
    });
    expectMultiple(code, {
      'and_test_3_output_0': false,
    }, input: {
      'and_test_3_input_0': false,
      'and_test_3_input_1': true,
      'and_test_3_input_2': true,
    });
    expectMultiple(code, {
      'and_test_3_output_0': false,
    }, input: {
      'and_test_3_input_0': true,
      'and_test_3_input_1': false,
      'and_test_3_input_2': true,
    });
    expectMultiple(code, {
      'and_test_3_output_0': false,
    }, input: {
      'and_test_3_input_0': true,
      'and_test_3_input_1': true,
      'and_test_3_input_2': true,
    });
  });
}