import 'package:cyoap_core/grammar/analyser.dart';
import 'package:test/test.dart';

void main() {
  test('test', () {
    String strTest1 = """
      var a = 1
      var b = 1
    """;
    String strTest2 = """
      a >= b*(9/3)
    """;
    Analyser().run(Analyser().analyseMultiLine(strTest1));
    var out = Analyser().run(Analyser().analyseSingleLine(strTest2));
    expect(out, false);
  });
}
