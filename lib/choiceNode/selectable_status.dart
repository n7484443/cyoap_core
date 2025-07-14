import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_status.freezed.dart';
part 'selectable_status.g.dart';

@freezed
abstract class SelectableStatus with _$SelectableStatus {
  const factory SelectableStatus(
      {@Default(false) bool isHide,
      @Default(false) bool isOpen}) = _SelectableStatus;

  factory SelectableStatus.fromJson(Map<String, dynamic> json) =>
      _$SelectableStatusFromJson(json);
}
