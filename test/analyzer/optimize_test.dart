import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main(){
  test('optimize_bool', (){
    var ins = VariableDataBase();
    String strTest = """
    if(optimize_bool_input_0 == true){
      var optimize_bool_output_0 = true
    }else{
      var optimize_bool_output_0 = false
    }
    if(optimize_bool_input_1 == false){
      var optimize_bool_output_1 = true
    }else{
      var optimize_bool_output_1 = false
    }
    var optimize_bool_output_2 = optimize_bool_input_2 == true
    var optimize_bool_output_3 = optimize_bool_input_3 == false
    """;

    ins.setValue('optimize_bool_input_0', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    ins.setValue('optimize_bool_input_1', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    ins.setValue('optimize_bool_input_2', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    ins.setValue('optimize_bool_input_3', ValueTypeWrapper(ValueType.bool(false)), isGlobal: false);
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('optimize_bool_output_0')?.dataUnzip, false);
    expect(ins.getValueType('optimize_bool_output_1')?.dataUnzip, true);
    expect(ins.getValueType('optimize_bool_output_2')?.dataUnzip, false);
    expect(ins.getValueType('optimize_bool_output_3')?.dataUnzip, true);

    ins.setValue('optimize_bool_input_0', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    ins.setValue('optimize_bool_input_1', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    ins.setValue('optimize_bool_input_2', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    ins.setValue('optimize_bool_input_3', ValueTypeWrapper(ValueType.bool(true)), isGlobal: false);
    Analyser().run(Analyser().analyseMultiLine(strTest));
    expect(ins.getValueType('optimize_bool_output_0')?.dataUnzip, true);
    expect(ins.getValueType('optimize_bool_output_1')?.dataUnzip, false);
    expect(ins.getValueType('optimize_bool_output_2')?.dataUnzip, true);
    expect(ins.getValueType('optimize_bool_output_3')?.dataUnzip, false);
  });
}