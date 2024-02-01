import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void expectMultiple(List<String> code, Map<String, dynamic> output,
    {Map<String, dynamic>? input}) {
  if (input != null) {
    for (var key in input.keys) {
      VariableDataBase().setValue(
          key, ValueTypeWrapper(getValueTypeFromDynamicInput(input[key])),
          ValueTypeLocation.local);
    }
  }
  Analyser().run(code);
  for (var key in output.keys) {
    expect(VariableDataBase().getValueType(key)?.dataUnzip, output[key], reason: key);
  }
}
