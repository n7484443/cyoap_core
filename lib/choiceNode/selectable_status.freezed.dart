// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectableStatus {
  bool get isHide;
  bool get isOpen;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectableStatusCopyWith<SelectableStatus> get copyWith =>
      _$SelectableStatusCopyWithImpl<SelectableStatus>(
          this as SelectableStatus, _$identity);

  /// Serializes this SelectableStatus to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectableStatus &&
            (identical(other.isHide, isHide) || other.isHide == isHide) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHide, isOpen);

  @override
  String toString() {
    return 'SelectableStatus(isHide: $isHide, isOpen: $isOpen)';
  }
}

/// @nodoc
abstract mixin class $SelectableStatusCopyWith<$Res> {
  factory $SelectableStatusCopyWith(
          SelectableStatus value, $Res Function(SelectableStatus) _then) =
      _$SelectableStatusCopyWithImpl;
  @useResult
  $Res call({bool isHide, bool isOpen});
}

/// @nodoc
class _$SelectableStatusCopyWithImpl<$Res>
    implements $SelectableStatusCopyWith<$Res> {
  _$SelectableStatusCopyWithImpl(this._self, this._then);

  final SelectableStatus _self;
  final $Res Function(SelectableStatus) _then;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHide = null,
    Object? isOpen = null,
  }) {
    return _then(_self.copyWith(
      isHide: null == isHide
          ? _self.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SelectableStatus].
extension SelectableStatusPatterns on SelectableStatus {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SelectableStatus value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectableStatus() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SelectableStatus value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectableStatus():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SelectableStatus value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectableStatus() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isHide, bool isOpen)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SelectableStatus() when $default != null:
        return $default(_that.isHide, _that.isOpen);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isHide, bool isOpen) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectableStatus():
        return $default(_that.isHide, _that.isOpen);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isHide, bool isOpen)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SelectableStatus() when $default != null:
        return $default(_that.isHide, _that.isOpen);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SelectableStatus implements SelectableStatus {
  const _SelectableStatus({this.isHide = false, this.isOpen = false});
  factory _SelectableStatus.fromJson(Map<String, dynamic> json) =>
      _$SelectableStatusFromJson(json);

  @override
  @JsonKey()
  final bool isHide;
  @override
  @JsonKey()
  final bool isOpen;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectableStatusCopyWith<_SelectableStatus> get copyWith =>
      __$SelectableStatusCopyWithImpl<_SelectableStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SelectableStatusToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectableStatus &&
            (identical(other.isHide, isHide) || other.isHide == isHide) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHide, isOpen);

  @override
  String toString() {
    return 'SelectableStatus(isHide: $isHide, isOpen: $isOpen)';
  }
}

/// @nodoc
abstract mixin class _$SelectableStatusCopyWith<$Res>
    implements $SelectableStatusCopyWith<$Res> {
  factory _$SelectableStatusCopyWith(
          _SelectableStatus value, $Res Function(_SelectableStatus) _then) =
      __$SelectableStatusCopyWithImpl;
  @override
  @useResult
  $Res call({bool isHide, bool isOpen});
}

/// @nodoc
class __$SelectableStatusCopyWithImpl<$Res>
    implements _$SelectableStatusCopyWith<$Res> {
  __$SelectableStatusCopyWithImpl(this._self, this._then);

  final _SelectableStatus _self;
  final $Res Function(_SelectableStatus) _then;

  /// Create a copy of SelectableStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isHide = null,
    Object? isOpen = null,
  }) {
    return _then(_SelectableStatus(
      isHide: null == isHide
          ? _self.isHide
          : isHide // ignore: cast_nullable_to_non_nullable
              as bool,
      isOpen: null == isOpen
          ? _self.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
