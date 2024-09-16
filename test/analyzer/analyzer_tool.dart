import 'package:cyoap_core/grammar/analyser.dart';
import 'package:cyoap_core/grammar/value_type.dart';
import 'package:cyoap_core/variable_db.dart';
import 'package:test/test.dart';

void execute(String code) {
  var compiledCode = Analyser().analyseMultiLine(code);
  VariableDataBase().clearStackFrames();
  VariableDataBase().enterStackFrame();
  Analyser().run(compiledCode);
}

void executeInNoReturn(String code, Map<String, dynamic> input, Map<String, dynamic> output) {
  List<(String, ValueTypeWrapper)> list = List.empty(growable: true);
  for (var key in input.keys) {
    var valueTypeWrapper = ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(input[key]));
    list.add((key, valueTypeWrapper));
  }
  VariableDataBase().initializeGlobalSetting(list);
  List<String> compiledCode = Analyser().analyseMultiLine(code);
  Analyser().run(compiledCode);
  for (var key in output.keys) {
    expect(VariableDataBase().getValueType(key)?.dataUnzip, output[key], reason: key);
  }
  VariableDataBase().clearStackFrames();
}

void executeInReturn(String code, Map<String, dynamic> input, dynamic output, {bool singleLine = false}) {
  List<(String, ValueTypeWrapper)> list = List.empty(growable: true);
  for (var key in input.keys) {
    var valueTypeWrapper = ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(input[key]));
    list.add((key, valueTypeWrapper));
  }
  VariableDataBase().initializeGlobalSetting(list);
  List<String> compiledCode;
  if(singleLine){
    compiledCode = Analyser().analyseSingleLine(code);
  }else{
    compiledCode = Analyser().analyseMultiLine(code);
  }
  dynamic out = Analyser().run(compiledCode);
  print(VariableDataBase().stackFrames);
  VariableDataBase().clearStackFrames();
  expect(out, output);
}

void expectMultiple(String code, Map<String, dynamic> output, {Map<String, dynamic>? input}) {
  var compiledCode = Analyser().analyseMultiLine(code);
  if (input != null) {
    List<(String, ValueTypeWrapper)> list = List.empty(growable: true);
    for (var key in input.keys) {
      var valueTypeWrapper = ValueTypeWrapper(valueType: getValueTypeFromDynamicInput(input[key]));
      list.add((key, valueTypeWrapper));
    }
    VariableDataBase().initializeGlobalSetting(list);
  }else{
    VariableDataBase().enterStackFrame();
  }
  Analyser().run(compiledCode);
  for (var key in output.keys) {
    expect(VariableDataBase().getValueType(key)?.dataUnzip, output[key], reason: key);
  }
}
