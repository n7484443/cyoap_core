// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EdgeValue {
  double get top;
  double get right;
  double get bottom;
  double get left;

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<EdgeValue> get copyWith =>
      _$EdgeValueCopyWithImpl<EdgeValue>(this as EdgeValue, _$identity);

  /// Serializes this EdgeValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EdgeValue &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.left, left) || other.left == left));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, top, right, bottom, left);

  @override
  String toString() {
    return 'EdgeValue(top: $top, right: $right, bottom: $bottom, left: $left)';
  }
}

/// @nodoc
abstract mixin class $EdgeValueCopyWith<$Res> {
  factory $EdgeValueCopyWith(EdgeValue value, $Res Function(EdgeValue) _then) =
      _$EdgeValueCopyWithImpl;
  @useResult
  $Res call({double top, double right, double bottom, double left});
}

/// @nodoc
class _$EdgeValueCopyWithImpl<$Res> implements $EdgeValueCopyWith<$Res> {
  _$EdgeValueCopyWithImpl(this._self, this._then);

  final EdgeValue _self;
  final $Res Function(EdgeValue) _then;

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
    Object? left = null,
  }) {
    return _then(_self.copyWith(
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as double,
      bottom: null == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double,
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [EdgeValue].
extension EdgeValuePatterns on EdgeValue {
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
    TResult Function(_EdgeValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EdgeValue() when $default != null:
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
    TResult Function(_EdgeValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EdgeValue():
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
    TResult? Function(_EdgeValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EdgeValue() when $default != null:
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
    TResult Function(double top, double right, double bottom, double left)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EdgeValue() when $default != null:
        return $default(_that.top, _that.right, _that.bottom, _that.left);
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
    TResult Function(double top, double right, double bottom, double left)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EdgeValue():
        return $default(_that.top, _that.right, _that.bottom, _that.left);
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
    TResult? Function(double top, double right, double bottom, double left)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EdgeValue() when $default != null:
        return $default(_that.top, _that.right, _that.bottom, _that.left);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EdgeValue extends EdgeValue {
  const _EdgeValue(
      {this.top = 0.0, this.right = 0.0, this.bottom = 0.0, this.left = 0.0})
      : super._();
  factory _EdgeValue.fromJson(Map<String, dynamic> json) =>
      _$EdgeValueFromJson(json);

  @override
  @JsonKey()
  final double top;
  @override
  @JsonKey()
  final double right;
  @override
  @JsonKey()
  final double bottom;
  @override
  @JsonKey()
  final double left;

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EdgeValueCopyWith<_EdgeValue> get copyWith =>
      __$EdgeValueCopyWithImpl<_EdgeValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EdgeValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EdgeValue &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.left, left) || other.left == left));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, top, right, bottom, left);

  @override
  String toString() {
    return 'EdgeValue(top: $top, right: $right, bottom: $bottom, left: $left)';
  }
}

/// @nodoc
abstract mixin class _$EdgeValueCopyWith<$Res>
    implements $EdgeValueCopyWith<$Res> {
  factory _$EdgeValueCopyWith(
          _EdgeValue value, $Res Function(_EdgeValue) _then) =
      __$EdgeValueCopyWithImpl;
  @override
  @useResult
  $Res call({double top, double right, double bottom, double left});
}

/// @nodoc
class __$EdgeValueCopyWithImpl<$Res> implements _$EdgeValueCopyWith<$Res> {
  __$EdgeValueCopyWithImpl(this._self, this._then);

  final _EdgeValue _self;
  final $Res Function(_EdgeValue) _then;

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
    Object? left = null,
  }) {
    return _then(_EdgeValue(
      top: null == top
          ? _self.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as double,
      bottom: null == bottom
          ? _self.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double,
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$VertexValue {
  double get topLeft;
  double get topRight;
  double get bottomLeft;
  double get bottomRight;

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VertexValueCopyWith<VertexValue> get copyWith =>
      _$VertexValueCopyWithImpl<VertexValue>(this as VertexValue, _$identity);

  /// Serializes this VertexValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VertexValue &&
            (identical(other.topLeft, topLeft) || other.topLeft == topLeft) &&
            (identical(other.topRight, topRight) ||
                other.topRight == topRight) &&
            (identical(other.bottomLeft, bottomLeft) ||
                other.bottomLeft == bottomLeft) &&
            (identical(other.bottomRight, bottomRight) ||
                other.bottomRight == bottomRight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topLeft, topRight, bottomLeft, bottomRight);

  @override
  String toString() {
    return 'VertexValue(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight)';
  }
}

/// @nodoc
abstract mixin class $VertexValueCopyWith<$Res> {
  factory $VertexValueCopyWith(
          VertexValue value, $Res Function(VertexValue) _then) =
      _$VertexValueCopyWithImpl;
  @useResult
  $Res call(
      {double topLeft, double topRight, double bottomLeft, double bottomRight});
}

/// @nodoc
class _$VertexValueCopyWithImpl<$Res> implements $VertexValueCopyWith<$Res> {
  _$VertexValueCopyWithImpl(this._self, this._then);

  final VertexValue _self;
  final $Res Function(VertexValue) _then;

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topLeft = null,
    Object? topRight = null,
    Object? bottomLeft = null,
    Object? bottomRight = null,
  }) {
    return _then(_self.copyWith(
      topLeft: null == topLeft
          ? _self.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as double,
      topRight: null == topRight
          ? _self.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeft: null == bottomLeft
          ? _self.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRight: null == bottomRight
          ? _self.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [VertexValue].
extension VertexValuePatterns on VertexValue {
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
    TResult Function(_VertexValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VertexValue() when $default != null:
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
    TResult Function(_VertexValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VertexValue():
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
    TResult? Function(_VertexValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VertexValue() when $default != null:
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
    TResult Function(double topLeft, double topRight, double bottomLeft,
            double bottomRight)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VertexValue() when $default != null:
        return $default(
            _that.topLeft, _that.topRight, _that.bottomLeft, _that.bottomRight);
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
    TResult Function(double topLeft, double topRight, double bottomLeft,
            double bottomRight)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VertexValue():
        return $default(
            _that.topLeft, _that.topRight, _that.bottomLeft, _that.bottomRight);
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
    TResult? Function(double topLeft, double topRight, double bottomLeft,
            double bottomRight)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VertexValue() when $default != null:
        return $default(
            _that.topLeft, _that.topRight, _that.bottomLeft, _that.bottomRight);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VertexValue extends VertexValue {
  const _VertexValue(
      {this.topLeft = 0.0,
      this.topRight = 0.0,
      this.bottomLeft = 0.0,
      this.bottomRight = 0.0})
      : super._();
  factory _VertexValue.fromJson(Map<String, dynamic> json) =>
      _$VertexValueFromJson(json);

  @override
  @JsonKey()
  final double topLeft;
  @override
  @JsonKey()
  final double topRight;
  @override
  @JsonKey()
  final double bottomLeft;
  @override
  @JsonKey()
  final double bottomRight;

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VertexValueCopyWith<_VertexValue> get copyWith =>
      __$VertexValueCopyWithImpl<_VertexValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VertexValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VertexValue &&
            (identical(other.topLeft, topLeft) || other.topLeft == topLeft) &&
            (identical(other.topRight, topRight) ||
                other.topRight == topRight) &&
            (identical(other.bottomLeft, bottomLeft) ||
                other.bottomLeft == bottomLeft) &&
            (identical(other.bottomRight, bottomRight) ||
                other.bottomRight == bottomRight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topLeft, topRight, bottomLeft, bottomRight);

  @override
  String toString() {
    return 'VertexValue(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight)';
  }
}

/// @nodoc
abstract mixin class _$VertexValueCopyWith<$Res>
    implements $VertexValueCopyWith<$Res> {
  factory _$VertexValueCopyWith(
          _VertexValue value, $Res Function(_VertexValue) _then) =
      __$VertexValueCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double topLeft, double topRight, double bottomLeft, double bottomRight});
}

/// @nodoc
class __$VertexValueCopyWithImpl<$Res> implements _$VertexValueCopyWith<$Res> {
  __$VertexValueCopyWithImpl(this._self, this._then);

  final _VertexValue _self;
  final $Res Function(_VertexValue) _then;

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? topLeft = null,
    Object? topRight = null,
    Object? bottomLeft = null,
    Object? bottomRight = null,
  }) {
    return _then(_VertexValue(
      topLeft: null == topLeft
          ? _self.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as double,
      topRight: null == topRight
          ? _self.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeft: null == bottomLeft
          ? _self.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRight: null == bottomRight
          ? _self.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$OutlineOption {
  OutlineType get outlineType;
  ColorOption get outlineColor;
  VertexValue get round;
  EdgeValue get distance;
  double get outlineWidth;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<OutlineOption> get copyWith =>
      _$OutlineOptionCopyWithImpl<OutlineOption>(
          this as OutlineOption, _$identity);

  /// Serializes this OutlineOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OutlineOption &&
            (identical(other.outlineType, outlineType) ||
                other.outlineType == outlineType) &&
            (identical(other.outlineColor, outlineColor) ||
                other.outlineColor == outlineColor) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.outlineWidth, outlineWidth) ||
                other.outlineWidth == outlineWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, outlineType, outlineColor, round, distance, outlineWidth);

  @override
  String toString() {
    return 'OutlineOption(outlineType: $outlineType, outlineColor: $outlineColor, round: $round, distance: $distance, outlineWidth: $outlineWidth)';
  }
}

/// @nodoc
abstract mixin class $OutlineOptionCopyWith<$Res> {
  factory $OutlineOptionCopyWith(
          OutlineOption value, $Res Function(OutlineOption) _then) =
      _$OutlineOptionCopyWithImpl;
  @useResult
  $Res call(
      {OutlineType outlineType,
      ColorOption outlineColor,
      VertexValue round,
      EdgeValue distance,
      double outlineWidth});

  $ColorOptionCopyWith<$Res> get outlineColor;
  $VertexValueCopyWith<$Res> get round;
  $EdgeValueCopyWith<$Res> get distance;
}

/// @nodoc
class _$OutlineOptionCopyWithImpl<$Res>
    implements $OutlineOptionCopyWith<$Res> {
  _$OutlineOptionCopyWithImpl(this._self, this._then);

  final OutlineOption _self;
  final $Res Function(OutlineOption) _then;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlineType = null,
    Object? outlineColor = null,
    Object? round = null,
    Object? distance = null,
    Object? outlineWidth = null,
  }) {
    return _then(_self.copyWith(
      outlineType: null == outlineType
          ? _self.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineColor: null == outlineColor
          ? _self.outlineColor
          : outlineColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      round: null == round
          ? _self.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as EdgeValue,
      outlineWidth: null == outlineWidth
          ? _self.outlineWidth
          : outlineWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get outlineColor {
    return $ColorOptionCopyWith<$Res>(_self.outlineColor, (value) {
      return _then(_self.copyWith(outlineColor: value));
    });
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VertexValueCopyWith<$Res> get round {
    return $VertexValueCopyWith<$Res>(_self.round, (value) {
      return _then(_self.copyWith(round: value));
    });
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<$Res> get distance {
    return $EdgeValueCopyWith<$Res>(_self.distance, (value) {
      return _then(_self.copyWith(distance: value));
    });
  }
}

/// Adds pattern-matching-related methods to [OutlineOption].
extension OutlineOptionPatterns on OutlineOption {
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
    TResult Function(_OutlineOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OutlineOption() when $default != null:
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
    TResult Function(_OutlineOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OutlineOption():
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
    TResult? Function(_OutlineOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OutlineOption() when $default != null:
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
    TResult Function(OutlineType outlineType, ColorOption outlineColor,
            VertexValue round, EdgeValue distance, double outlineWidth)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OutlineOption() when $default != null:
        return $default(_that.outlineType, _that.outlineColor, _that.round,
            _that.distance, _that.outlineWidth);
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
    TResult Function(OutlineType outlineType, ColorOption outlineColor,
            VertexValue round, EdgeValue distance, double outlineWidth)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OutlineOption():
        return $default(_that.outlineType, _that.outlineColor, _that.round,
            _that.distance, _that.outlineWidth);
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
    TResult? Function(OutlineType outlineType, ColorOption outlineColor,
            VertexValue round, EdgeValue distance, double outlineWidth)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OutlineOption() when $default != null:
        return $default(_that.outlineType, _that.outlineColor, _that.round,
            _that.distance, _that.outlineWidth);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OutlineOption implements OutlineOption {
  const _OutlineOption(
      {this.outlineType = OutlineType.solid,
      this.outlineColor = const ColorOption(),
      this.round = const VertexValue(
          topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0, bottomRight: 4.0),
      this.distance =
          const EdgeValue(top: 4.0, right: 4.0, bottom: 4.0, left: 4.0),
      this.outlineWidth = 2.0});
  factory _OutlineOption.fromJson(Map<String, dynamic> json) =>
      _$OutlineOptionFromJson(json);

  @override
  @JsonKey()
  final OutlineType outlineType;
  @override
  @JsonKey()
  final ColorOption outlineColor;
  @override
  @JsonKey()
  final VertexValue round;
  @override
  @JsonKey()
  final EdgeValue distance;
  @override
  @JsonKey()
  final double outlineWidth;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OutlineOptionCopyWith<_OutlineOption> get copyWith =>
      __$OutlineOptionCopyWithImpl<_OutlineOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OutlineOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutlineOption &&
            (identical(other.outlineType, outlineType) ||
                other.outlineType == outlineType) &&
            (identical(other.outlineColor, outlineColor) ||
                other.outlineColor == outlineColor) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.outlineWidth, outlineWidth) ||
                other.outlineWidth == outlineWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, outlineType, outlineColor, round, distance, outlineWidth);

  @override
  String toString() {
    return 'OutlineOption(outlineType: $outlineType, outlineColor: $outlineColor, round: $round, distance: $distance, outlineWidth: $outlineWidth)';
  }
}

/// @nodoc
abstract mixin class _$OutlineOptionCopyWith<$Res>
    implements $OutlineOptionCopyWith<$Res> {
  factory _$OutlineOptionCopyWith(
          _OutlineOption value, $Res Function(_OutlineOption) _then) =
      __$OutlineOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {OutlineType outlineType,
      ColorOption outlineColor,
      VertexValue round,
      EdgeValue distance,
      double outlineWidth});

  @override
  $ColorOptionCopyWith<$Res> get outlineColor;
  @override
  $VertexValueCopyWith<$Res> get round;
  @override
  $EdgeValueCopyWith<$Res> get distance;
}

/// @nodoc
class __$OutlineOptionCopyWithImpl<$Res>
    implements _$OutlineOptionCopyWith<$Res> {
  __$OutlineOptionCopyWithImpl(this._self, this._then);

  final _OutlineOption _self;
  final $Res Function(_OutlineOption) _then;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? outlineType = null,
    Object? outlineColor = null,
    Object? round = null,
    Object? distance = null,
    Object? outlineWidth = null,
  }) {
    return _then(_OutlineOption(
      outlineType: null == outlineType
          ? _self.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineColor: null == outlineColor
          ? _self.outlineColor
          : outlineColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      round: null == round
          ? _self.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as EdgeValue,
      outlineWidth: null == outlineWidth
          ? _self.outlineWidth
          : outlineWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get outlineColor {
    return $ColorOptionCopyWith<$Res>(_self.outlineColor, (value) {
      return _then(_self.copyWith(outlineColor: value));
    });
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VertexValueCopyWith<$Res> get round {
    return $VertexValueCopyWith<$Res>(_self.round, (value) {
      return _then(_self.copyWith(round: value));
    });
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<$Res> get distance {
    return $EdgeValueCopyWith<$Res>(_self.distance, (value) {
      return _then(_self.copyWith(distance: value));
    });
  }
}

/// @nodoc
mixin _$SliderOption {
  ColorOption get sliderThumbColor;
  ColorOption get sliderTrackActiveColor;
  ColorOption get sliderTrackInactiveColor;
  SliderThumbShape get sliderThumbShape;

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SliderOptionCopyWith<SliderOption> get copyWith =>
      _$SliderOptionCopyWithImpl<SliderOption>(
          this as SliderOption, _$identity);

  /// Serializes this SliderOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SliderOption &&
            (identical(other.sliderThumbColor, sliderThumbColor) ||
                other.sliderThumbColor == sliderThumbColor) &&
            (identical(other.sliderTrackActiveColor, sliderTrackActiveColor) ||
                other.sliderTrackActiveColor == sliderTrackActiveColor) &&
            (identical(
                    other.sliderTrackInactiveColor, sliderTrackInactiveColor) ||
                other.sliderTrackInactiveColor == sliderTrackInactiveColor) &&
            (identical(other.sliderThumbShape, sliderThumbShape) ||
                other.sliderThumbShape == sliderThumbShape));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sliderThumbColor,
      sliderTrackActiveColor, sliderTrackInactiveColor, sliderThumbShape);

  @override
  String toString() {
    return 'SliderOption(sliderThumbColor: $sliderThumbColor, sliderTrackActiveColor: $sliderTrackActiveColor, sliderTrackInactiveColor: $sliderTrackInactiveColor, sliderThumbShape: $sliderThumbShape)';
  }
}

/// @nodoc
abstract mixin class $SliderOptionCopyWith<$Res> {
  factory $SliderOptionCopyWith(
          SliderOption value, $Res Function(SliderOption) _then) =
      _$SliderOptionCopyWithImpl;
  @useResult
  $Res call(
      {ColorOption sliderThumbColor,
      ColorOption sliderTrackActiveColor,
      ColorOption sliderTrackInactiveColor,
      SliderThumbShape sliderThumbShape});

  $ColorOptionCopyWith<$Res> get sliderThumbColor;
  $ColorOptionCopyWith<$Res> get sliderTrackActiveColor;
  $ColorOptionCopyWith<$Res> get sliderTrackInactiveColor;
}

/// @nodoc
class _$SliderOptionCopyWithImpl<$Res> implements $SliderOptionCopyWith<$Res> {
  _$SliderOptionCopyWithImpl(this._self, this._then);

  final SliderOption _self;
  final $Res Function(SliderOption) _then;

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliderThumbColor = null,
    Object? sliderTrackActiveColor = null,
    Object? sliderTrackInactiveColor = null,
    Object? sliderThumbShape = null,
  }) {
    return _then(_self.copyWith(
      sliderThumbColor: null == sliderThumbColor
          ? _self.sliderThumbColor
          : sliderThumbColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackActiveColor: null == sliderTrackActiveColor
          ? _self.sliderTrackActiveColor
          : sliderTrackActiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackInactiveColor: null == sliderTrackInactiveColor
          ? _self.sliderTrackInactiveColor
          : sliderTrackInactiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderThumbShape: null == sliderThumbShape
          ? _self.sliderThumbShape
          : sliderThumbShape // ignore: cast_nullable_to_non_nullable
              as SliderThumbShape,
    ));
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderThumbColor {
    return $ColorOptionCopyWith<$Res>(_self.sliderThumbColor, (value) {
      return _then(_self.copyWith(sliderThumbColor: value));
    });
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderTrackActiveColor {
    return $ColorOptionCopyWith<$Res>(_self.sliderTrackActiveColor, (value) {
      return _then(_self.copyWith(sliderTrackActiveColor: value));
    });
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderTrackInactiveColor {
    return $ColorOptionCopyWith<$Res>(_self.sliderTrackInactiveColor, (value) {
      return _then(_self.copyWith(sliderTrackInactiveColor: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SliderOption].
extension SliderOptionPatterns on SliderOption {
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
    TResult Function(_SliderOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SliderOption() when $default != null:
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
    TResult Function(_SliderOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SliderOption():
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
    TResult? Function(_SliderOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SliderOption() when $default != null:
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
    TResult Function(
            ColorOption sliderThumbColor,
            ColorOption sliderTrackActiveColor,
            ColorOption sliderTrackInactiveColor,
            SliderThumbShape sliderThumbShape)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SliderOption() when $default != null:
        return $default(_that.sliderThumbColor, _that.sliderTrackActiveColor,
            _that.sliderTrackInactiveColor, _that.sliderThumbShape);
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
    TResult Function(
            ColorOption sliderThumbColor,
            ColorOption sliderTrackActiveColor,
            ColorOption sliderTrackInactiveColor,
            SliderThumbShape sliderThumbShape)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SliderOption():
        return $default(_that.sliderThumbColor, _that.sliderTrackActiveColor,
            _that.sliderTrackInactiveColor, _that.sliderThumbShape);
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
    TResult? Function(
            ColorOption sliderThumbColor,
            ColorOption sliderTrackActiveColor,
            ColorOption sliderTrackInactiveColor,
            SliderThumbShape sliderThumbShape)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SliderOption() when $default != null:
        return $default(_that.sliderThumbColor, _that.sliderTrackActiveColor,
            _that.sliderTrackInactiveColor, _that.sliderThumbShape);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SliderOption implements SliderOption {
  const _SliderOption(
      {this.sliderThumbColor = const ColorOption(),
      this.sliderTrackActiveColor = const ColorOption(),
      this.sliderTrackInactiveColor = const ColorOption(),
      this.sliderThumbShape = SliderThumbShape.circle});
  factory _SliderOption.fromJson(Map<String, dynamic> json) =>
      _$SliderOptionFromJson(json);

  @override
  @JsonKey()
  final ColorOption sliderThumbColor;
  @override
  @JsonKey()
  final ColorOption sliderTrackActiveColor;
  @override
  @JsonKey()
  final ColorOption sliderTrackInactiveColor;
  @override
  @JsonKey()
  final SliderThumbShape sliderThumbShape;

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SliderOptionCopyWith<_SliderOption> get copyWith =>
      __$SliderOptionCopyWithImpl<_SliderOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SliderOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SliderOption &&
            (identical(other.sliderThumbColor, sliderThumbColor) ||
                other.sliderThumbColor == sliderThumbColor) &&
            (identical(other.sliderTrackActiveColor, sliderTrackActiveColor) ||
                other.sliderTrackActiveColor == sliderTrackActiveColor) &&
            (identical(
                    other.sliderTrackInactiveColor, sliderTrackInactiveColor) ||
                other.sliderTrackInactiveColor == sliderTrackInactiveColor) &&
            (identical(other.sliderThumbShape, sliderThumbShape) ||
                other.sliderThumbShape == sliderThumbShape));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sliderThumbColor,
      sliderTrackActiveColor, sliderTrackInactiveColor, sliderThumbShape);

  @override
  String toString() {
    return 'SliderOption(sliderThumbColor: $sliderThumbColor, sliderTrackActiveColor: $sliderTrackActiveColor, sliderTrackInactiveColor: $sliderTrackInactiveColor, sliderThumbShape: $sliderThumbShape)';
  }
}

/// @nodoc
abstract mixin class _$SliderOptionCopyWith<$Res>
    implements $SliderOptionCopyWith<$Res> {
  factory _$SliderOptionCopyWith(
          _SliderOption value, $Res Function(_SliderOption) _then) =
      __$SliderOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ColorOption sliderThumbColor,
      ColorOption sliderTrackActiveColor,
      ColorOption sliderTrackInactiveColor,
      SliderThumbShape sliderThumbShape});

  @override
  $ColorOptionCopyWith<$Res> get sliderThumbColor;
  @override
  $ColorOptionCopyWith<$Res> get sliderTrackActiveColor;
  @override
  $ColorOptionCopyWith<$Res> get sliderTrackInactiveColor;
}

/// @nodoc
class __$SliderOptionCopyWithImpl<$Res>
    implements _$SliderOptionCopyWith<$Res> {
  __$SliderOptionCopyWithImpl(this._self, this._then);

  final _SliderOption _self;
  final $Res Function(_SliderOption) _then;

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sliderThumbColor = null,
    Object? sliderTrackActiveColor = null,
    Object? sliderTrackInactiveColor = null,
    Object? sliderThumbShape = null,
  }) {
    return _then(_SliderOption(
      sliderThumbColor: null == sliderThumbColor
          ? _self.sliderThumbColor
          : sliderThumbColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackActiveColor: null == sliderTrackActiveColor
          ? _self.sliderTrackActiveColor
          : sliderTrackActiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackInactiveColor: null == sliderTrackInactiveColor
          ? _self.sliderTrackInactiveColor
          : sliderTrackInactiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderThumbShape: null == sliderThumbShape
          ? _self.sliderThumbShape
          : sliderThumbShape // ignore: cast_nullable_to_non_nullable
              as SliderThumbShape,
    ));
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderThumbColor {
    return $ColorOptionCopyWith<$Res>(_self.sliderThumbColor, (value) {
      return _then(_self.copyWith(sliderThumbColor: value));
    });
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderTrackActiveColor {
    return $ColorOptionCopyWith<$Res>(_self.sliderTrackActiveColor, (value) {
      return _then(_self.copyWith(sliderTrackActiveColor: value));
    });
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderTrackInactiveColor {
    return $ColorOptionCopyWith<$Res>(_self.sliderTrackInactiveColor, (value) {
      return _then(_self.copyWith(sliderTrackInactiveColor: value));
    });
  }
}

/// @nodoc
mixin _$ChoiceNodeDesignPreset {
  bool? get titlePosition;
  double? get elevation;
  VertexValue? get round;
  EdgeValue? get padding;
  double? get imageMaxHeightRatio;
  bool? get hideTitle;
  int? get imagePosition; //0:default, 1:image-right 2:image-left
  int? get colorTitle;
  String? get titleFont;
  String? get mainFont;
  OutlineOption? get defaultOutlineOption;
  bool? get selectOutlineEnable;
  OutlineOption? get selectOutlineOption;
  ColorOption? get defaultColorOption;
  bool? get selectColorEnable;
  ColorOption? get selectColorOption;
  SliderOption? get sliderOption;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceNodeDesignPresetCopyWith<ChoiceNodeDesignPreset> get copyWith =>
      _$ChoiceNodeDesignPresetCopyWithImpl<ChoiceNodeDesignPreset>(
          this as ChoiceNodeDesignPreset, _$identity);

  /// Serializes this ChoiceNodeDesignPreset to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoiceNodeDesignPreset &&
            (identical(other.titlePosition, titlePosition) ||
                other.titlePosition == titlePosition) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.imageMaxHeightRatio, imageMaxHeightRatio) ||
                other.imageMaxHeightRatio == imageMaxHeightRatio) &&
            (identical(other.hideTitle, hideTitle) ||
                other.hideTitle == hideTitle) &&
            (identical(other.imagePosition, imagePosition) ||
                other.imagePosition == imagePosition) &&
            (identical(other.colorTitle, colorTitle) ||
                other.colorTitle == colorTitle) &&
            (identical(other.titleFont, titleFont) ||
                other.titleFont == titleFont) &&
            (identical(other.mainFont, mainFont) ||
                other.mainFont == mainFont) &&
            (identical(other.defaultOutlineOption, defaultOutlineOption) ||
                other.defaultOutlineOption == defaultOutlineOption) &&
            (identical(other.selectOutlineEnable, selectOutlineEnable) ||
                other.selectOutlineEnable == selectOutlineEnable) &&
            (identical(other.selectOutlineOption, selectOutlineOption) ||
                other.selectOutlineOption == selectOutlineOption) &&
            (identical(other.defaultColorOption, defaultColorOption) ||
                other.defaultColorOption == defaultColorOption) &&
            (identical(other.selectColorEnable, selectColorEnable) ||
                other.selectColorEnable == selectColorEnable) &&
            (identical(other.selectColorOption, selectColorOption) ||
                other.selectColorOption == selectColorOption) &&
            (identical(other.sliderOption, sliderOption) ||
                other.sliderOption == sliderOption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      titlePosition,
      elevation,
      round,
      padding,
      imageMaxHeightRatio,
      hideTitle,
      imagePosition,
      colorTitle,
      titleFont,
      mainFont,
      defaultOutlineOption,
      selectOutlineEnable,
      selectOutlineOption,
      defaultColorOption,
      selectColorEnable,
      selectColorOption,
      sliderOption);

  @override
  String toString() {
    return 'ChoiceNodeDesignPreset(titlePosition: $titlePosition, elevation: $elevation, round: $round, padding: $padding, imageMaxHeightRatio: $imageMaxHeightRatio, hideTitle: $hideTitle, imagePosition: $imagePosition, colorTitle: $colorTitle, titleFont: $titleFont, mainFont: $mainFont, defaultOutlineOption: $defaultOutlineOption, selectOutlineEnable: $selectOutlineEnable, selectOutlineOption: $selectOutlineOption, defaultColorOption: $defaultColorOption, selectColorEnable: $selectColorEnable, selectColorOption: $selectColorOption, sliderOption: $sliderOption)';
  }
}

/// @nodoc
abstract mixin class $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory $ChoiceNodeDesignPresetCopyWith(ChoiceNodeDesignPreset value,
          $Res Function(ChoiceNodeDesignPreset) _then) =
      _$ChoiceNodeDesignPresetCopyWithImpl;
  @useResult
  $Res call(
      {bool? titlePosition,
      double? elevation,
      VertexValue? round,
      EdgeValue? padding,
      double? imageMaxHeightRatio,
      bool? hideTitle,
      int? imagePosition,
      int? colorTitle,
      String? titleFont,
      String? mainFont,
      OutlineOption? defaultOutlineOption,
      bool? selectOutlineEnable,
      OutlineOption? selectOutlineOption,
      ColorOption? defaultColorOption,
      bool? selectColorEnable,
      ColorOption? selectColorOption,
      SliderOption? sliderOption});

  $VertexValueCopyWith<$Res>? get round;
  $EdgeValueCopyWith<$Res>? get padding;
  $OutlineOptionCopyWith<$Res>? get defaultOutlineOption;
  $OutlineOptionCopyWith<$Res>? get selectOutlineOption;
  $ColorOptionCopyWith<$Res>? get defaultColorOption;
  $ColorOptionCopyWith<$Res>? get selectColorOption;
  $SliderOptionCopyWith<$Res>? get sliderOption;
}

/// @nodoc
class _$ChoiceNodeDesignPresetCopyWithImpl<$Res>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  _$ChoiceNodeDesignPresetCopyWithImpl(this._self, this._then);

  final ChoiceNodeDesignPreset _self;
  final $Res Function(ChoiceNodeDesignPreset) _then;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titlePosition = freezed,
    Object? elevation = freezed,
    Object? round = freezed,
    Object? padding = freezed,
    Object? imageMaxHeightRatio = freezed,
    Object? hideTitle = freezed,
    Object? imagePosition = freezed,
    Object? colorTitle = freezed,
    Object? titleFont = freezed,
    Object? mainFont = freezed,
    Object? defaultOutlineOption = freezed,
    Object? selectOutlineEnable = freezed,
    Object? selectOutlineOption = freezed,
    Object? defaultColorOption = freezed,
    Object? selectColorEnable = freezed,
    Object? selectColorOption = freezed,
    Object? sliderOption = freezed,
  }) {
    return _then(_self.copyWith(
      titlePosition: freezed == titlePosition
          ? _self.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      round: freezed == round
          ? _self.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeValue?,
      imageMaxHeightRatio: freezed == imageMaxHeightRatio
          ? _self.imageMaxHeightRatio
          : imageMaxHeightRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      hideTitle: freezed == hideTitle
          ? _self.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePosition: freezed == imagePosition
          ? _self.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int?,
      colorTitle: freezed == colorTitle
          ? _self.colorTitle
          : colorTitle // ignore: cast_nullable_to_non_nullable
              as int?,
      titleFont: freezed == titleFont
          ? _self.titleFont
          : titleFont // ignore: cast_nullable_to_non_nullable
              as String?,
      mainFont: freezed == mainFont
          ? _self.mainFont
          : mainFont // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultOutlineOption: freezed == defaultOutlineOption
          ? _self.defaultOutlineOption
          : defaultOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      selectOutlineEnable: freezed == selectOutlineEnable
          ? _self.selectOutlineEnable
          : selectOutlineEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectOutlineOption: freezed == selectOutlineOption
          ? _self.selectOutlineOption
          : selectOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      defaultColorOption: freezed == defaultColorOption
          ? _self.defaultColorOption
          : defaultColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      selectColorEnable: freezed == selectColorEnable
          ? _self.selectColorEnable
          : selectColorEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectColorOption: freezed == selectColorOption
          ? _self.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      sliderOption: freezed == sliderOption
          ? _self.sliderOption
          : sliderOption // ignore: cast_nullable_to_non_nullable
              as SliderOption?,
    ));
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VertexValueCopyWith<$Res>? get round {
    if (_self.round == null) {
      return null;
    }

    return $VertexValueCopyWith<$Res>(_self.round!, (value) {
      return _then(_self.copyWith(round: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $EdgeValueCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res>? get defaultOutlineOption {
    if (_self.defaultOutlineOption == null) {
      return null;
    }

    return $OutlineOptionCopyWith<$Res>(_self.defaultOutlineOption!, (value) {
      return _then(_self.copyWith(defaultOutlineOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res>? get selectOutlineOption {
    if (_self.selectOutlineOption == null) {
      return null;
    }

    return $OutlineOptionCopyWith<$Res>(_self.selectOutlineOption!, (value) {
      return _then(_self.copyWith(selectOutlineOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get defaultColorOption {
    if (_self.defaultColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_self.defaultColorOption!, (value) {
      return _then(_self.copyWith(defaultColorOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get selectColorOption {
    if (_self.selectColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_self.selectColorOption!, (value) {
      return _then(_self.copyWith(selectColorOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SliderOptionCopyWith<$Res>? get sliderOption {
    if (_self.sliderOption == null) {
      return null;
    }

    return $SliderOptionCopyWith<$Res>(_self.sliderOption!, (value) {
      return _then(_self.copyWith(sliderOption: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChoiceNodeDesignPreset].
extension ChoiceNodeDesignPresetPatterns on ChoiceNodeDesignPreset {
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
    TResult Function(_ChoiceNodeDesignPreset value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesignPreset() when $default != null:
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
    TResult Function(_ChoiceNodeDesignPreset value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesignPreset():
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
    TResult? Function(_ChoiceNodeDesignPreset value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesignPreset() when $default != null:
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
    TResult Function(
            bool? titlePosition,
            double? elevation,
            VertexValue? round,
            EdgeValue? padding,
            double? imageMaxHeightRatio,
            bool? hideTitle,
            int? imagePosition,
            int? colorTitle,
            String? titleFont,
            String? mainFont,
            OutlineOption? defaultOutlineOption,
            bool? selectOutlineEnable,
            OutlineOption? selectOutlineOption,
            ColorOption? defaultColorOption,
            bool? selectColorEnable,
            ColorOption? selectColorOption,
            SliderOption? sliderOption)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesignPreset() when $default != null:
        return $default(
            _that.titlePosition,
            _that.elevation,
            _that.round,
            _that.padding,
            _that.imageMaxHeightRatio,
            _that.hideTitle,
            _that.imagePosition,
            _that.colorTitle,
            _that.titleFont,
            _that.mainFont,
            _that.defaultOutlineOption,
            _that.selectOutlineEnable,
            _that.selectOutlineOption,
            _that.defaultColorOption,
            _that.selectColorEnable,
            _that.selectColorOption,
            _that.sliderOption);
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
    TResult Function(
            bool? titlePosition,
            double? elevation,
            VertexValue? round,
            EdgeValue? padding,
            double? imageMaxHeightRatio,
            bool? hideTitle,
            int? imagePosition,
            int? colorTitle,
            String? titleFont,
            String? mainFont,
            OutlineOption? defaultOutlineOption,
            bool? selectOutlineEnable,
            OutlineOption? selectOutlineOption,
            ColorOption? defaultColorOption,
            bool? selectColorEnable,
            ColorOption? selectColorOption,
            SliderOption? sliderOption)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesignPreset():
        return $default(
            _that.titlePosition,
            _that.elevation,
            _that.round,
            _that.padding,
            _that.imageMaxHeightRatio,
            _that.hideTitle,
            _that.imagePosition,
            _that.colorTitle,
            _that.titleFont,
            _that.mainFont,
            _that.defaultOutlineOption,
            _that.selectOutlineEnable,
            _that.selectOutlineOption,
            _that.defaultColorOption,
            _that.selectColorEnable,
            _that.selectColorOption,
            _that.sliderOption);
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
    TResult? Function(
            bool? titlePosition,
            double? elevation,
            VertexValue? round,
            EdgeValue? padding,
            double? imageMaxHeightRatio,
            bool? hideTitle,
            int? imagePosition,
            int? colorTitle,
            String? titleFont,
            String? mainFont,
            OutlineOption? defaultOutlineOption,
            bool? selectOutlineEnable,
            OutlineOption? selectOutlineOption,
            ColorOption? defaultColorOption,
            bool? selectColorEnable,
            ColorOption? selectColorOption,
            SliderOption? sliderOption)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesignPreset() when $default != null:
        return $default(
            _that.titlePosition,
            _that.elevation,
            _that.round,
            _that.padding,
            _that.imageMaxHeightRatio,
            _that.hideTitle,
            _that.imagePosition,
            _that.colorTitle,
            _that.titleFont,
            _that.mainFont,
            _that.defaultOutlineOption,
            _that.selectOutlineEnable,
            _that.selectOutlineOption,
            _that.defaultColorOption,
            _that.selectColorEnable,
            _that.selectColorOption,
            _that.sliderOption);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChoiceNodeDesignPreset extends ChoiceNodeDesignPreset {
  const _ChoiceNodeDesignPreset(
      {this.titlePosition = true,
      this.elevation = 4.0,
      this.round = const VertexValue(
          topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0, bottomRight: 4.0),
      this.padding =
          const EdgeValue(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
      this.imageMaxHeightRatio = 0.5,
      this.hideTitle = false,
      this.imagePosition = 0,
      this.colorTitle = 0xFF000000,
      this.titleFont = "notoSans",
      this.mainFont = "notoSans",
      this.defaultOutlineOption = const OutlineOption(
          distance: EdgeValue(top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
          outlineColor: ColorOption(color: 0xFFFFFFFF)),
      this.selectOutlineEnable = true,
      this.selectOutlineOption = const OutlineOption(
          distance: EdgeValue(top: 4.0, left: 4.0, right: 4.0, bottom: 4.0),
          outlineColor: ColorOption(color: 0xFF91ABFF)),
      this.defaultColorOption = const ColorOption(color: 0xFFFFFFFF),
      this.selectColorEnable = true,
      this.selectColorOption = const ColorOption(
          colorType: ColorType.gradient,
          gradientType: GradientType.linear,
          gradientData: [
            GradientData(gradientPos: (0, 0), color: 0xFFDADBFF),
            GradientData(gradientPos: (1, 1), color: 0xFFD6F3FF)
          ]),
      this.sliderOption = const SliderOption(
          sliderThumbColor: ColorOption(color: 0xFFDAF4FF),
          sliderTrackActiveColor: ColorOption(color: 0xFFB0E5FD),
          sliderTrackInactiveColor: ColorOption(color: 0xFFC6EDFF),
          sliderThumbShape: SliderThumbShape.circle)})
      : super._();
  factory _ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignPresetFromJson(json);

  @override
  @JsonKey()
  final bool? titlePosition;
  @override
  @JsonKey()
  final double? elevation;
  @override
  @JsonKey()
  final VertexValue? round;
  @override
  @JsonKey()
  final EdgeValue? padding;
  @override
  @JsonKey()
  final double? imageMaxHeightRatio;
  @override
  @JsonKey()
  final bool? hideTitle;
  @override
  @JsonKey()
  final int? imagePosition;
//0:default, 1:image-right 2:image-left
  @override
  @JsonKey()
  final int? colorTitle;
  @override
  @JsonKey()
  final String? titleFont;
  @override
  @JsonKey()
  final String? mainFont;
  @override
  @JsonKey()
  final OutlineOption? defaultOutlineOption;
  @override
  @JsonKey()
  final bool? selectOutlineEnable;
  @override
  @JsonKey()
  final OutlineOption? selectOutlineOption;
  @override
  @JsonKey()
  final ColorOption? defaultColorOption;
  @override
  @JsonKey()
  final bool? selectColorEnable;
  @override
  @JsonKey()
  final ColorOption? selectColorOption;
  @override
  @JsonKey()
  final SliderOption? sliderOption;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoiceNodeDesignPresetCopyWith<_ChoiceNodeDesignPreset> get copyWith =>
      __$ChoiceNodeDesignPresetCopyWithImpl<_ChoiceNodeDesignPreset>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChoiceNodeDesignPresetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoiceNodeDesignPreset &&
            (identical(other.titlePosition, titlePosition) ||
                other.titlePosition == titlePosition) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.imageMaxHeightRatio, imageMaxHeightRatio) ||
                other.imageMaxHeightRatio == imageMaxHeightRatio) &&
            (identical(other.hideTitle, hideTitle) ||
                other.hideTitle == hideTitle) &&
            (identical(other.imagePosition, imagePosition) ||
                other.imagePosition == imagePosition) &&
            (identical(other.colorTitle, colorTitle) ||
                other.colorTitle == colorTitle) &&
            (identical(other.titleFont, titleFont) ||
                other.titleFont == titleFont) &&
            (identical(other.mainFont, mainFont) ||
                other.mainFont == mainFont) &&
            (identical(other.defaultOutlineOption, defaultOutlineOption) ||
                other.defaultOutlineOption == defaultOutlineOption) &&
            (identical(other.selectOutlineEnable, selectOutlineEnable) ||
                other.selectOutlineEnable == selectOutlineEnable) &&
            (identical(other.selectOutlineOption, selectOutlineOption) ||
                other.selectOutlineOption == selectOutlineOption) &&
            (identical(other.defaultColorOption, defaultColorOption) ||
                other.defaultColorOption == defaultColorOption) &&
            (identical(other.selectColorEnable, selectColorEnable) ||
                other.selectColorEnable == selectColorEnable) &&
            (identical(other.selectColorOption, selectColorOption) ||
                other.selectColorOption == selectColorOption) &&
            (identical(other.sliderOption, sliderOption) ||
                other.sliderOption == sliderOption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      titlePosition,
      elevation,
      round,
      padding,
      imageMaxHeightRatio,
      hideTitle,
      imagePosition,
      colorTitle,
      titleFont,
      mainFont,
      defaultOutlineOption,
      selectOutlineEnable,
      selectOutlineOption,
      defaultColorOption,
      selectColorEnable,
      selectColorOption,
      sliderOption);

  @override
  String toString() {
    return 'ChoiceNodeDesignPreset(titlePosition: $titlePosition, elevation: $elevation, round: $round, padding: $padding, imageMaxHeightRatio: $imageMaxHeightRatio, hideTitle: $hideTitle, imagePosition: $imagePosition, colorTitle: $colorTitle, titleFont: $titleFont, mainFont: $mainFont, defaultOutlineOption: $defaultOutlineOption, selectOutlineEnable: $selectOutlineEnable, selectOutlineOption: $selectOutlineOption, defaultColorOption: $defaultColorOption, selectColorEnable: $selectColorEnable, selectColorOption: $selectColorOption, sliderOption: $sliderOption)';
  }
}

/// @nodoc
abstract mixin class _$ChoiceNodeDesignPresetCopyWith<$Res>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory _$ChoiceNodeDesignPresetCopyWith(_ChoiceNodeDesignPreset value,
          $Res Function(_ChoiceNodeDesignPreset) _then) =
      __$ChoiceNodeDesignPresetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? titlePosition,
      double? elevation,
      VertexValue? round,
      EdgeValue? padding,
      double? imageMaxHeightRatio,
      bool? hideTitle,
      int? imagePosition,
      int? colorTitle,
      String? titleFont,
      String? mainFont,
      OutlineOption? defaultOutlineOption,
      bool? selectOutlineEnable,
      OutlineOption? selectOutlineOption,
      ColorOption? defaultColorOption,
      bool? selectColorEnable,
      ColorOption? selectColorOption,
      SliderOption? sliderOption});

  @override
  $VertexValueCopyWith<$Res>? get round;
  @override
  $EdgeValueCopyWith<$Res>? get padding;
  @override
  $OutlineOptionCopyWith<$Res>? get defaultOutlineOption;
  @override
  $OutlineOptionCopyWith<$Res>? get selectOutlineOption;
  @override
  $ColorOptionCopyWith<$Res>? get defaultColorOption;
  @override
  $ColorOptionCopyWith<$Res>? get selectColorOption;
  @override
  $SliderOptionCopyWith<$Res>? get sliderOption;
}

/// @nodoc
class __$ChoiceNodeDesignPresetCopyWithImpl<$Res>
    implements _$ChoiceNodeDesignPresetCopyWith<$Res> {
  __$ChoiceNodeDesignPresetCopyWithImpl(this._self, this._then);

  final _ChoiceNodeDesignPreset _self;
  final $Res Function(_ChoiceNodeDesignPreset) _then;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? titlePosition = freezed,
    Object? elevation = freezed,
    Object? round = freezed,
    Object? padding = freezed,
    Object? imageMaxHeightRatio = freezed,
    Object? hideTitle = freezed,
    Object? imagePosition = freezed,
    Object? colorTitle = freezed,
    Object? titleFont = freezed,
    Object? mainFont = freezed,
    Object? defaultOutlineOption = freezed,
    Object? selectOutlineEnable = freezed,
    Object? selectOutlineOption = freezed,
    Object? defaultColorOption = freezed,
    Object? selectColorEnable = freezed,
    Object? selectColorOption = freezed,
    Object? sliderOption = freezed,
  }) {
    return _then(_ChoiceNodeDesignPreset(
      titlePosition: freezed == titlePosition
          ? _self.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _self.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      round: freezed == round
          ? _self.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue?,
      padding: freezed == padding
          ? _self.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeValue?,
      imageMaxHeightRatio: freezed == imageMaxHeightRatio
          ? _self.imageMaxHeightRatio
          : imageMaxHeightRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      hideTitle: freezed == hideTitle
          ? _self.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePosition: freezed == imagePosition
          ? _self.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int?,
      colorTitle: freezed == colorTitle
          ? _self.colorTitle
          : colorTitle // ignore: cast_nullable_to_non_nullable
              as int?,
      titleFont: freezed == titleFont
          ? _self.titleFont
          : titleFont // ignore: cast_nullable_to_non_nullable
              as String?,
      mainFont: freezed == mainFont
          ? _self.mainFont
          : mainFont // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultOutlineOption: freezed == defaultOutlineOption
          ? _self.defaultOutlineOption
          : defaultOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      selectOutlineEnable: freezed == selectOutlineEnable
          ? _self.selectOutlineEnable
          : selectOutlineEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectOutlineOption: freezed == selectOutlineOption
          ? _self.selectOutlineOption
          : selectOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      defaultColorOption: freezed == defaultColorOption
          ? _self.defaultColorOption
          : defaultColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      selectColorEnable: freezed == selectColorEnable
          ? _self.selectColorEnable
          : selectColorEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectColorOption: freezed == selectColorOption
          ? _self.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      sliderOption: freezed == sliderOption
          ? _self.sliderOption
          : sliderOption // ignore: cast_nullable_to_non_nullable
              as SliderOption?,
    ));
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VertexValueCopyWith<$Res>? get round {
    if (_self.round == null) {
      return null;
    }

    return $VertexValueCopyWith<$Res>(_self.round!, (value) {
      return _then(_self.copyWith(round: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<$Res>? get padding {
    if (_self.padding == null) {
      return null;
    }

    return $EdgeValueCopyWith<$Res>(_self.padding!, (value) {
      return _then(_self.copyWith(padding: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res>? get defaultOutlineOption {
    if (_self.defaultOutlineOption == null) {
      return null;
    }

    return $OutlineOptionCopyWith<$Res>(_self.defaultOutlineOption!, (value) {
      return _then(_self.copyWith(defaultOutlineOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res>? get selectOutlineOption {
    if (_self.selectOutlineOption == null) {
      return null;
    }

    return $OutlineOptionCopyWith<$Res>(_self.selectOutlineOption!, (value) {
      return _then(_self.copyWith(selectOutlineOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get defaultColorOption {
    if (_self.defaultColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_self.defaultColorOption!, (value) {
      return _then(_self.copyWith(defaultColorOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get selectColorOption {
    if (_self.selectColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_self.selectColorOption!, (value) {
      return _then(_self.copyWith(selectColorOption: value));
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SliderOptionCopyWith<$Res>? get sliderOption {
    if (_self.sliderOption == null) {
      return null;
    }

    return $SliderOptionCopyWith<$Res>(_self.sliderOption!, (value) {
      return _then(_self.copyWith(sliderOption: value));
    });
  }
}

// dart format on
