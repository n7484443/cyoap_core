import 'package:freezed_annotation/freezed_annotation.dart';

import 'node_preset.dart';

part 'line_preset.freezed.dart';
part 'line_preset.g.dart';

@freezed
class ChoiceLineDesignPreset with _$ChoiceLineDesignPreset {
  @JsonSerializable(explicitToJson: true)
  const factory ChoiceLineDesignPreset({
    String? name,
    @Default(ColorOption(color: 0)) ColorOption? backgroundColorOption,
    String? backgroundImageString,
    @Default(false) bool? alwaysVisibleLine,
    @Default(12) int? maxChildrenPerRow,
  }) = _ChoiceLineDesignPreset;

  const ChoiceLineDesignPreset._();

  static ChoiceLineDesignPreset emptyPreset(){
    return ChoiceLineDesignPreset(
      name: null,
      backgroundColorOption: null,
      backgroundImageString: null,
      alwaysVisibleLine: null,
      maxChildrenPerRow: null,
    );
  }

  ChoiceLineDesignPreset getPresetWithOverride(ChoiceLineDesignPreset? override){
    return ChoiceLineDesignPreset(
      name: override?.name ?? name,
      backgroundColorOption: override?.backgroundColorOption ?? backgroundColorOption,
      backgroundImageString: override?.backgroundImageString ?? backgroundImageString,
      alwaysVisibleLine: override?.alwaysVisibleLine ?? alwaysVisibleLine,
      maxChildrenPerRow: override?.maxChildrenPerRow ?? maxChildrenPerRow,
    );
  }

  factory ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineDesignPresetFromJson(json);
}
