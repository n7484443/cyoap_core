import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'layout.dart';

part 'line_preset.freezed.dart';
part 'line_preset.g.dart';

enum ChoiceLineAlignment {
  left,
  center,
  right;

  @override
  String toString() => name.i18n;
}

@freezed
class ChoiceLineDesignPreset with _$ChoiceLineDesignPreset {
  const factory ChoiceLineDesignPreset({
    String? name,
    @Default(ColorOption(color: 0)) ColorOption? backgroundColorOption,
    String? backgroundImageString,
    @Default(false) bool? alwaysVisibleLine,
    @Default(ChoiceLineAlignment.left) ChoiceLineAlignment? alignment,
    @Default(12) int? maxChildrenPerRow,
  }) = _ChoiceLineDesignPreset;

  const ChoiceLineDesignPreset._();

  static ChoiceLineDesignPreset emptyPreset() {
    return ChoiceLineDesignPreset(
      name: null,
      backgroundColorOption: null,
      backgroundImageString: null,
      alwaysVisibleLine: null,
      alignment: null,
      maxChildrenPerRow: null,
    );
  }

  ChoiceLineDesignPreset getPresetWithOverride(
      ChoiceLineDesignPreset? override) {
    return ChoiceLineDesignPreset(
      name: override?.name ?? name,
      backgroundColorOption:
          override?.backgroundColorOption ?? backgroundColorOption,
      backgroundImageString:
          override?.backgroundImageString ?? backgroundImageString,
      alwaysVisibleLine: override?.alwaysVisibleLine ?? alwaysVisibleLine,
      alignment: override?.alignment ?? alignment,
      maxChildrenPerRow: override?.maxChildrenPerRow ?? maxChildrenPerRow,
    );
  }

  factory ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineDesignPresetFromJson(json);
}
