import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main(){
  test('arrayTest0', () {
    var ins = VariableDataBase();
    String strTest = """
    var array_test = []
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('array_test')?.dataUnzip, []);
  });
  test('arrayTest1', () {
    var ins = VariableDataBase();
    String strTest = """
    var array_test = [1, 2, 3, 4] 
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('array_test')?.dataUnzip, [1, 2, 3, 4]);
  });
  test('arrayTest2', () {
    var ins = VariableDataBase();
    String strTest = """
    var array_test = [true, false, true, true] 
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('array_test')?.dataUnzip, [true, false, true, true]);
  });
  test('arrayTest3', () {
    var ins = VariableDataBase();
    String strTest = """
    var array_test = [3.5, 2.4,1.5,  1.8] 
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    var expectOutput = [3.5, 2.4,1.5,  1.8];
    var actualOutput = ins.getValueType('for_break_test_0')?.dataUnzip;
    expect(expectOutput.length, actualOutput?.length);
    for(var i = 0; i < expectOutput.length; i++){
      expect(expectOutput[i], actualOutput[i]);
    }
  });
  test('arraySettingTest0', () {
    var ins = VariableDataBase();
    String strTest = """
    var array_test = []
    array_test.put(1)
    array_test.put(2)
    array_test.remove(0)
    var array_length = array_test.length
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('array_test')?.dataUnzip, [2]);
    expect(ins.getValueType('array_length')?.dataUnzip, 1);
  });
}