import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main(){
  test('arrayTest0', () {
    var ins = VariableDataBase();
    String strTest = """
    var array_test0 = []
    var array_test1 = [1, 2, 3, 4] 
    var array_test2 = [true, false, true, true] 
    var array_test3 = [3.5, 2.4,1.5,  1.8] 
    var array_test4 = 0..4
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('array_test0')?.dataUnzip, []);
    expect(ins.getValueType('array_test1')?.dataUnzip, [1, 2, 3, 4]);
    expect(ins.getValueType('array_test2')?.dataUnzip, [true, false, true, true]);
    var expectOutput = [3.5, 2.4, 1.5, 1.8];
    var actualOutput = ins.getValueType('array_test3')?.dataUnzip;
    expect(expectOutput.length, actualOutput?.length);
    for(var i = 0; i < expectOutput.length; i++){
      expect(expectOutput[i], closeTo(actualOutput[i], 0.01));
    }
    expect(ins.getValueType('array_test4')?.dataUnzip, [0, 1, 2, 3]);
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