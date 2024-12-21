import 'package:cyoap_core/grammar/analyser.dart';
import 'package:json_annotation/json_annotation.dart';

import '../grammar/simple_code.dart';

part 'conditional_code_handler.g.dart';

final RegExp textFinder = RegExp(r"\{\{(.*?)\}\}");
final RegExp textFinderAll = RegExp(r"\{\{.*?\}\}");

@JsonSerializable(explicitToJson: true)
class ConditionalCodeHandler {
  @JsonKey(defaultValue: [])
  List<String> conditionClickableCode = [];
  @JsonKey(defaultValue: [])
  List<String> conditionVisibleCode = [];
  @JsonKey(defaultValue: [])
  List<String> executeCode = [];
  @JsonKey(defaultValue: [[]])
  List<List<String>> textCode = [[]];

  String? conditionClickableString;
  String? conditionVisibleString;
  String? executeCodeString;

  SimpleCodes? conditionClickableSimple = SimpleCodes(type: SimpleType.condition);
  SimpleCodes? conditionVisibleSimple = SimpleCodes(type: SimpleType.condition);
  SimpleCodes? executeSimple = SimpleCodes(type: SimpleType.action);

  String? get reducedClickable{
    if(conditionClickableString != null && conditionClickableString!.isNotEmpty){
      return conditionClickableString;
    }
    return conditionClickableSimple?.toCode();
  }
  String? get reducedVisible{
    if(conditionVisibleString != null && conditionVisibleString!.isNotEmpty){
      return conditionVisibleString;
    }
    return conditionVisibleSimple?.toCode();
  }
  String? get reducedExecute{
    if(executeCodeString != null && executeCodeString!.isNotEmpty){
      return executeCodeString;
    }
    return executeSimple?.toCode();
  }

  ConditionalCodeHandler({
    this.conditionClickableString,
    this.conditionVisibleString,
    this.executeCodeString,
  });

  factory ConditionalCodeHandler.fromJson(Map<String, dynamic> json) =>
      _$ConditionalCodeHandlerFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionalCodeHandlerToJson(this);

  void compile(String pos, {String? text}) {
    conditionClickableCode =
        Analyser().analyseSingleLine(reducedClickable, pos: pos);
    conditionVisibleCode =
        Analyser().analyseSingleLine(reducedVisible, pos: pos);
    executeCode = Analyser().analyseMultiLine(reducedExecute, pos: pos);
    textCode.clear();
    textFinder.allMatches(text ?? '').forEach((element) {
      textCode.add(Analyser().analyseSingleLine(element.group(1)));
    });
  }

  bool analyseVisible(String errorName, {int? seedInput}) {
    var out = Analyser()
        .run(conditionVisibleCode, pos: errorName, seedInput: seedInput);
    if (out is bool) return out;
    return true;
  }

  bool analyseClickable(String errorName, {int? seedInput}) {
    var out = Analyser()
        .run(conditionClickableCode, pos: errorName, seedInput: seedInput);
    if (out is bool) return out;
    return true;
  }

  void execute(String errorName, {int? seedInput}) {
    Analyser().run(executeCode, pos: errorName, seedInput: seedInput);
  }

  String executeText(String errorName, int num, {int? seedInput}) {
    return Analyser()
        .run(textCode[num], pos: errorName, seedInput: seedInput)
        .toString();
  }
}
