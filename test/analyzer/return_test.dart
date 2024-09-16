import 'package:test/test.dart';

import 'analyzer_tool.dart';

void main() {
  test('test', () {
    String strTest1 = """
      var a = 1
      var b = 1
      return a >= b*(9/3)
    """;
    executeInReturn(strTest1, {}, false);
  });
}
