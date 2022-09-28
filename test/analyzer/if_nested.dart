import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main() {
  test('nested_if_test0', () {
    var ins = VariableDataBase();
    String strTest = """
    var nested_test0_0 = 0
    var nested_test0_1 = 0
    if(nested_test0_input0 == 1){
      nested_test0_0 -= 10
      if(nested_test0_input1 < 1){
        nested_test0_input1 = 1
      }
    }else{
      if(nested_test0_input0 == 2){
        nested_test0_0 -= 25
        if(nested_test0_input1 < 2){
          nested_test0_input1 = 2
        }
      }else{
        if(nested_test0_input0 == 3){
          nested_test0_0 -= 60
      
          if(nested_test0_input1 < 3){
            nested_test0_input1 = 3
          }
        }else{
          if(nested_test0_input0 == 4){
            nested_test0_0 -= 85
      
            if(nested_test0_input1 < 4){
              nested_test0_input1 = 4
            }
          }
        }
      }
    }
    
    nested_test0_1 += 1
    """;
    var code = Analyser().analyseMultiLine(strTest);

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(0)), isGlobal: false);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), isGlobal: false);
    expectMultiple(code, {
      'nested_test0_0': 0,
      'nested_test0_1': 1,
      'nested_test0_input1': 0,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(1)), isGlobal: false);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), isGlobal: false);
    expectMultiple(code, {
      'nested_test0_0': -10,
      'nested_test0_1': 1,
      'nested_test0_input1': 1,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(2)), isGlobal: false);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), isGlobal: false);
    expectMultiple(code, {
      'nested_test0_0': -25,
      'nested_test0_1': 1,
      'nested_test0_input1': 2,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(3)), isGlobal: false);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), isGlobal: false);
    expectMultiple(code, {
      'nested_test0_0': -60,
      'nested_test0_1': 1,
      'nested_test0_input1': 3,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(4)), isGlobal: false);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), isGlobal: false);
    expectMultiple(code, {
      'nested_test0_0': -85,
      'nested_test0_1': 1,
      'nested_test0_input1': 4,
    });
  });
}
