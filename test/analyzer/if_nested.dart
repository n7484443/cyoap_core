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
    print(code);

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
    expectMultiple(code, {
      'nested_test0_0': 0,
      'nested_test0_1': 1,
      'nested_test0_input1': 0,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(1)), ValueTypeLocation.local);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
    expectMultiple(code, {
      'nested_test0_0': -10,
      'nested_test0_1': 1,
      'nested_test0_input1': 1,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(2)), ValueTypeLocation.local);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
    expectMultiple(code, {
      'nested_test0_0': -25,
      'nested_test0_1': 1,
      'nested_test0_input1': 2,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(3)), ValueTypeLocation.local);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
    expectMultiple(code, {
      'nested_test0_0': -60,
      'nested_test0_1': 1,
      'nested_test0_input1': 3,
    });

    ins.setValue('nested_test0_input0', ValueTypeWrapper(ValueType.int(4)), ValueTypeLocation.local);
    ins.setValue('nested_test0_input1', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
    expectMultiple(code, {
      'nested_test0_0': -85,
      'nested_test0_1': 1,
      'nested_test0_input1': 4,
    });
  });

  test('nested_if_test1', ()
  {
    var ins = VariableDataBase();
    String strTest = """
    if (A3:random==0) {
      point += 1
    } else {
      if (A3:random==1) {
        point += 2
      } else {
        if (A3:random==2) {
          point += 3
        } else {
          if (A3:random==3) {
            point += 4
          } else {
            if (A3:random==4) {
              point += 5
            } else {
              if (A3:random==5) {
                point += 6
              } else {
                if (A3:random==6) {
                  point += 7
                } else {
                  if (A3:random==7) {
                    point += 8
                  } else {
                    if (A3:random==8) {
                      point += 9
                    } else {
                      if (A3:random==10) {
                        point += 10
                      } else {
                        if (A3:random==11) {
                          point += 11
                        } else {
                          if (A3:random==12) {
                            point += 12
                          } else {
                            if (A3:random==13) {
                              point += 13
                            } else {
                              if (A3:random==14) {
                                point += 14
                              } else {
                                if (A3:random==15) {
                                  point += 15
                                } else {
                                  if (A3:random==16) {
                                    point += 16
                                  } else {
                                    if (A3:random==17) {
                                      point += 17
                                    } else {
                                      if (A3:random==18) {
                                        point += 18
                                      } else {
                                        if (A3:random==19) {
                                          point += 19
                                        } else {
                                          if (A3:random==20) {
                                            point += 20
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    """;
    var code = Analyser().analyseMultiLine(strTest);
    for (int i = 0; i <= 8; i++) {
      ins.setValue(
          'point', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
      ins.setValue('A3:random', ValueTypeWrapper(ValueType.int(i)),
          ValueTypeLocation.local);
      expectMultiple(code, {
        'point': i + 1,
      });
    }
    for (int i = 10; i <= 20; i++) {
      ins.setValue(
          'point', ValueTypeWrapper(ValueType.int(0)), ValueTypeLocation.local);
      ins.setValue('A3:random', ValueTypeWrapper(ValueType.int(i)),
          ValueTypeLocation.local);
      expectMultiple(code, {
        'point': i,
      });
    }
  });
}
