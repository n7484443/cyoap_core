// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GradientData {
  (double, double) get gradientPos;
  int get color;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GradientDataCopyWith<GradientData> get copyWith =>
      _$GradientDataCopyWithImpl<GradientData>(
          this as GradientData, _$identity);

  /// Serializes this GradientData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GradientData &&
            (identical(other.gradientPos, gradientPos) ||
                other.gradientPos == gradientPos) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gradientPos, color);

  @override
  String toString() {
    return 'GradientData(gradientPos: $gradientPos, color: $color)';
  }
}

/// @nodoc
abstract mixin class $GradientDataCopyWith<$Res> {
  factory $GradientDataCopyWith(
          GradientData value, $Res Function(GradientData) _then) =
      _$GradientDataCopyWithImpl;
  @useResult
  $Res call({(double, double) gradientPos, int color});
}

/// @nodoc
class _$GradientDataCopyWithImpl<$Res> implements $GradientDataCopyWith<$Res> {
  _$GradientDataCopyWithImpl(this._self, this._then);

  final GradientData _self;
  final $Res Function(GradientData) _then;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientPos = null,
    Object? color = null,
  }) {
    return _then(_self.copyWith(
      gradientPos: null == gradientPos
          ? _self.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [GradientData].
extension GradientDataPatterns on GradientData {
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
    TResult Function(_GradientData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GradientData() when $default != null:
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
    TResult Function(_GradientData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GradientData():
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
    TResult? Function(_GradientData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GradientData() when $default != null:
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
    TResult Function((double, double) gradientPos, int color)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GradientData() when $default != null:
        return $default(_that.gradientPos, _that.color);
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
    TResult Function((double, double) gradientPos, int color) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GradientData():
        return $default(_that.gradientPos, _that.color);
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
    TResult? Function((double, double) gradientPos, int color)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GradientData() when $default != null:
        return $default(_that.gradientPos, _that.color);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GradientData implements GradientData {
  const _GradientData(
      {this.gradientPos = const (0.5, 0.5), this.color = 0xFFFFFFFF});
  factory _GradientData.fromJson(Map<String, dynamic> json) =>
      _$GradientDataFromJson(json);

  @override
  @JsonKey()
  final (double, double) gradientPos;
  @override
  @JsonKey()
  final int color;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GradientDataCopyWith<_GradientData> get copyWith =>
      __$GradientDataCopyWithImpl<_GradientData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GradientDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GradientData &&
            (identical(other.gradientPos, gradientPos) ||
                other.gradientPos == gradientPos) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gradientPos, color);

  @override
  String toString() {
    return 'GradientData(gradientPos: $gradientPos, color: $color)';
  }
}

/// @nodoc
abstract mixin class _$GradientDataCopyWith<$Res>
    implements $GradientDataCopyWith<$Res> {
  factory _$GradientDataCopyWith(
          _GradientData value, $Res Function(_GradientData) _then) =
      __$GradientDataCopyWithImpl;
  @override
  @useResult
  $Res call({(double, double) gradientPos, int color});
}

/// @nodoc
class __$GradientDataCopyWithImpl<$Res>
    implements _$GradientDataCopyWith<$Res> {
  __$GradientDataCopyWithImpl(this._self, this._then);

  final _GradientData _self;
  final $Res Function(_GradientData) _then;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gradientPos = null,
    Object? color = null,
  }) {
    return _then(_GradientData(
      gradientPos: null == gradientPos
          ? _self.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$ColorOption {
  ColorType get colorType;
  int get color;
  GradientType get gradientType;
  List<GradientData> get gradientData;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      _$ColorOptionCopyWithImpl<ColorOption>(this as ColorOption, _$identity);

  /// Serializes this ColorOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColorOption &&
            (identical(other.colorType, colorType) ||
                other.colorType == colorType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradientType, gradientType) ||
                other.gradientType == gradientType) &&
            const DeepCollectionEquality()
                .equals(other.gradientData, gradientData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorType, color, gradientType,
      const DeepCollectionEquality().hash(gradientData));

  @override
  String toString() {
    return 'ColorOption(colorType: $colorType, color: $color, gradientType: $gradientType, gradientData: $gradientData)';
  }
}

/// @nodoc
abstract mixin class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) _then) =
      _$ColorOptionCopyWithImpl;
  @useResult
  $Res call(
      {ColorType colorType,
      int color,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res> implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._self, this._then);

  final ColorOption _self;
  final $Res Function(ColorOption) _then;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorType = null,
    Object? color = null,
    Object? gradientType = null,
    Object? gradientData = null,
  }) {
    return _then(_self.copyWith(
      colorType: null == colorType
          ? _self.colorType
          : colorType // ignore: cast_nullable_to_non_nullable
              as ColorType,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      gradientType: null == gradientType
          ? _self.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _self.gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ColorOption].
extension ColorOptionPatterns on ColorOption {
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
    TResult Function(_ColorOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColorOption() when $default != null:
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
    TResult Function(_ColorOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorOption():
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
    TResult? Function(_ColorOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorOption() when $default != null:
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
    TResult Function(ColorType colorType, int color, GradientType gradientType,
            List<GradientData> gradientData)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColorOption() when $default != null:
        return $default(_that.colorType, _that.color, _that.gradientType,
            _that.gradientData);
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
    TResult Function(ColorType colorType, int color, GradientType gradientType,
            List<GradientData> gradientData)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorOption():
        return $default(_that.colorType, _that.color, _that.gradientType,
            _that.gradientData);
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
    TResult? Function(ColorType colorType, int color, GradientType gradientType,
            List<GradientData> gradientData)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorOption() when $default != null:
        return $default(_that.colorType, _that.color, _that.gradientType,
            _that.gradientData);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ColorOption implements ColorOption {
  const _ColorOption(
      {this.colorType = ColorType.solid,
      this.color = 0xFF40C4FF,
      this.gradientType = GradientType.linear,
      this.gradientData = const [
        GradientData(gradientPos: (0, 0)),
        GradientData(gradientPos: (1, 1))
      ]});
  factory _ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);

  @override
  @JsonKey()
  final ColorType colorType;
  @override
  @JsonKey()
  final int color;
  @override
  @JsonKey()
  final GradientType gradientType;
  @override
  @JsonKey()
  final List<GradientData> gradientData;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColorOptionCopyWith<_ColorOption> get copyWith =>
      __$ColorOptionCopyWithImpl<_ColorOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ColorOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorOption &&
            (identical(other.colorType, colorType) ||
                other.colorType == colorType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradientType, gradientType) ||
                other.gradientType == gradientType) &&
            const DeepCollectionEquality()
                .equals(other.gradientData, gradientData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorType, color, gradientType,
      const DeepCollectionEquality().hash(gradientData));

  @override
  String toString() {
    return 'ColorOption(colorType: $colorType, color: $color, gradientType: $gradientType, gradientData: $gradientData)';
  }
}

/// @nodoc
abstract mixin class _$ColorOptionCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$ColorOptionCopyWith(
          _ColorOption value, $Res Function(_ColorOption) _then) =
      __$ColorOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ColorType colorType,
      int color,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class __$ColorOptionCopyWithImpl<$Res> implements _$ColorOptionCopyWith<$Res> {
  __$ColorOptionCopyWithImpl(this._self, this._then);

  final _ColorOption _self;
  final $Res Function(_ColorOption) _then;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? colorType = null,
    Object? color = null,
    Object? gradientType = null,
    Object? gradientData = null,
  }) {
    return _then(_ColorOption(
      colorType: null == colorType
          ? _self.colorType
          : colorType // ignore: cast_nullable_to_non_nullable
              as ColorType,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      gradientType: null == gradientType
          ? _self.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _self.gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ));
  }
}

// dart format on
