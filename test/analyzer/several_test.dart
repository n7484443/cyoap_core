import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main() {
  var ins = VariableDataBase();
  var epsilon = 0.00001;

  test('numberTest', () {
    String strTest = """
    let numberTest0 = -5.5
    let numberTest1 = 3 * (3 + 5)
    let numberTest2 = (3 * 3) + 5
    let numberTest3 = 6 - 5.5
    let numberTest4 = 6 * 3
    let numberTest5 = 6 / 3
    let numberTest6 = 7 % 3
    """;
    executeInNoReturn(strTest, {}, {
      'numberTest0': closeTo(-5.5, epsilon),
      'numberTest1': 24,
      'numberTest2': 14,
      'numberTest3': closeTo(0.5, epsilon),
      'numberTest4': 18,
      'numberTest5': 2,
      'numberTest6': 1,
    });
  });
  test('bitTest', () {
    //int a = 0b00001011
    //int b = 0b00000110
    //a and b = 0b00000010 = 2
    //a or b = 0b00001111 = 15
    //a xor b = 0b00001101 = 13
    //a not = 0b11110100 = ~11
    //a left shift 1 = 0b00010110 = 22
    //a right shift 1 = 0b00000101 = 5
    String strTest = """
    let bitTest0 = 11 & 6
    let bitTest1 = 11 | 6
    let bitTest2 = 11 ^ 6
    let bitTest3 = ~11
    let bitTest4 = 11 << 1
    let bitTest5 = 11 >> 1
    let bitTest6 = ~~(3+8)
    """;
    executeInNoReturn(strTest, {}, {
      'bitTest0': 2,
      'bitTest1': 15,
      'bitTest2': 13,
      'bitTest3': ~11,
      'bitTest4': 22,
      'bitTest5': 5,
      'bitTest6': ~~11,
    });
  });
  test('boolTest', () {
    String strTest = """
    var boolTest1 = true
    var boolTest2 = false
    """;
    executeInNoReturn(strTest, {}, {
      'boolTest1': true,
      'boolTest2': false,
    });
  });

  test('funcTest', () {
    String strTest = """
    var roundTest = round(4.8)
    var ceilTest = ceil(4.8)
    var floorTest = floor(4.8)
    """;
    executeInNoReturn(strTest, {}, {
      'roundTest': 5,
      'ceilTest': 5,
      'floorTest': 4,
    });
  });

  test('stringTest', () {
    String strTest = """
    var stringTest = "문자열 테스트String1"
    var stringAddTest = "문자" + "열테스트1"
    var stringAddTest1 = "문자열테스트1"
    var stringAddTest2 = stringAddTest == stringAddTest1
    var stringTest2 = "문자열 속 * 나 / 등이 들어가 있어도 멀정함."
    var stringTest3 = "문자열 속 '따음표'가 들어가도 멀쩡함."
    """;
    executeInNoReturn(strTest, {}, {
      'stringTest': "문자열 테스트String1",
      'stringAddTest': "문자열테스트1",
      'stringAddTest1': "문자열테스트1",
      'stringAddTest2': true,
      'stringTest2': """문자열 속 * 나 / 등이 들어가 있어도 멀정함.""",
      'stringTest3': """문자열 속 '따음표'가 들어가도 멀쩡함.""",
    });
  });

  test('compTest', () {
    String strTest = """
    let numberTest0 = -5.5
    var comp1 = numberTest0==-5.5
    var comp2 = numberTest0 >= -5.5
    var comp3 = numberTest0 > -5.5
    """;
    executeInNoReturn(
        strTest, {}, {'comp1': true, 'comp2': true, 'comp3': false});
  });
  test('addTest', () {
    var addTestStr = """
    var test_alpha = 1
    test_alpha+=3
    var test_beta = 1
    test_beta -= 5
    """;
    executeInNoReturn(addTestStr, {}, {'test_alpha': 4, 'test_beta': -4});
  });

  test('multiple Test', () {
    String strTest = """
    var multiple_test_1 = and(not(and(true, false)), true)
    """;
    executeInNoReturn(strTest, {}, {'multiple_test_1': true});
  });

  test('return Test', () {
    String strTest = """
    numberTest0 < 0
    """;
    String strTest1 = """
    numberTest4 >= 19
    """;
    executeInReturn(strTest, {'numberTest0': -5.5}, true, singleLine: true);
    executeInReturn(strTest1, {'numberTest4': 18}, false, singleLine: true);
  });

  test('global variable Test', () {
    String strTest = """
    let globalTest = 123
    let globalTest_other = 123
    """;
    String strGlobalTest = """
    if(globalTest == 123){
      var T = true
    }else{
      var T2 = false
    }
    var existTest = exist("T")
    var existTest2 = exist("T2")
    setVisible("globalTest", true)
    setVisible("globalTest_other", false)
    var visibleTest = isVisible("globalTest")
    var visibleTest_other = isVisible("globalTest_other")
    """;
    VariableDataBase().enterStackFrame();

    VariableDataBase().enterStackFrame();
    Analyser().run(Analyser().analyseMultiLine(strTest));
    VariableDataBase().exitStackFrame();

    VariableDataBase().enterStackFrame();
    Analyser().run(Analyser().analyseMultiLine(strGlobalTest));
    expect(ins.getValueType('T')?.dataUnzip, true);
    expect(ins.getValueType('existTest')?.dataUnzip, true);
    expect(ins.getValueType('existTest2')?.dataUnzip, false);

    expect(ins.getValueTypeWrapper('globalTest')?.visible, true);
    expect(ins.getValueTypeWrapper('globalTest_other')?.visible, false);
    expect(ins.getValueType('visibleTest')?.dataUnzip, true);
    expect(ins.getValueType('visibleTest_other')?.dataUnzip, false);
    VariableDataBase().exitStackFrame();
  });
  test('comment test', () {
    String strTest = """
      var commentTest = 123
      //이건 해석하면 안되는 문장. var asb = 0
      var commentTest1 = 0
    """;
    executeInNoReturn(strTest, {}, {
      'commentTest': 123,
      'asb': null,
      'commentTest1': 0,
    });
  });

  test('simpleTest', () {
    String strTest1 = "true";
    executeInReturn(strTest1, {}, true, singleLine: true);
    String strTest2 = "false";
    executeInReturn(strTest2, {}, false, singleLine: true);
  });

  test('nodeTest', () {
    String strTest1 = "테스트용:random == 3";
    executeInReturn(strTest1, {"테스트용:random": 3}, true, singleLine: true);
  });

  test('error list test', () {
    String strTest1 = "!@#\$!@\$!@#";
    Analyser().analyseSingleLine(strTest1, pos: "pos[0, 3, 5]");
    expect(Analyser().errorList, [
      'pos[0, 3, 5], Exception: Compile Error, check syntax and try again.'
    ]);
  });
}
