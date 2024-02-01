import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main() {
  test('forTest0', () {
    var ins = VariableDataBase();
    String strTest = """
    var for_test_0 = 0
    for(i in 0..10){
      for_test_0 += i
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('for_test_0')?.dataUnzip, 45);
  });
  test('forTest1', () {
    var ins = VariableDataBase();
    String strTest = """
    var for_test_1 = 0
    for(i in 0..10)
    {
      for_test_1 += i
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('for_test_1')?.dataUnzip, 45);
  });
  test('forTest2', () {
    var ins = VariableDataBase();
    String strTest = """
    var for_test_output_2 = 0
    var for_test_2 = 10
    for(i in 0..for_test_2)
    {
      for_test_output_2 += i
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('for_test_output_2')?.dataUnzip, 45);
  });
  test('forTest3', () {
    var ins = VariableDataBase();
    String strTest = """
    var min = 1
    var max = 4
    var for_test_output_3 = 1
    for(i in min..max){
        for_test_output_3 *= i
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('for_test_output_3')?.dataUnzip, 6);
  });
  test('forBreakTest', () {
    var ins = VariableDataBase();
    String strTest = """
    var for_break_test_0 = 0
    for(i in 0..10){
      for_break_test_0 += i
      if(i == 5){
        break
      }
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('for_break_test_0')?.dataUnzip, 15);
  });
  test('forContinueTest', () {
    var ins = VariableDataBase();
    String strTest = """
    var for_continue_test_0 = 0
    for(i in 0..10){
      if(i == 5){
        continue
      }
      for_continue_test_0 += i
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('for_continue_test_0')?.dataUnzip, 40);
  });
}
