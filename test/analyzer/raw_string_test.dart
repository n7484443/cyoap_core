import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void main() {
  test('raw string getter test', () {
    VariableDataBase db = VariableDataBase();
    db.setValue(r'!@#$%^ &*()-=+_', ValueTypeWrapper(ValueType.string("test1")),
        ValueTypeLocation.local);
    db.setValue(r'테스트 노드', ValueTypeWrapper(ValueType.string("test2")),
        ValueTypeLocation.local);
    var strTest1 = r"$[!@#$%^ &*()-=+_] == 'test1'";
    var strTest2 = r"$[테스트 노드] == 'test2'";
    var code1 = Analyser().analyseSingleLine(strTest1);
    var code2 = Analyser().analyseSingleLine(strTest2);
    var output1 = Analyser().run(code1);
    var output2 = Analyser().run(code2);
    expect(output1, true);
    expect(output2, true);
  });
  test('raw string setter test', () {
    VariableDataBase db = VariableDataBase();
    var strTest1 = r"var $[!@#$%^& *()-=+_] = 'test1'";
    var strTest2 = r"var $[테스트 노드] = 'test2'";
    var code1 = Analyser().analyseMultiLine(strTest1);
    var code2 = Analyser().analyseMultiLine(strTest2);
    Analyser().run(code1);
    Analyser().run(code2);
    expect(db.getValueType(r'!@#$%^ &*()-=+_')?.data, 'test1');
    expect(db.getValueType(r'테스트 노드')?.data, 'test2');
  });
}
