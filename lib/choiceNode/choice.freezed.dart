// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectInfo {
  Pos get pos;
  int get select;

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectInfoCopyWith<SelectInfo> get copyWith =>
      _$SelectInfoCopyWithImpl<SelectInfo>(this as SelectInfo, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SelectInfo &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.select, select) || other.select == select));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos, select);

  @override
  String toString() {
    return 'SelectInfo(pos: $pos, select: $select)';
  }
}

/// @nodoc
abstract mixin class $SelectInfoCopyWith<$Res> {
  factory $SelectInfoCopyWith(
          SelectInfo value, $Res Function(SelectInfo) _then) =
      _$SelectInfoCopyWithImpl;
  @useResult
  $Res call({Pos pos, int select});
}

/// @nodoc
class _$SelectInfoCopyWithImpl<$Res> implements $SelectInfoCopyWith<$Res> {
  _$SelectInfoCopyWithImpl(this._self, this._then);

  final SelectInfo _self;
  final $Res Function(SelectInfo) _then;

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
    Object? select = null,
  }) {
    return _then(SelectInfo(
      pos: null == pos
          ? _self.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos,
      select: null == select
          ? _self.select
          : select // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SelectInfo].
extension SelectInfoPatterns on SelectInfo {
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
  TResult maybeMap<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
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
  TResult map<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
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
  TResult? mapOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
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
  TResult maybeWhen<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
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
  TResult when<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
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
  TResult? whenOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        return null;
    }
  }
}

/// @nodoc
mixin _$SizeData {
  int get width;
  Pos? get pos;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SizeDataCopyWith<SizeData> get copyWith =>
      _$SizeDataCopyWithImpl<SizeData>(this as SizeData, _$identity);

  /// Serializes this SizeData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SizeData &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, pos);

  @override
  String toString() {
    return 'SizeData(width: $width, pos: $pos)';
  }
}

/// @nodoc
abstract mixin class $SizeDataCopyWith<$Res> {
  factory $SizeDataCopyWith(SizeData value, $Res Function(SizeData) _then) =
      _$SizeDataCopyWithImpl;
  @useResult
  $Res call({int width, Pos? pos});

  $PosCopyWith<$Res>? get pos;
}

/// @nodoc
class _$SizeDataCopyWithImpl<$Res> implements $SizeDataCopyWith<$Res> {
  _$SizeDataCopyWithImpl(this._self, this._then);

  final SizeData _self;
  final $Res Function(SizeData) _then;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? pos = freezed,
  }) {
    return _then(_self.copyWith(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      pos: freezed == pos
          ? _self.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos?,
    ));
  }

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PosCopyWith<$Res>? get pos {
    if (_self.pos == null) {
      return null;
    }

    return $PosCopyWith<$Res>(_self.pos!, (value) {
      return _then(_self.copyWith(pos: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SizeData].
extension SizeDataPatterns on SizeData {
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
    TResult Function(_SizeData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SizeData() when $default != null:
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
    TResult Function(_SizeData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SizeData():
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
    TResult? Function(_SizeData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SizeData() when $default != null:
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
    TResult Function(int width, Pos? pos)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SizeData() when $default != null:
        return $default(_that.width, _that.pos);
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
    TResult Function(int width, Pos? pos) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SizeData():
        return $default(_that.width, _that.pos);
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
    TResult? Function(int width, Pos? pos)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SizeData() when $default != null:
        return $default(_that.width, _that.pos);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SizeData implements SizeData {
  const _SizeData({required this.width, this.pos});
  factory _SizeData.fromJson(Map<String, dynamic> json) =>
      _$SizeDataFromJson(json);

  @override
  final int width;
  @override
  final Pos? pos;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SizeDataCopyWith<_SizeData> get copyWith =>
      __$SizeDataCopyWithImpl<_SizeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SizeDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SizeData &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, pos);

  @override
  String toString() {
    return 'SizeData(width: $width, pos: $pos)';
  }
}

/// @nodoc
abstract mixin class _$SizeDataCopyWith<$Res>
    implements $SizeDataCopyWith<$Res> {
  factory _$SizeDataCopyWith(_SizeData value, $Res Function(_SizeData) _then) =
      __$SizeDataCopyWithImpl;
  @override
  @useResult
  $Res call({int width, Pos? pos});

  @override
  $PosCopyWith<$Res>? get pos;
}

/// @nodoc
class __$SizeDataCopyWithImpl<$Res> implements _$SizeDataCopyWith<$Res> {
  __$SizeDataCopyWithImpl(this._self, this._then);

  final _SizeData _self;
  final $Res Function(_SizeData) _then;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? width = null,
    Object? pos = freezed,
  }) {
    return _then(_SizeData(
      width: null == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      pos: freezed == pos
          ? _self.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos?,
    ));
  }

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PosCopyWith<$Res>? get pos {
    if (_self.pos == null) {
      return null;
    }

    return $PosCopyWith<$Res>(_self.pos!, (value) {
      return _then(_self.copyWith(pos: value));
    });
  }
}

// dart format on
