// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectableStatus _$SelectableStatusFromJson(Map<String, dynamic> json) {
  return _SelectableStatus.fromJson(json);
}

/// @nodoc
mixin _$SelectableStatus {
  bool get isHide => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;

  /// Serializes this SelectableStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectableStatusCopyWith<SelectableStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableStatusCopyWith<$Res> {
  factory $SelectableStatusCopyWith(
          SelectableStatus value, $Res Function(SelectableStatus) then) =
      _$SelectableStatusCopyWithImpl<$Res, SelectableStatus>;
  @useResult
  $Res call({bool isHide, bool isOpen});
}

/// @nodoc
class _$SelectableStatusCopyWithImpl<$Res, $Val extends SelectableStatus>
    implements $SelectableStatusCopyWith<$Res> {
  _$SelectableStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHide = null,
    Object? isOpen = null,
  }) {
    return _then(_value.copyWith(
      isHide: null == isHide
          ? _value.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectableStatusImplCopyWith<$Res>
    implements $SelectableStatusCopyWith<$Res> {
  factory _$$SelectableStatusImplCopyWith(_$SelectableStatusImpl value,
          $Res Function(_$SelectableStatusImpl) then) =
      __$$SelectableStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHide, bool isOpen});
}

/// @nodoc
class __$$SelectableStatusImplCopyWithImpl<$Res>
    extends _$SelectableStatusCopyWithImpl<$Res, _$SelectableStatusImpl>
    implements _$$SelectableStatusImplCopyWith<$Res> {
  __$$SelectableStatusImplCopyWithImpl(_$SelectableStatusImpl _value,
      $Res Function(_$SelectableStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHide = null,
    Object? isOpen = null,
  }) {
    return _then(_$SelectableStatusImpl(
      isHide: null == isHide
          ? _value.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectableStatusImpl implements _SelectableStatus {
  const _$SelectableStatusImpl({this.isHide = false, this.isOpen = false});

  factory _$SelectableStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectableStatusImplFromJson(json);

  @override
  @JsonKey()
  final bool isHide;
  @override
  @JsonKey()
  final bool isOpen;

  @override
  String toString() {
    return 'SelectableStatus(isHide: $isHide, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableStatusImpl &&
            (identical(other.isHide, isHide) || other.isHide == isHide) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHide, isOpen);

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectableStatusImplCopyWith<_$SelectableStatusImpl> get copyWith =>
      __$$SelectableStatusImplCopyWithImpl<_$SelectableStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectableStatusImplToJson(
      this,
    );
  }
}

abstract class _SelectableStatus implements SelectableStatus {
  const factory _SelectableStatus({final bool isHide, final bool isOpen}) =
      _$SelectableStatusImpl;

  factory _SelectableStatus.fromJson(Map<String, dynamic> json) =
      _$SelectableStatusImpl.fromJson;

  @override
  bool get isHide;
  @override
  bool get isOpen;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectableStatusImplCopyWith<_$SelectableStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
