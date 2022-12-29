import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_line_preset.freezed.dart';
part 'choice_line_preset.g.dart';

@freezed
class ChoiceLineDesignPreset with _$ChoiceLineDesignPreset {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChoiceLineDesignPreset({
    required String name,
    int? backgroundColor,
    String? backgroundImageString,
    @Default(false) bool alwaysVisibleLine
  }) = _ChoiceLineDesignPreset;


  factory ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineDesignPresetFromJson(json);
}