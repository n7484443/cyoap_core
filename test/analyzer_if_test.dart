import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

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

  test('ifNestedTest0', () {
    var ins = VariableDataBase();
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
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('ifNestedTest0_0')?.dataUnzip, true);
    expect(ins.getValueType('ifNestedTest0_1')?.dataUnzip, true);
    expect(ins.getValueType('ifNestedTest0_2')?.dataUnzip, null);
  });

  test('ifNestedTest1', () {
    var ins = VariableDataBase();
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
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('ifNestedTest1_0')?.dataUnzip, true);
    expect(ins.getValueType('ifNestedTest1_1')?.dataUnzip, true);
    expect(ins.getValueType('ifNestedTest1_2')?.dataUnzip, null);
    expect(ins.getValueType('ifNestedTest1_3')?.dataUnzip, null);
  });

  test('ifSpacedTest0', () {
    var ins = VariableDataBase();
    String strTest = """
    if(true){
      var ifSpacedTest0_0 = true
    }
    else
    {
      var ifSpacedTest0_1 = true
    }
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('ifSpacedTest0_0')?.dataUnzip, true);
    expect(ins.getValueType('ifSpacedTest0_1')?.dataUnzip, null);
  });

  test('if_elseIfTest0', () {
    var ins = VariableDataBase();
    String strTest = """
    if(if_elseIfTest0_input0){
      var if_elseIfTest0_0 = true}
    else if(if_elseIfTest0_input1)
    {
      var if_elseIfTest0_1 = true
    }else{var if_elseIfTest0_2 = true}
    """;


    ins.setValue('if_elseIfTest0_input0', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    ins.setValue('if_elseIfTest0_input1', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('if_elseIfTest0_0')?.dataUnzip, null);
    expect(ins.getValueType('if_elseIfTest0_1')?.dataUnzip, null);
    expect(ins.getValueType('if_elseIfTest0_2')?.dataUnzip, true);

    ins.setValue('if_elseIfTest0_input0', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    ins.setValue('if_elseIfTest0_input1', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('if_elseIfTest0_0')?.dataUnzip, true);
    expect(ins.getValueType('if_elseIfTest0_1')?.dataUnzip, null);
    expect(ins.getValueType('if_elseIfTest0_2')?.dataUnzip, null);

    ins.setValue('if_elseIfTest0_input0', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    ins.setValue('if_elseIfTest0_input1', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('if_elseIfTest0_0')?.dataUnzip, null);
    expect(ins.getValueType('if_elseIfTest0_1')?.dataUnzip, true);
    expect(ins.getValueType('if_elseIfTest0_2')?.dataUnzip, null);

    ins.setValue('if_elseIfTest0_input0', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    ins.setValue('if_elseIfTest0_input1', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('if_elseIfTest0_0')?.dataUnzip, true);
    expect(ins.getValueType('if_elseIfTest0_1')?.dataUnzip, null);
    expect(ins.getValueType('if_elseIfTest0_2')?.dataUnzip, null);
  });
}