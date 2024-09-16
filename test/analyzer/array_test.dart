import 'package:cyoap_core/grammar/value_type.dart';
import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main() {
  test('arrayTest0', () {
    String strTest = """
    var array_test0 = []
    var array_test1 = [1, 2, 3, 4] 
    var array_test2 = [true, false, true, true] 
    var array_test3 = [3.5, 2.4,1.5,  1.8] 
    var array_test4 = 0..4
    """;
    executeInNoReturn(strTest, {}, {
      'array_test0': [],
      'array_test1': [1, 2, 3, 4].map((e) => getValueTypeFromDynamicInput(e)).toList(),
      'array_test2': [true, false, true, true] .map((e) => getValueTypeFromDynamicInput(e)).toList(),
      'array_test3': [3.5, 2.4, 1.5, 1.8].map((e) => getValueTypeFromDynamicInput(e)).toList(),
      'array_test4': [0, 1, 2, 3].map((e) => getValueTypeFromDynamicInput(e)).toList(),
    });
  });
  test('arrayTest1', () {
    String strTest = """
    var arrayTest1_0 = [1+2, 3*4, 5/6, 7-8, 10]
    arrayTest1_0[4] = 2
    var arrayTest1_1 = arrayTest1_0[0]
    var arrayTest1_2 = arrayTest1_0[4]
    """;
    List list =
        [3, 12, 0, -1, 2].map((e) => getValueTypeFromDynamicInput(e)).toList();
    executeInNoReturn(strTest, {},
        {'arrayTest1_0': list, 'arrayTest1_1': 3, 'arrayTest1_2': 2});
  });
  test('arraySettingTest0', () {
    String strTest = """
    var array_test = []
    array_test.put(1)
    array_test.put(2)
    array_test.remove(0)
    var array_length = array_test.length
    """;
    executeInNoReturn(strTest, {}, {
      'array_test': [2],
      'array_length': 1
    });
  });
}
