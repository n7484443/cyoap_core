import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main(){
  test('ifTestInput', () {
    String strTest = """
    if(if_test_input_0){
      var if_test_output_0 = true
    }else{
      var if_test_output_0 = false
    }
    """;
    for(var b in [false, true]){
      executeInNoReturn(strTest, {
        'if_test_input_0': b,
      }, {
        'if_test_output_0': b,
      });
    }
  });
  test('ifTest', () {
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
    expectMultiple(strTest, {
      'if_test_alpha': true,
      'if_test_beta': null,
      'if_test_gamma': true,
    });
  });

  test('ifNestedTest0', () {
    String strTest = """
    if(true){
      if(true){
        var ifNestedTest0_0 = true
        if(true){
          var ifNestedTest0_1 = true
        }
      }
    }else{
      var ifNestedTest0_2 = true
    }
    """;
    expectMultiple(strTest, {
      'ifNestedTest0_0': true,
      'ifNestedTest0_1': true,
      'ifNestedTest0_2': null,
    });
  });

  test('ifNestedTest1', () {
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
      var ifNestedTest1_3 = true
    }
    """;
    expectMultiple(strTest, {
      'ifNestedTest1_0': true,
      'ifNestedTest1_1': true,
      'ifNestedTest1_2': null,
      'ifNestedTest1_3': null,
    });
  });

  test('ifSpacedTest0', () {
    String strTest = """
    if(true){
      var ifSpacedTest0_0 = true
    }
    else
    {
      var ifSpacedTest0_1 = true
    }
    """;
    expectMultiple(strTest, {
      'ifSpacedTest0_0': true,
      'ifSpacedTest0_1': null,
    });
  });

  test('if-elseif-else Test0', () {

    String strTest = """
    if(in == 0){
      var out = 0
    }else if(in == 1){
      var out = 1
    }else{
      var out = 2
    }
    """;
    for(int i = 0; i <= 2; i++){
      expectMultiple(strTest, {
        'out': i,
      }, input: {
        'in': i,
      });
    }
  });

  test('if-elseif-else Test1', () {

    String strTest = """
    if(in == 0){
      var out = 0
    }else if(in == 1){
      var out = 1
    }else if(in == 2){
      var out = 2
    }else if(in == 3){
      var out = 3
    }else if(in == 4){
      var out = 4
    }else{
      var out = 5
    }
    """;
    for(int i = 0; i <= 5; i++){
      expectMultiple(strTest, {
        'out': i,
      }, input: {
        'in': i,
      });
    }
  });
}