// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OutlineOption _$OutlineOptionFromJson(Map<String, dynamic> json) {
  return _OutlineOption.fromJson(json);
}

/// @nodoc
mixin _$OutlineOption {
  OutlineType get outlineType => throw _privateConstructorUsedError;
  ColorOption get outlineColor => throw _privateConstructorUsedError;
  double get outlinePadding => throw _privateConstructorUsedError;
  double get outlineWidth => throw _privateConstructorUsedError;

  /// Serializes this OutlineOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OutlineOptionCopyWith<OutlineOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutlineOptionCopyWith<$Res> {
  factory $OutlineOptionCopyWith(
          OutlineOption value, $Res Function(OutlineOption) then) =
      _$OutlineOptionCopyWithImpl<$Res, OutlineOption>;
  @useResult
  $Res call(
      {OutlineType outlineType,
      ColorOption outlineColor,
      double outlinePadding,
      double outlineWidth});

  $ColorOptionCopyWith<$Res> get outlineColor;
}

/// @nodoc
class _$OutlineOptionCopyWithImpl<$Res, $Val extends OutlineOption>
    implements $OutlineOptionCopyWith<$Res> {
  _$OutlineOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlineType = null,
    Object? outlineColor = null,
    Object? outlinePadding = null,
    Object? outlineWidth = null,
  }) {
    return _then(_value.copyWith(
      outlineType: null == outlineType
          ? _value.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineColor: null == outlineColor
          ? _value.outlineColor
          : outlineColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      outlinePadding: null == outlinePadding
          ? _value.outlinePadding
          : outlinePadding // ignore: cast_nullable_to_non_nullable
              as double,
      outlineWidth: null == outlineWidth
          ? _value.outlineWidth
          : outlineWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get outlineColor {
    return $ColorOptionCopyWith<$Res>(_value.outlineColor, (value) {
      return _then(_value.copyWith(outlineColor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OutlineOptionImplCopyWith<$Res>
    implements $OutlineOptionCopyWith<$Res> {
  factory _$$OutlineOptionImplCopyWith(
          _$OutlineOptionImpl value, $Res Function(_$OutlineOptionImpl) then) =
      __$$OutlineOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OutlineType outlineType,
      ColorOption outlineColor,
      double outlinePadding,
      double outlineWidth});

  @override
  $ColorOptionCopyWith<$Res> get outlineColor;
}

/// @nodoc
class __$$OutlineOptionImplCopyWithImpl<$Res>
    extends _$OutlineOptionCopyWithImpl<$Res, _$OutlineOptionImpl>
    implements _$$OutlineOptionImplCopyWith<$Res> {
  __$$OutlineOptionImplCopyWithImpl(
      _$OutlineOptionImpl _value, $Res Function(_$OutlineOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlineType = null,
    Object? outlineColor = null,
    Object? outlinePadding = null,
    Object? outlineWidth = null,
  }) {
    return _then(_$OutlineOptionImpl(
      outlineType: null == outlineType
          ? _value.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineColor: null == outlineColor
          ? _value.outlineColor
          : outlineColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      outlinePadding: null == outlinePadding
          ? _value.outlinePadding
          : outlinePadding // ignore: cast_nullable_to_non_nullable
              as double,
      outlineWidth: null == outlineWidth
          ? _value.outlineWidth
          : outlineWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutlineOptionImpl implements _OutlineOption {
  const _$OutlineOptionImpl(
      {this.outlineType = OutlineType.solid,
      this.outlineColor = const ColorOption(),
      this.outlinePadding = 4.0,
      this.outlineWidth = 2.0});

  factory _$OutlineOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutlineOptionImplFromJson(json);

  @override
  @JsonKey()
  final OutlineType outlineType;
  @override
  @JsonKey()
  final ColorOption outlineColor;
  @override
  @JsonKey()
  final double outlinePadding;
  @override
  @JsonKey()
  final double outlineWidth;

  @override
  String toString() {
    return 'OutlineOption(outlineType: $outlineType, outlineColor: $outlineColor, outlinePadding: $outlinePadding, outlineWidth: $outlineWidth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutlineOptionImpl &&
            (identical(other.outlineType, outlineType) ||
                other.outlineType == outlineType) &&
            (identical(other.outlineColor, outlineColor) ||
                other.outlineColor == outlineColor) &&
            (identical(other.outlinePadding, outlinePadding) ||
                other.outlinePadding == outlinePadding) &&
            (identical(other.outlineWidth, outlineWidth) ||
                other.outlineWidth == outlineWidth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, outlineType, outlineColor, outlinePadding, outlineWidth);

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutlineOptionImplCopyWith<_$OutlineOptionImpl> get copyWith =>
      __$$OutlineOptionImplCopyWithImpl<_$OutlineOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutlineOptionImplToJson(
      this,
    );
  }
}

abstract class _OutlineOption implements OutlineOption {
  const factory _OutlineOption(
      {final OutlineType outlineType,
      final ColorOption outlineColor,
      final double outlinePadding,
      final double outlineWidth}) = _$OutlineOptionImpl;

  factory _OutlineOption.fromJson(Map<String, dynamic> json) =
      _$OutlineOptionImpl.fromJson;

  @override
  OutlineType get outlineType;
  @override
  ColorOption get outlineColor;
  @override
  double get outlinePadding;
  @override
  double get outlineWidth;

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutlineOptionImplCopyWith<_$OutlineOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderOption _$SliderOptionFromJson(Map<String, dynamic> json) {
  return _SliderOption.fromJson(json);
}

/// @nodoc
mixin _$SliderOption {
  ColorOption get sliderThumbColor => throw _privateConstructorUsedError;
  ColorOption get sliderTrackActiveColor => throw _privateConstructorUsedError;
  ColorOption get sliderTrackInactiveColor =>
      throw _privateConstructorUsedError;
  SliderThumbShape get sliderThumbShape => throw _privateConstructorUsedError;

  /// Serializes this SliderOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderOptionCopyWith<SliderOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderOptionCopyWith<$Res> {
  factory $SliderOptionCopyWith(
          SliderOption value, $Res Function(SliderOption) then) =
      _$SliderOptionCopyWithImpl<$Res, SliderOption>;
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
class _$SliderOptionCopyWithImpl<$Res, $Val extends SliderOption>
    implements $SliderOptionCopyWith<$Res> {
  _$SliderOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      sliderThumbColor: null == sliderThumbColor
          ? _value.sliderThumbColor
          : sliderThumbColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackActiveColor: null == sliderTrackActiveColor
          ? _value.sliderTrackActiveColor
          : sliderTrackActiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackInactiveColor: null == sliderTrackInactiveColor
          ? _value.sliderTrackInactiveColor
          : sliderTrackInactiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderThumbShape: null == sliderThumbShape
          ? _value.sliderThumbShape
          : sliderThumbShape // ignore: cast_nullable_to_non_nullable
              as SliderThumbShape,
    ) as $Val);
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderThumbColor {
    return $ColorOptionCopyWith<$Res>(_value.sliderThumbColor, (value) {
      return _then(_value.copyWith(sliderThumbColor: value) as $Val);
    });
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderTrackActiveColor {
    return $ColorOptionCopyWith<$Res>(_value.sliderTrackActiveColor, (value) {
      return _then(_value.copyWith(sliderTrackActiveColor: value) as $Val);
    });
  }

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get sliderTrackInactiveColor {
    return $ColorOptionCopyWith<$Res>(_value.sliderTrackInactiveColor, (value) {
      return _then(_value.copyWith(sliderTrackInactiveColor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SliderOptionImplCopyWith<$Res>
    implements $SliderOptionCopyWith<$Res> {
  factory _$$SliderOptionImplCopyWith(
          _$SliderOptionImpl value, $Res Function(_$SliderOptionImpl) then) =
      __$$SliderOptionImplCopyWithImpl<$Res>;
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
class __$$SliderOptionImplCopyWithImpl<$Res>
    extends _$SliderOptionCopyWithImpl<$Res, _$SliderOptionImpl>
    implements _$$SliderOptionImplCopyWith<$Res> {
  __$$SliderOptionImplCopyWithImpl(
      _$SliderOptionImpl _value, $Res Function(_$SliderOptionImpl) _then)
      : super(_value, _then);

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
    return _then(_$SliderOptionImpl(
      sliderThumbColor: null == sliderThumbColor
          ? _value.sliderThumbColor
          : sliderThumbColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackActiveColor: null == sliderTrackActiveColor
          ? _value.sliderTrackActiveColor
          : sliderTrackActiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderTrackInactiveColor: null == sliderTrackInactiveColor
          ? _value.sliderTrackInactiveColor
          : sliderTrackInactiveColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      sliderThumbShape: null == sliderThumbShape
          ? _value.sliderThumbShape
          : sliderThumbShape // ignore: cast_nullable_to_non_nullable
              as SliderThumbShape,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderOptionImpl implements _SliderOption {
  const _$SliderOptionImpl(
      {this.sliderThumbColor = const ColorOption(),
      this.sliderTrackActiveColor = const ColorOption(),
      this.sliderTrackInactiveColor = const ColorOption(),
      this.sliderThumbShape = SliderThumbShape.circle});

  factory _$SliderOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderOptionImplFromJson(json);

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

  @override
  String toString() {
    return 'SliderOption(sliderThumbColor: $sliderThumbColor, sliderTrackActiveColor: $sliderTrackActiveColor, sliderTrackInactiveColor: $sliderTrackInactiveColor, sliderThumbShape: $sliderThumbShape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderOptionImpl &&
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

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderOptionImplCopyWith<_$SliderOptionImpl> get copyWith =>
      __$$SliderOptionImplCopyWithImpl<_$SliderOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderOptionImplToJson(
      this,
    );
  }
}

abstract class _SliderOption implements SliderOption {
  const factory _SliderOption(
      {final ColorOption sliderThumbColor,
      final ColorOption sliderTrackActiveColor,
      final ColorOption sliderTrackInactiveColor,
      final SliderThumbShape sliderThumbShape}) = _$SliderOptionImpl;

  factory _SliderOption.fromJson(Map<String, dynamic> json) =
      _$SliderOptionImpl.fromJson;

  @override
  ColorOption get sliderThumbColor;
  @override
  ColorOption get sliderTrackActiveColor;
  @override
  ColorOption get sliderTrackInactiveColor;
  @override
  SliderThumbShape get sliderThumbShape;

  /// Create a copy of SliderOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderOptionImplCopyWith<_$SliderOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GradientData _$GradientDataFromJson(Map<String, dynamic> json) {
  return _GradientData.fromJson(json);
}

/// @nodoc
mixin _$GradientData {
  (double, double) get gradientPos => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  /// Serializes this GradientData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GradientDataCopyWith<GradientData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientDataCopyWith<$Res> {
  factory $GradientDataCopyWith(
          GradientData value, $Res Function(GradientData) then) =
      _$GradientDataCopyWithImpl<$Res, GradientData>;
  @useResult
  $Res call({(double, double) gradientPos, int color});
}

/// @nodoc
class _$GradientDataCopyWithImpl<$Res, $Val extends GradientData>
    implements $GradientDataCopyWith<$Res> {
  _$GradientDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientPos = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      gradientPos: null == gradientPos
          ? _value.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GradientDataImplCopyWith<$Res>
    implements $GradientDataCopyWith<$Res> {
  factory _$$GradientDataImplCopyWith(
          _$GradientDataImpl value, $Res Function(_$GradientDataImpl) then) =
      __$$GradientDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({(double, double) gradientPos, int color});
}

/// @nodoc
class __$$GradientDataImplCopyWithImpl<$Res>
    extends _$GradientDataCopyWithImpl<$Res, _$GradientDataImpl>
    implements _$$GradientDataImplCopyWith<$Res> {
  __$$GradientDataImplCopyWithImpl(
      _$GradientDataImpl _value, $Res Function(_$GradientDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientPos = null,
    Object? color = null,
  }) {
    return _then(_$GradientDataImpl(
      gradientPos: null == gradientPos
          ? _value.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GradientDataImpl implements _GradientData {
  const _$GradientDataImpl(
      {this.gradientPos = const (0.5, 0.5), this.color = 0xFFFFFFFF});

  factory _$GradientDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GradientDataImplFromJson(json);

  @override
  @JsonKey()
  final (double, double) gradientPos;
  @override
  @JsonKey()
  final int color;

  @override
  String toString() {
    return 'GradientData(gradientPos: $gradientPos, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradientDataImpl &&
            (identical(other.gradientPos, gradientPos) ||
                other.gradientPos == gradientPos) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gradientPos, color);

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GradientDataImplCopyWith<_$GradientDataImpl> get copyWith =>
      __$$GradientDataImplCopyWithImpl<_$GradientDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GradientDataImplToJson(
      this,
    );
  }
}

abstract class _GradientData implements GradientData {
  const factory _GradientData(
      {final (double, double) gradientPos,
      final int color}) = _$GradientDataImpl;

  factory _GradientData.fromJson(Map<String, dynamic> json) =
      _$GradientDataImpl.fromJson;

  @override
  (double, double) get gradientPos;
  @override
  int get color;

  /// Create a copy of GradientData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GradientDataImplCopyWith<_$GradientDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  ColorType get colorType => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  GradientType get gradientType => throw _privateConstructorUsedError;
  List<GradientData> get gradientData => throw _privateConstructorUsedError;

  /// Serializes this ColorOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) then) =
      _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call(
      {ColorType colorType,
      int color,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      colorType: null == colorType
          ? _value.colorType
          : colorType // ignore: cast_nullable_to_non_nullable
              as ColorType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _value.gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
          _$ColorOptionImpl value, $Res Function(_$ColorOptionImpl) then) =
      __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ColorType colorType,
      int color,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
      _$ColorOptionImpl _value, $Res Function(_$ColorOptionImpl) _then)
      : super(_value, _then);

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
    return _then(_$ColorOptionImpl(
      colorType: null == colorType
          ? _value.colorType
          : colorType // ignore: cast_nullable_to_non_nullable
              as ColorType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _value.gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorOptionImpl implements _ColorOption {
  const _$ColorOptionImpl(
      {this.colorType = ColorType.solid,
      this.color = 0xFF40C4FF,
      this.gradientType = GradientType.linear,
      this.gradientData = const [
        GradientData(gradientPos: (0, 0)),
        GradientData(gradientPos: (1, 1))
      ]});

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

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

  @override
  String toString() {
    return 'ColorOption(colorType: $colorType, color: $color, gradientType: $gradientType, gradientData: $gradientData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
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

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption(
      {final ColorType colorType,
      final int color,
      final GradientType gradientType,
      final List<GradientData> gradientData}) = _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override
  ColorType get colorType;
  @override
  int get color;
  @override
  GradientType get gradientType;
  @override
  List<GradientData> get gradientData;

  /// Create a copy of ColorOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoiceNodeDesignPreset _$ChoiceNodeDesignPresetFromJson(
    Map<String, dynamic> json) {
  return _ChoiceNodeDesignPreset.fromJson(json);
}

/// @nodoc
mixin _$ChoiceNodeDesignPreset {
  String? get name => throw _privateConstructorUsedError;
  bool? get titlePosition => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  List<double>? get roundEdge => throw _privateConstructorUsedError;
  List<double>? get paddingAround => throw _privateConstructorUsedError;
  bool? get maximizingImage =>
      throw _privateConstructorUsedError; //true: 80%, false: 50%
  bool? get hideTitle => throw _privateConstructorUsedError;
  int? get imagePosition =>
      throw _privateConstructorUsedError; //0:default, 1:image-right 2:image-left
  int? get colorTitle => throw _privateConstructorUsedError;
  String? get titleFont => throw _privateConstructorUsedError;
  String? get mainFont => throw _privateConstructorUsedError;
  OutlineOption? get defaultOutlineOption => throw _privateConstructorUsedError;
  bool? get selectOutlineEnable => throw _privateConstructorUsedError;
  OutlineOption? get selectOutlineOption => throw _privateConstructorUsedError;
  ColorOption? get defaultColorOption => throw _privateConstructorUsedError;
  bool? get selectColorEnable => throw _privateConstructorUsedError;
  ColorOption? get selectColorOption => throw _privateConstructorUsedError;
  SliderOption? get sliderOption => throw _privateConstructorUsedError;

  /// Serializes this ChoiceNodeDesignPreset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoiceNodeDesignPresetCopyWith<ChoiceNodeDesignPreset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory $ChoiceNodeDesignPresetCopyWith(ChoiceNodeDesignPreset value,
          $Res Function(ChoiceNodeDesignPreset) then) =
      _$ChoiceNodeDesignPresetCopyWithImpl<$Res, ChoiceNodeDesignPreset>;
  @useResult
  $Res call(
      {String? name,
      bool? titlePosition,
      double? elevation,
      List<double>? roundEdge,
      List<double>? paddingAround,
      bool? maximizingImage,
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

  $OutlineOptionCopyWith<$Res>? get defaultOutlineOption;
  $OutlineOptionCopyWith<$Res>? get selectOutlineOption;
  $ColorOptionCopyWith<$Res>? get defaultColorOption;
  $ColorOptionCopyWith<$Res>? get selectColorOption;
  $SliderOptionCopyWith<$Res>? get sliderOption;
}

/// @nodoc
class _$ChoiceNodeDesignPresetCopyWithImpl<$Res,
        $Val extends ChoiceNodeDesignPreset>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  _$ChoiceNodeDesignPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? titlePosition = freezed,
    Object? elevation = freezed,
    Object? roundEdge = freezed,
    Object? paddingAround = freezed,
    Object? maximizingImage = freezed,
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
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      titlePosition: freezed == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      roundEdge: freezed == roundEdge
          ? _value.roundEdge
          : roundEdge // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      paddingAround: freezed == paddingAround
          ? _value.paddingAround
          : paddingAround // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      maximizingImage: freezed == maximizingImage
          ? _value.maximizingImage
          : maximizingImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideTitle: freezed == hideTitle
          ? _value.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePosition: freezed == imagePosition
          ? _value.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int?,
      colorTitle: freezed == colorTitle
          ? _value.colorTitle
          : colorTitle // ignore: cast_nullable_to_non_nullable
              as int?,
      titleFont: freezed == titleFont
          ? _value.titleFont
          : titleFont // ignore: cast_nullable_to_non_nullable
              as String?,
      mainFont: freezed == mainFont
          ? _value.mainFont
          : mainFont // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultOutlineOption: freezed == defaultOutlineOption
          ? _value.defaultOutlineOption
          : defaultOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      selectOutlineEnable: freezed == selectOutlineEnable
          ? _value.selectOutlineEnable
          : selectOutlineEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectOutlineOption: freezed == selectOutlineOption
          ? _value.selectOutlineOption
          : selectOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      defaultColorOption: freezed == defaultColorOption
          ? _value.defaultColorOption
          : defaultColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      selectColorEnable: freezed == selectColorEnable
          ? _value.selectColorEnable
          : selectColorEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectColorOption: freezed == selectColorOption
          ? _value.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      sliderOption: freezed == sliderOption
          ? _value.sliderOption
          : sliderOption // ignore: cast_nullable_to_non_nullable
              as SliderOption?,
    ) as $Val);
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res>? get defaultOutlineOption {
    if (_value.defaultOutlineOption == null) {
      return null;
    }

    return $OutlineOptionCopyWith<$Res>(_value.defaultOutlineOption!, (value) {
      return _then(_value.copyWith(defaultOutlineOption: value) as $Val);
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res>? get selectOutlineOption {
    if (_value.selectOutlineOption == null) {
      return null;
    }

    return $OutlineOptionCopyWith<$Res>(_value.selectOutlineOption!, (value) {
      return _then(_value.copyWith(selectOutlineOption: value) as $Val);
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get defaultColorOption {
    if (_value.defaultColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_value.defaultColorOption!, (value) {
      return _then(_value.copyWith(defaultColorOption: value) as $Val);
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res>? get selectColorOption {
    if (_value.selectColorOption == null) {
      return null;
    }

    return $ColorOptionCopyWith<$Res>(_value.selectColorOption!, (value) {
      return _then(_value.copyWith(selectColorOption: value) as $Val);
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SliderOptionCopyWith<$Res>? get sliderOption {
    if (_value.sliderOption == null) {
      return null;
    }

    return $SliderOptionCopyWith<$Res>(_value.sliderOption!, (value) {
      return _then(_value.copyWith(sliderOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceNodeDesignPresetImplCopyWith<$Res>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory _$$ChoiceNodeDesignPresetImplCopyWith(
          _$ChoiceNodeDesignPresetImpl value,
          $Res Function(_$ChoiceNodeDesignPresetImpl) then) =
      __$$ChoiceNodeDesignPresetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      bool? titlePosition,
      double? elevation,
      List<double>? roundEdge,
      List<double>? paddingAround,
      bool? maximizingImage,
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
class __$$ChoiceNodeDesignPresetImplCopyWithImpl<$Res>
    extends _$ChoiceNodeDesignPresetCopyWithImpl<$Res,
        _$ChoiceNodeDesignPresetImpl>
    implements _$$ChoiceNodeDesignPresetImplCopyWith<$Res> {
  __$$ChoiceNodeDesignPresetImplCopyWithImpl(
      _$ChoiceNodeDesignPresetImpl _value,
      $Res Function(_$ChoiceNodeDesignPresetImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? titlePosition = freezed,
    Object? elevation = freezed,
    Object? roundEdge = freezed,
    Object? paddingAround = freezed,
    Object? maximizingImage = freezed,
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
    return _then(_$ChoiceNodeDesignPresetImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      titlePosition: freezed == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      roundEdge: freezed == roundEdge
          ? _value._roundEdge
          : roundEdge // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      paddingAround: freezed == paddingAround
          ? _value._paddingAround
          : paddingAround // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      maximizingImage: freezed == maximizingImage
          ? _value.maximizingImage
          : maximizingImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      hideTitle: freezed == hideTitle
          ? _value.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePosition: freezed == imagePosition
          ? _value.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int?,
      colorTitle: freezed == colorTitle
          ? _value.colorTitle
          : colorTitle // ignore: cast_nullable_to_non_nullable
              as int?,
      titleFont: freezed == titleFont
          ? _value.titleFont
          : titleFont // ignore: cast_nullable_to_non_nullable
              as String?,
      mainFont: freezed == mainFont
          ? _value.mainFont
          : mainFont // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultOutlineOption: freezed == defaultOutlineOption
          ? _value.defaultOutlineOption
          : defaultOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      selectOutlineEnable: freezed == selectOutlineEnable
          ? _value.selectOutlineEnable
          : selectOutlineEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectOutlineOption: freezed == selectOutlineOption
          ? _value.selectOutlineOption
          : selectOutlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption?,
      defaultColorOption: freezed == defaultColorOption
          ? _value.defaultColorOption
          : defaultColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      selectColorEnable: freezed == selectColorEnable
          ? _value.selectColorEnable
          : selectColorEnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectColorOption: freezed == selectColorOption
          ? _value.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption?,
      sliderOption: freezed == sliderOption
          ? _value.sliderOption
          : sliderOption // ignore: cast_nullable_to_non_nullable
              as SliderOption?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceNodeDesignPresetImpl extends _ChoiceNodeDesignPreset {
  const _$ChoiceNodeDesignPresetImpl(
      {this.name,
      this.titlePosition = true,
      this.elevation = 0.0,
      final List<double>? roundEdge = const [0.0, 0.0, 0.0, 0.0],
      final List<double>? paddingAround = const [2.0, 2.0, 2.0, 2.0],
      this.maximizingImage = false,
      this.hideTitle = false,
      this.imagePosition = 0,
      this.colorTitle = 0xFF000000,
      this.titleFont = "notoSans",
      this.mainFont = "notoSans",
      this.defaultOutlineOption = const OutlineOption(),
      this.selectOutlineEnable = false,
      this.selectOutlineOption = const OutlineOption(),
      this.defaultColorOption = const ColorOption(),
      this.selectColorEnable = false,
      this.selectColorOption = const ColorOption(),
      this.sliderOption = const SliderOption()})
      : _roundEdge = roundEdge,
        _paddingAround = paddingAround,
        super._();

  factory _$ChoiceNodeDesignPresetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceNodeDesignPresetImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey()
  final bool? titlePosition;
  @override
  @JsonKey()
  final double? elevation;
  final List<double>? _roundEdge;
  @override
  @JsonKey()
  List<double>? get roundEdge {
    final value = _roundEdge;
    if (value == null) return null;
    if (_roundEdge is EqualUnmodifiableListView) return _roundEdge;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _paddingAround;
  @override
  @JsonKey()
  List<double>? get paddingAround {
    final value = _paddingAround;
    if (value == null) return null;
    if (_paddingAround is EqualUnmodifiableListView) return _paddingAround;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? maximizingImage;
//true: 80%, false: 50%
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

  @override
  String toString() {
    return 'ChoiceNodeDesignPreset(name: $name, titlePosition: $titlePosition, elevation: $elevation, roundEdge: $roundEdge, paddingAround: $paddingAround, maximizingImage: $maximizingImage, hideTitle: $hideTitle, imagePosition: $imagePosition, colorTitle: $colorTitle, titleFont: $titleFont, mainFont: $mainFont, defaultOutlineOption: $defaultOutlineOption, selectOutlineEnable: $selectOutlineEnable, selectOutlineOption: $selectOutlineOption, defaultColorOption: $defaultColorOption, selectColorEnable: $selectColorEnable, selectColorOption: $selectColorOption, sliderOption: $sliderOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceNodeDesignPresetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.titlePosition, titlePosition) ||
                other.titlePosition == titlePosition) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            const DeepCollectionEquality()
                .equals(other._roundEdge, _roundEdge) &&
            const DeepCollectionEquality()
                .equals(other._paddingAround, _paddingAround) &&
            (identical(other.maximizingImage, maximizingImage) ||
                other.maximizingImage == maximizingImage) &&
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
      name,
      titlePosition,
      elevation,
      const DeepCollectionEquality().hash(_roundEdge),
      const DeepCollectionEquality().hash(_paddingAround),
      maximizingImage,
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

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceNodeDesignPresetImplCopyWith<_$ChoiceNodeDesignPresetImpl>
      get copyWith => __$$ChoiceNodeDesignPresetImplCopyWithImpl<
          _$ChoiceNodeDesignPresetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceNodeDesignPresetImplToJson(
      this,
    );
  }
}

abstract class _ChoiceNodeDesignPreset extends ChoiceNodeDesignPreset {
  const factory _ChoiceNodeDesignPreset(
      {final String? name,
      final bool? titlePosition,
      final double? elevation,
      final List<double>? roundEdge,
      final List<double>? paddingAround,
      final bool? maximizingImage,
      final bool? hideTitle,
      final int? imagePosition,
      final int? colorTitle,
      final String? titleFont,
      final String? mainFont,
      final OutlineOption? defaultOutlineOption,
      final bool? selectOutlineEnable,
      final OutlineOption? selectOutlineOption,
      final ColorOption? defaultColorOption,
      final bool? selectColorEnable,
      final ColorOption? selectColorOption,
      final SliderOption? sliderOption}) = _$ChoiceNodeDesignPresetImpl;
  const _ChoiceNodeDesignPreset._() : super._();

  factory _ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =
      _$ChoiceNodeDesignPresetImpl.fromJson;

  @override
  String? get name;
  @override
  bool? get titlePosition;
  @override
  double? get elevation;
  @override
  List<double>? get roundEdge;
  @override
  List<double>? get paddingAround;
  @override
  bool? get maximizingImage; //true: 80%, false: 50%
  @override
  bool? get hideTitle;
  @override
  int? get imagePosition; //0:default, 1:image-right 2:image-left
  @override
  int? get colorTitle;
  @override
  String? get titleFont;
  @override
  String? get mainFont;
  @override
  OutlineOption? get defaultOutlineOption;
  @override
  bool? get selectOutlineEnable;
  @override
  OutlineOption? get selectOutlineOption;
  @override
  ColorOption? get defaultColorOption;
  @override
  bool? get selectColorEnable;
  @override
  ColorOption? get selectColorOption;
  @override
  SliderOption? get sliderOption;

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceNodeDesignPresetImplCopyWith<_$ChoiceNodeDesignPresetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
