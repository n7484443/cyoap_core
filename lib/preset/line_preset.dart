import 'package:freezed_annotation/freezed_annotation.dart';

import 'node_preset.dart';

part 'line_preset.freezed.dart';
part 'line_preset.g.dart';

enum ChoiceLineAlignment { left, center, right }

@freezed
class ChoiceLineDesignPreset with _$ChoiceLineDesignPreset {
  @JsonSerializable(explicitToJson: true)
  const factory ChoiceLineDesignPreset({
    String? name,
    @Default(ColorOption(color: 0)) ColorOption? backgroundColorOption,
    String? backgroundImageString,
    @Default(false) bool? alwaysVisibleLine,
    @Default(ChoiceLineAlignment.left) ChoiceLineAlignment? alignment,
  }) = _ChoiceLineDesignPreset;

  const ChoiceLineDesignPreset._();

  static ChoiceLineDesignPreset emptyPreset(){
    return ChoiceLineDesignPreset(
      name: null,
      backgroundColorOption: null,
      backgroundImageString: null,
      alwaysVisibleLine: null,
      alignment: null,
    );
  }

  ChoiceLineDesignPreset getPresetWithOverride(ChoiceLineDesignPreset? override){
    return ChoiceLineDesignPreset(
      name: override?.name ?? name,
      backgroundColorOption: override?.backgroundColorOption ?? backgroundColorOption,
      backgroundImageString: override?.backgroundImageString ?? backgroundImageString,
      alwaysVisibleLine: override?.alwaysVisibleLine ?? alwaysVisibleLine,
      alignment: override?.alignment ?? alignment,
    );
  }

  factory ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineDesignPresetFromJson(json);
}
