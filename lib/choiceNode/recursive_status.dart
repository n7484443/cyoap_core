import 'package:cyoap_core/grammar/analyser.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recursive_status.g.dart';

final RegExp textFinder = RegExp(r"\{\{(.*?)\}\}");
final RegExp textFinderAll = RegExp(r"\{\{.*?\}\}");

@JsonSerializable(explicitToJson: true)
class RecursiveStatus {
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

  RecursiveStatus({
    this.conditionClickableString,
    this.conditionVisibleString,
    this.executeCodeString,
  });

  factory RecursiveStatus.fromJson(Map<String, dynamic> json) =>
      _$RecursiveStatusFromJson(json);

  Map<String, dynamic> toJson() => _$RecursiveStatusToJson(this);

  void compile(String pos, {String? text}) {
    conditionClickableCode =
        Analyser().analyseSingleLine(conditionClickableString, pos: pos);
    conditionVisibleCode =
        Analyser().analyseSingleLine(conditionVisibleString, pos: pos);
    executeCode = Analyser().analyseMultiLine(executeCodeString, pos: pos);
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
