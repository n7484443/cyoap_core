import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
  test('ifTest', () {
    var ins = VariableDataBase();
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
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('if_test_alpha')?.dataUnzip, true);
    expect(ins.getValueType('if_test_beta')?.dataUnzip, null);
    expect(ins.getValueType('if_test_gamma')?.dataUnzip, true);
  });

  test('ifNestedTest', () {
    var ins = VariableDataBase();
    String strTest = """
    if(true){
      if(true){
        var testValue0 = true
        if(true){
          var testValue1 = true
        }
      }
    }else{
      var testValue2 = true;
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('testValue0')?.dataUnzip, true);
    expect(ins.getValueType('testValue1')?.dataUnzip, true);
    expect(ins.getValueType('testValue2')?.dataUnzip, null);
  });

  test('ifSpacedTest', () {
    var ins = VariableDataBase();
    String strTest = """
    if(true){
      var ifSpacedTest0 = true
    }
    else
    {
      var ifSpacedTest1 = true;
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('ifSpacedTest0')?.dataUnzip, true);
    expect(ins.getValueType('ifSpacedTest1')?.dataUnzip, null);
  });
}