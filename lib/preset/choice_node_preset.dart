import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_node_preset.freezed.dart';
part 'choice_node_preset.g.dart';

@freezed
class ChoiceNodeDesignPreset with _$ChoiceNodeDesignPreset {
  @JsonSerializable(explicitToJson: true)
  factory ChoiceNodeDesignPreset({
    @Default(true) bool isCard,
    @Default(true) bool isRound,
    @Default(false) bool maximizingImage, //true: 80%, false: 50%
    @Default(false) bool hideTitle,
    @Default(0) int imagePosition, //0:default, 1:image-right 2:image-left
    @Default(0xFFFFFFFF) int colorNode,
    @Default(0xFF40C4FF) int colorSelectNode,
    @Default('default') String presetName,
  }) = _ChoiceNodeDesignPreset;

  factory ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignPresetFromJson(json);
}