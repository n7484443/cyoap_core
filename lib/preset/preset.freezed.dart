// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
