import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main(){
  test('forTest', () {
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