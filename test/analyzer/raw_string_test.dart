import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main() {
  test('raw string getter test', () {
    var strTest1 = r"$[!@#$%^ &*()-=+_] == 'test1'";
    var strTest2 = r"$[테스트 노드] == 'test2'";
    executeInReturn(strTest1,
        {r'!@#$%^ &*()-=+_' : "test1"},
        true, singleLine: true);
    executeInReturn(strTest2,
        {r'테스트 노드' : "test2"},
        true, singleLine: true);
  });
  test('raw string setter test', () {
    var strTest1 = r"var $[!@#$%^ &*()-=+_] = 'test1'";
    var strTest2 = r"var $[테스트 노드] = 'test2'";
    executeInNoReturn(strTest1, {}, {r'!@#$%^ &*()-=+_' : 'test1'});
    executeInNoReturn(strTest2, {}, {r'테스트 노드' : 'test2'});
  });

  test('raw string complicated test', () {
    var strTest1 = r"$[테스트 노드[테스트\]] == 'test1'";
    executeInReturn(strTest1,
        {r'테스트 노드[테스트]' : "test1"},
        true, singleLine: true);
  });
}
