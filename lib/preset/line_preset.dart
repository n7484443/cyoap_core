import 'package:freezed_annotation/freezed_annotation.dart';

import 'node_preset.dart';

part 'line_preset.freezed.dart';
part 'line_preset.g.dart';

@freezed
class ChoiceLineDesignPreset with _$ChoiceLineDesignPreset {
  @JsonSerializable(explicitToJson: true)
  const factory ChoiceLineDesignPreset(
      {required String name,
      @Default(ColorOption(color: 0)) ColorOption backgroundColorOption,
      String? backgroundImageString,
      @Default(false) bool alwaysVisibleLine}) = _ChoiceLineDesignPreset;

  factory ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineDesignPresetFromJson(json);
}
