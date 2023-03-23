import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'node_preset.freezed.dart';
part 'node_preset.g.dart';

enum Outline {
  none,
  solid,
  dotted,
  dashed;

  @override
  String toString() => name.i18n;

  const Outline();
}

@freezed
class ChoiceNodeDesignPreset with _$ChoiceNodeDesignPreset {
  @JsonSerializable(explicitToJson: true)
  const factory ChoiceNodeDesignPreset({
    required String name,
    @Default(true) bool titlePosition,
    @Default(0.0) double elevation,
    @Default(0.0) double round,
    @Default(0.0) double padding,
    @Default(false) bool maximizingImage, //true: 80%, false: 50%
    @Default(false) bool hideTitle,
    @Default(0) int imagePosition, //0:default, 1:image-right 2:image-left
    @Default(0xFFFFFFFF) int colorNode,
    @Default(0xFF40C4FF) int colorSelectNode,
    @Default(0xFF000000) int colorTitle,
    @Default("notoSans") String titleFont,
    @Default("notoSans") String mainFont,
    @Default(Outline.solid) Outline outline,
    @Default(0.0) double outlinePadding,
    @Default(2.0) double outlineWidth,
  }) = _ChoiceNodeDesignPreset;

  factory ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignPresetFromJson(json);
}
