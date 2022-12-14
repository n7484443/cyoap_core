import 'package:cyoap_core/grammar/analyser.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recursive_status.g.dart';

@JsonSerializable(explicitToJson: true)
class RecursiveStatus {
  @JsonKey(defaultValue: [])
  List<String> conditionClickableCode = [];
  @JsonKey(defaultValue: [])
  List<String> conditionVisibleCode = [];
  @JsonKey(defaultValue: [])
  List<String> executeCode = [];

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

  void generateParser(String pos) {
    conditionClickableCode =
        Analyser().analyseSingleLine(conditionClickableString, pos: pos);
    conditionVisibleCode =
        Analyser().analyseSingleLine(conditionVisibleString, pos: pos);
    executeCode = Analyser().analyseMultiLine(executeCodeString, pos: pos);
  }

  bool analyseVisible(String errorName, {int? seedInput}) {
    return Analyser()
            .run(conditionVisibleCode, pos: errorName, seedInput: seedInput) ??
        true;
  }

  bool analyseClickable(String errorName, {int? seedInput}) {
    return Analyser().run(conditionClickableCode,
            pos: errorName, seedInput: seedInput) ??
        true;
  }

  void execute(String errorName, {int? seedInput}) {
    Analyser().run(executeCode, pos: errorName, seedInput: seedInput);
  }
}
