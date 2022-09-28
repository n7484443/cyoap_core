import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void expectMultiple(List<String> code, Map<String, dynamic> input){
  Analyser().run(code);
  for(var key in input.keys){
    expect(VariableDataBase().getValueType(key)?.dataUnzip, input[key]);
  }
}