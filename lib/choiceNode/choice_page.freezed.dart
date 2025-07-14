// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChoicePageOption {
  bool get setEntireAsOneLine;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoicePageOptionCopyWith<ChoicePageOption> get copyWith =>
      _$ChoicePageOptionCopyWithImpl<ChoicePageOption>(
          this as ChoicePageOption, _$identity);

  /// Serializes this ChoicePageOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoicePageOption &&
            (identical(other.setEntireAsOneLine, setEntireAsOneLine) ||
                other.setEntireAsOneLine == setEntireAsOneLine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, setEntireAsOneLine);

  @override
  String toString() {
    return 'ChoicePageOption(setEntireAsOneLine: $setEntireAsOneLine)';
  }
}

/// @nodoc
abstract mixin class $ChoicePageOptionCopyWith<$Res> {
  factory $ChoicePageOptionCopyWith(
          ChoicePageOption value, $Res Function(ChoicePageOption) _then) =
      _$ChoicePageOptionCopyWithImpl;
  @useResult
  $Res call({bool setEntireAsOneLine});
}

/// @nodoc
class _$ChoicePageOptionCopyWithImpl<$Res>
    implements $ChoicePageOptionCopyWith<$Res> {
  _$ChoicePageOptionCopyWithImpl(this._self, this._then);

  final ChoicePageOption _self;
  final $Res Function(ChoicePageOption) _then;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setEntireAsOneLine = null,
  }) {
    return _then(_self.copyWith(
      setEntireAsOneLine: null == setEntireAsOneLine
          ? _self.setEntireAsOneLine
          : setEntireAsOneLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChoicePageOption].
extension ChoicePageOptionPatterns on ChoicePageOption {
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
    TResult Function(_ChoicePageOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoicePageOption() when $default != null:
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
    TResult Function(_ChoicePageOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoicePageOption():
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
    TResult? Function(_ChoicePageOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoicePageOption() when $default != null:
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
    TResult Function(bool setEntireAsOneLine)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoicePageOption() when $default != null:
        return $default(_that.setEntireAsOneLine);
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
    TResult Function(bool setEntireAsOneLine) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoicePageOption():
        return $default(_that.setEntireAsOneLine);
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
    TResult? Function(bool setEntireAsOneLine)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoicePageOption() when $default != null:
        return $default(_that.setEntireAsOneLine);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChoicePageOption implements ChoicePageOption {
  _ChoicePageOption({this.setEntireAsOneLine = false});
  factory _ChoicePageOption.fromJson(Map<String, dynamic> json) =>
      _$ChoicePageOptionFromJson(json);

  @override
  @JsonKey()
  final bool setEntireAsOneLine;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoicePageOptionCopyWith<_ChoicePageOption> get copyWith =>
      __$ChoicePageOptionCopyWithImpl<_ChoicePageOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChoicePageOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoicePageOption &&
            (identical(other.setEntireAsOneLine, setEntireAsOneLine) ||
                other.setEntireAsOneLine == setEntireAsOneLine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, setEntireAsOneLine);

  @override
  String toString() {
    return 'ChoicePageOption(setEntireAsOneLine: $setEntireAsOneLine)';
  }
}

/// @nodoc
abstract mixin class _$ChoicePageOptionCopyWith<$Res>
    implements $ChoicePageOptionCopyWith<$Res> {
  factory _$ChoicePageOptionCopyWith(
          _ChoicePageOption value, $Res Function(_ChoicePageOption) _then) =
      __$ChoicePageOptionCopyWithImpl;
  @override
  @useResult
  $Res call({bool setEntireAsOneLine});
}

/// @nodoc
class __$ChoicePageOptionCopyWithImpl<$Res>
    implements _$ChoicePageOptionCopyWith<$Res> {
  __$ChoicePageOptionCopyWithImpl(this._self, this._then);

  final _ChoicePageOption _self;
  final $Res Function(_ChoicePageOption) _then;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? setEntireAsOneLine = null,
  }) {
    return _then(_ChoicePageOption(
      setEntireAsOneLine: null == setEntireAsOneLine
          ? _self.setEntireAsOneLine
          : setEntireAsOneLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
