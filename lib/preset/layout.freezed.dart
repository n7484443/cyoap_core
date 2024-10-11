// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layout.dart';

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

ResponsiveSize _$ResponsiveSizeFromJson(Map<String, dynamic> json) {
  return _ResponsiveSize.fromJson(json);
}

/// @nodoc
mixin _$ResponsiveSize {
  ResponsivePositionOption get position => throw _privateConstructorUsedError;
  ResponsiveSize? get anchor => throw _privateConstructorUsedError;
  double get px => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;
  ResponsiveSizeOption get option => throw _privateConstructorUsedError;

  /// Serializes this ResponsiveSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponsiveSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsiveSizeCopyWith<ResponsiveSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsiveSizeCopyWith<$Res> {
  factory $ResponsiveSizeCopyWith(
          ResponsiveSize value, $Res Function(ResponsiveSize) then) =
      _$ResponsiveSizeCopyWithImpl<$Res, ResponsiveSize>;
  @useResult
  $Res call(
      {ResponsivePositionOption position,
      ResponsiveSize? anchor,
      double px,
      double percentage,
      ResponsiveSizeOption option});

  $ResponsiveSizeCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$ResponsiveSizeCopyWithImpl<$Res, $Val extends ResponsiveSize>
    implements $ResponsiveSizeCopyWith<$Res> {
  _$ResponsiveSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsiveSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? anchor = freezed,
    Object? px = null,
    Object? percentage = null,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as ResponsivePositionOption,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      px: null == px
          ? _value.px
          : px // ignore: cast_nullable_to_non_nullable
              as double,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as ResponsiveSizeOption,
    ) as $Val);
  }

  /// Create a copy of ResponsiveSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.anchor!, (value) {
      return _then(_value.copyWith(anchor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponsiveSizeImplCopyWith<$Res>
    implements $ResponsiveSizeCopyWith<$Res> {
  factory _$$ResponsiveSizeImplCopyWith(_$ResponsiveSizeImpl value,
          $Res Function(_$ResponsiveSizeImpl) then) =
      __$$ResponsiveSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponsivePositionOption position,
      ResponsiveSize? anchor,
      double px,
      double percentage,
      ResponsiveSizeOption option});

  @override
  $ResponsiveSizeCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$ResponsiveSizeImplCopyWithImpl<$Res>
    extends _$ResponsiveSizeCopyWithImpl<$Res, _$ResponsiveSizeImpl>
    implements _$$ResponsiveSizeImplCopyWith<$Res> {
  __$$ResponsiveSizeImplCopyWithImpl(
      _$ResponsiveSizeImpl _value, $Res Function(_$ResponsiveSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponsiveSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? anchor = freezed,
    Object? px = null,
    Object? percentage = null,
    Object? option = null,
  }) {
    return _then(_$ResponsiveSizeImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as ResponsivePositionOption,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      px: null == px
          ? _value.px
          : px // ignore: cast_nullable_to_non_nullable
              as double,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as ResponsiveSizeOption,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsiveSizeImpl extends _ResponsiveSize {
  const _$ResponsiveSizeImpl(
      {this.position = ResponsivePositionOption.absolute,
      this.anchor = null,
      this.px = 0.0,
      this.percentage = 0.0,
      this.option = ResponsiveSizeOption.percentage})
      : super._();

  factory _$ResponsiveSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsiveSizeImplFromJson(json);

  @override
  @JsonKey()
  final ResponsivePositionOption position;
  @override
  @JsonKey()
  final ResponsiveSize? anchor;
  @override
  @JsonKey()
  final double px;
  @override
  @JsonKey()
  final double percentage;
  @override
  @JsonKey()
  final ResponsiveSizeOption option;

  @override
  String toString() {
    return 'ResponsiveSize(position: $position, anchor: $anchor, px: $px, percentage: $percentage, option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsiveSizeImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.px, px) || other.px == px) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.option, option) || other.option == option));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, anchor, px, percentage, option);

  /// Create a copy of ResponsiveSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsiveSizeImplCopyWith<_$ResponsiveSizeImpl> get copyWith =>
      __$$ResponsiveSizeImplCopyWithImpl<_$ResponsiveSizeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsiveSizeImplToJson(
      this,
    );
  }
}

abstract class _ResponsiveSize extends ResponsiveSize {
  const factory _ResponsiveSize(
      {final ResponsivePositionOption position,
      final ResponsiveSize? anchor,
      final double px,
      final double percentage,
      final ResponsiveSizeOption option}) = _$ResponsiveSizeImpl;
  const _ResponsiveSize._() : super._();

  factory _ResponsiveSize.fromJson(Map<String, dynamic> json) =
      _$ResponsiveSizeImpl.fromJson;

  @override
  ResponsivePositionOption get position;
  @override
  ResponsiveSize? get anchor;
  @override
  double get px;
  @override
  double get percentage;
  @override
  ResponsiveSizeOption get option;

  /// Create a copy of ResponsiveSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsiveSizeImplCopyWith<_$ResponsiveSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponsiveBox _$ResponsiveBoxFromJson(Map<String, dynamic> json) {
  return _ResponsiveBox.fromJson(json);
}

/// @nodoc
mixin _$ResponsiveBox {
  ResponsiveSize? get left => throw _privateConstructorUsedError;
  ResponsiveSize? get right => throw _privateConstructorUsedError;
  ResponsiveSize? get top => throw _privateConstructorUsedError;
  ResponsiveSize? get bottom => throw _privateConstructorUsedError;
  ResponsiveSize? get width => throw _privateConstructorUsedError;
  ResponsiveSize? get height => throw _privateConstructorUsedError;

  /// Serializes this ResponsiveBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponsiveBoxCopyWith<ResponsiveBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponsiveBoxCopyWith<$Res> {
  factory $ResponsiveBoxCopyWith(
          ResponsiveBox value, $Res Function(ResponsiveBox) then) =
      _$ResponsiveBoxCopyWithImpl<$Res, ResponsiveBox>;
  @useResult
  $Res call(
      {ResponsiveSize? left,
      ResponsiveSize? right,
      ResponsiveSize? top,
      ResponsiveSize? bottom,
      ResponsiveSize? width,
      ResponsiveSize? height});

  $ResponsiveSizeCopyWith<$Res>? get left;
  $ResponsiveSizeCopyWith<$Res>? get right;
  $ResponsiveSizeCopyWith<$Res>? get top;
  $ResponsiveSizeCopyWith<$Res>? get bottom;
  $ResponsiveSizeCopyWith<$Res>? get width;
  $ResponsiveSizeCopyWith<$Res>? get height;
}

/// @nodoc
class _$ResponsiveBoxCopyWithImpl<$Res, $Val extends ResponsiveBox>
    implements $ResponsiveBoxCopyWith<$Res> {
  _$ResponsiveBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
    Object? top = freezed,
    Object? bottom = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
    ) as $Val);
  }

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get left {
    if (_value.left == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.left!, (value) {
      return _then(_value.copyWith(left: value) as $Val);
    });
  }

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get right {
    if (_value.right == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.right!, (value) {
      return _then(_value.copyWith(right: value) as $Val);
    });
  }

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get top {
    if (_value.top == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.top!, (value) {
      return _then(_value.copyWith(top: value) as $Val);
    });
  }

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get bottom {
    if (_value.bottom == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.bottom!, (value) {
      return _then(_value.copyWith(bottom: value) as $Val);
    });
  }

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get width {
    if (_value.width == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.width!, (value) {
      return _then(_value.copyWith(width: value) as $Val);
    });
  }

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveSizeCopyWith<$Res>? get height {
    if (_value.height == null) {
      return null;
    }

    return $ResponsiveSizeCopyWith<$Res>(_value.height!, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponsiveBoxImplCopyWith<$Res>
    implements $ResponsiveBoxCopyWith<$Res> {
  factory _$$ResponsiveBoxImplCopyWith(
          _$ResponsiveBoxImpl value, $Res Function(_$ResponsiveBoxImpl) then) =
      __$$ResponsiveBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResponsiveSize? left,
      ResponsiveSize? right,
      ResponsiveSize? top,
      ResponsiveSize? bottom,
      ResponsiveSize? width,
      ResponsiveSize? height});

  @override
  $ResponsiveSizeCopyWith<$Res>? get left;
  @override
  $ResponsiveSizeCopyWith<$Res>? get right;
  @override
  $ResponsiveSizeCopyWith<$Res>? get top;
  @override
  $ResponsiveSizeCopyWith<$Res>? get bottom;
  @override
  $ResponsiveSizeCopyWith<$Res>? get width;
  @override
  $ResponsiveSizeCopyWith<$Res>? get height;
}

/// @nodoc
class __$$ResponsiveBoxImplCopyWithImpl<$Res>
    extends _$ResponsiveBoxCopyWithImpl<$Res, _$ResponsiveBoxImpl>
    implements _$$ResponsiveBoxImplCopyWith<$Res> {
  __$$ResponsiveBoxImplCopyWithImpl(
      _$ResponsiveBoxImpl _value, $Res Function(_$ResponsiveBoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
    Object? top = freezed,
    Object? bottom = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$ResponsiveBoxImpl(
      left: freezed == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      right: freezed == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      top: freezed == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      bottom: freezed == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as ResponsiveSize?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponsiveBoxImpl extends _ResponsiveBox {
  const _$ResponsiveBoxImpl(
      {this.left = null,
      this.right = null,
      this.top = null,
      this.bottom = null,
      this.width = null,
      this.height = null})
      : super._();

  factory _$ResponsiveBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponsiveBoxImplFromJson(json);

  @override
  @JsonKey()
  final ResponsiveSize? left;
  @override
  @JsonKey()
  final ResponsiveSize? right;
  @override
  @JsonKey()
  final ResponsiveSize? top;
  @override
  @JsonKey()
  final ResponsiveSize? bottom;
  @override
  @JsonKey()
  final ResponsiveSize? width;
  @override
  @JsonKey()
  final ResponsiveSize? height;

  @override
  String toString() {
    return 'ResponsiveBox(left: $left, right: $right, top: $top, bottom: $bottom, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponsiveBoxImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, left, right, top, bottom, width, height);

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponsiveBoxImplCopyWith<_$ResponsiveBoxImpl> get copyWith =>
      __$$ResponsiveBoxImplCopyWithImpl<_$ResponsiveBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponsiveBoxImplToJson(
      this,
    );
  }
}

abstract class _ResponsiveBox extends ResponsiveBox {
  const factory _ResponsiveBox(
      {final ResponsiveSize? left,
      final ResponsiveSize? right,
      final ResponsiveSize? top,
      final ResponsiveSize? bottom,
      final ResponsiveSize? width,
      final ResponsiveSize? height}) = _$ResponsiveBoxImpl;
  const _ResponsiveBox._() : super._();

  factory _ResponsiveBox.fromJson(Map<String, dynamic> json) =
      _$ResponsiveBoxImpl.fromJson;

  @override
  ResponsiveSize? get left;
  @override
  ResponsiveSize? get right;
  @override
  ResponsiveSize? get top;
  @override
  ResponsiveSize? get bottom;
  @override
  ResponsiveSize? get width;
  @override
  ResponsiveSize? get height;

  /// Create a copy of ResponsiveBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponsiveBoxImplCopyWith<_$ResponsiveBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeLayoutElement _$NodeLayoutElementFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'title':
      return Title.fromJson(json);
    case 'image':
      return Image.fromJson(json);
    case 'content':
      return Content.fromJson(json);
    case 'text':
      return Text.fromJson(json);
    case 'box':
      return Box.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NodeLayoutElement',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NodeLayoutElement {
  ResponsiveBox get responsiveBox => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponsiveBox responsiveBox) title,
    required TResult Function(ResponsiveBox responsiveBox) image,
    required TResult Function(ResponsiveBox responsiveBox) content,
    required TResult Function(ResponsiveBox responsiveBox, String quillText)
        text,
    required TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)
        box,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponsiveBox responsiveBox)? title,
    TResult? Function(ResponsiveBox responsiveBox)? image,
    TResult? Function(ResponsiveBox responsiveBox)? content,
    TResult? Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult? Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponsiveBox responsiveBox)? title,
    TResult Function(ResponsiveBox responsiveBox)? image,
    TResult Function(ResponsiveBox responsiveBox)? content,
    TResult Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Image value) image,
    required TResult Function(Content value) content,
    required TResult Function(Text value) text,
    required TResult Function(Box value) box,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Image value)? image,
    TResult? Function(Content value)? content,
    TResult? Function(Text value)? text,
    TResult? Function(Box value)? box,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Image value)? image,
    TResult Function(Content value)? content,
    TResult Function(Text value)? text,
    TResult Function(Box value)? box,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NodeLayoutElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NodeLayoutElementCopyWith<NodeLayoutElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeLayoutElementCopyWith<$Res> {
  factory $NodeLayoutElementCopyWith(
          NodeLayoutElement value, $Res Function(NodeLayoutElement) then) =
      _$NodeLayoutElementCopyWithImpl<$Res, NodeLayoutElement>;
  @useResult
  $Res call({ResponsiveBox responsiveBox});

  $ResponsiveBoxCopyWith<$Res> get responsiveBox;
}

/// @nodoc
class _$NodeLayoutElementCopyWithImpl<$Res, $Val extends NodeLayoutElement>
    implements $NodeLayoutElementCopyWith<$Res> {
  _$NodeLayoutElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsiveBox = null,
  }) {
    return _then(_value.copyWith(
      responsiveBox: null == responsiveBox
          ? _value.responsiveBox
          : responsiveBox // ignore: cast_nullable_to_non_nullable
              as ResponsiveBox,
    ) as $Val);
  }

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponsiveBoxCopyWith<$Res> get responsiveBox {
    return $ResponsiveBoxCopyWith<$Res>(_value.responsiveBox, (value) {
      return _then(_value.copyWith(responsiveBox: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TitleImplCopyWith<$Res>
    implements $NodeLayoutElementCopyWith<$Res> {
  factory _$$TitleImplCopyWith(
          _$TitleImpl value, $Res Function(_$TitleImpl) then) =
      __$$TitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponsiveBox responsiveBox});

  @override
  $ResponsiveBoxCopyWith<$Res> get responsiveBox;
}

/// @nodoc
class __$$TitleImplCopyWithImpl<$Res>
    extends _$NodeLayoutElementCopyWithImpl<$Res, _$TitleImpl>
    implements _$$TitleImplCopyWith<$Res> {
  __$$TitleImplCopyWithImpl(
      _$TitleImpl _value, $Res Function(_$TitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsiveBox = null,
  }) {
    return _then(_$TitleImpl(
      responsiveBox: null == responsiveBox
          ? _value.responsiveBox
          : responsiveBox // ignore: cast_nullable_to_non_nullable
              as ResponsiveBox,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleImpl extends Title {
  const _$TitleImpl(
      {this.responsiveBox = const ResponsiveBox(
          left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
          right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
          top: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
          height: ResponsiveSize(
              px: defaultTitleHeight, option: ResponsiveSizeOption.px)),
      final String? $type})
      : $type = $type ?? 'title',
        super._();

  factory _$TitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleImplFromJson(json);

  @override
  @JsonKey()
  final ResponsiveBox responsiveBox;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayoutElement.title(responsiveBox: $responsiveBox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleImpl &&
            (identical(other.responsiveBox, responsiveBox) ||
                other.responsiveBox == responsiveBox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responsiveBox);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      __$$TitleImplCopyWithImpl<_$TitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponsiveBox responsiveBox) title,
    required TResult Function(ResponsiveBox responsiveBox) image,
    required TResult Function(ResponsiveBox responsiveBox) content,
    required TResult Function(ResponsiveBox responsiveBox, String quillText)
        text,
    required TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)
        box,
  }) {
    return title(responsiveBox);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponsiveBox responsiveBox)? title,
    TResult? Function(ResponsiveBox responsiveBox)? image,
    TResult? Function(ResponsiveBox responsiveBox)? content,
    TResult? Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult? Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
  }) {
    return title?.call(responsiveBox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponsiveBox responsiveBox)? title,
    TResult Function(ResponsiveBox responsiveBox)? image,
    TResult Function(ResponsiveBox responsiveBox)? content,
    TResult Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(responsiveBox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Image value) image,
    required TResult Function(Content value) content,
    required TResult Function(Text value) text,
    required TResult Function(Box value) box,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Image value)? image,
    TResult? Function(Content value)? content,
    TResult? Function(Text value)? text,
    TResult? Function(Box value)? box,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Image value)? image,
    TResult Function(Content value)? content,
    TResult Function(Text value)? text,
    TResult Function(Box value)? box,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleImplToJson(
      this,
    );
  }
}

abstract class Title extends NodeLayoutElement {
  const factory Title({final ResponsiveBox responsiveBox}) = _$TitleImpl;
  const Title._() : super._();

  factory Title.fromJson(Map<String, dynamic> json) = _$TitleImpl.fromJson;

  @override
  ResponsiveBox get responsiveBox;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleImplCopyWith<_$TitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res>
    implements $NodeLayoutElementCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponsiveBox responsiveBox});

  @override
  $ResponsiveBoxCopyWith<$Res> get responsiveBox;
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$NodeLayoutElementCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsiveBox = null,
  }) {
    return _then(_$ImageImpl(
      responsiveBox: null == responsiveBox
          ? _value.responsiveBox
          : responsiveBox // ignore: cast_nullable_to_non_nullable
              as ResponsiveBox,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl extends Image {
  const _$ImageImpl(
      {this.responsiveBox = const ResponsiveBox(
          left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
          right: ResponsiveSize(
              percentage: 50, option: ResponsiveSizeOption.percentage),
          top: ResponsiveSize(
              px: defaultTitleHeight, option: ResponsiveSizeOption.px),
          bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)),
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey()
  final ResponsiveBox responsiveBox;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayoutElement.image(responsiveBox: $responsiveBox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.responsiveBox, responsiveBox) ||
                other.responsiveBox == responsiveBox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responsiveBox);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponsiveBox responsiveBox) title,
    required TResult Function(ResponsiveBox responsiveBox) image,
    required TResult Function(ResponsiveBox responsiveBox) content,
    required TResult Function(ResponsiveBox responsiveBox, String quillText)
        text,
    required TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)
        box,
  }) {
    return image(responsiveBox);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponsiveBox responsiveBox)? title,
    TResult? Function(ResponsiveBox responsiveBox)? image,
    TResult? Function(ResponsiveBox responsiveBox)? content,
    TResult? Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult? Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
  }) {
    return image?.call(responsiveBox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponsiveBox responsiveBox)? title,
    TResult Function(ResponsiveBox responsiveBox)? image,
    TResult Function(ResponsiveBox responsiveBox)? content,
    TResult Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(responsiveBox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Image value) image,
    required TResult Function(Content value) content,
    required TResult Function(Text value) text,
    required TResult Function(Box value) box,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Image value)? image,
    TResult? Function(Content value)? content,
    TResult? Function(Text value)? text,
    TResult? Function(Box value)? box,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Image value)? image,
    TResult Function(Content value)? content,
    TResult Function(Text value)? text,
    TResult Function(Box value)? box,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class Image extends NodeLayoutElement {
  const factory Image({final ResponsiveBox responsiveBox}) = _$ImageImpl;
  const Image._() : super._();

  factory Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  ResponsiveBox get responsiveBox;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res>
    implements $NodeLayoutElementCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponsiveBox responsiveBox});

  @override
  $ResponsiveBoxCopyWith<$Res> get responsiveBox;
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$NodeLayoutElementCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsiveBox = null,
  }) {
    return _then(_$ContentImpl(
      responsiveBox: null == responsiveBox
          ? _value.responsiveBox
          : responsiveBox // ignore: cast_nullable_to_non_nullable
              as ResponsiveBox,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl extends Content {
  const _$ContentImpl(
      {this.responsiveBox = const ResponsiveBox(
          left: ResponsiveSize(
              percentage: 50, option: ResponsiveSizeOption.percentage),
          right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
          top: ResponsiveSize(
              px: defaultTitleHeight, option: ResponsiveSizeOption.px),
          bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)),
      final String? $type})
      : $type = $type ?? 'content',
        super._();

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  @JsonKey()
  final ResponsiveBox responsiveBox;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayoutElement.content(responsiveBox: $responsiveBox)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.responsiveBox, responsiveBox) ||
                other.responsiveBox == responsiveBox));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responsiveBox);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponsiveBox responsiveBox) title,
    required TResult Function(ResponsiveBox responsiveBox) image,
    required TResult Function(ResponsiveBox responsiveBox) content,
    required TResult Function(ResponsiveBox responsiveBox, String quillText)
        text,
    required TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)
        box,
  }) {
    return content(responsiveBox);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponsiveBox responsiveBox)? title,
    TResult? Function(ResponsiveBox responsiveBox)? image,
    TResult? Function(ResponsiveBox responsiveBox)? content,
    TResult? Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult? Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
  }) {
    return content?.call(responsiveBox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponsiveBox responsiveBox)? title,
    TResult Function(ResponsiveBox responsiveBox)? image,
    TResult Function(ResponsiveBox responsiveBox)? content,
    TResult Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(responsiveBox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Image value) image,
    required TResult Function(Content value) content,
    required TResult Function(Text value) text,
    required TResult Function(Box value) box,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Image value)? image,
    TResult? Function(Content value)? content,
    TResult? Function(Text value)? text,
    TResult? Function(Box value)? box,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Image value)? image,
    TResult Function(Content value)? content,
    TResult Function(Text value)? text,
    TResult Function(Box value)? box,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class Content extends NodeLayoutElement {
  const factory Content({final ResponsiveBox responsiveBox}) = _$ContentImpl;
  const Content._() : super._();

  factory Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  ResponsiveBox get responsiveBox;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextImplCopyWith<$Res>
    implements $NodeLayoutElementCopyWith<$Res> {
  factory _$$TextImplCopyWith(
          _$TextImpl value, $Res Function(_$TextImpl) then) =
      __$$TextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponsiveBox responsiveBox, String quillText});

  @override
  $ResponsiveBoxCopyWith<$Res> get responsiveBox;
}

/// @nodoc
class __$$TextImplCopyWithImpl<$Res>
    extends _$NodeLayoutElementCopyWithImpl<$Res, _$TextImpl>
    implements _$$TextImplCopyWith<$Res> {
  __$$TextImplCopyWithImpl(_$TextImpl _value, $Res Function(_$TextImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsiveBox = null,
    Object? quillText = null,
  }) {
    return _then(_$TextImpl(
      responsiveBox: null == responsiveBox
          ? _value.responsiveBox
          : responsiveBox // ignore: cast_nullable_to_non_nullable
              as ResponsiveBox,
      quillText: null == quillText
          ? _value.quillText
          : quillText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextImpl extends Text {
  const _$TextImpl(
      {this.responsiveBox = const ResponsiveBox(
          left: ResponsiveSize(
              percentage: 0, option: ResponsiveSizeOption.percentage),
          right: ResponsiveSize(
              percentage: 0, option: ResponsiveSizeOption.percentage),
          top: ResponsiveSize(
              percentage: 45, option: ResponsiveSizeOption.percentage),
          bottom: ResponsiveSize(
              percentage: 55, option: ResponsiveSizeOption.percentage)),
      this.quillText = "defaultValue",
      final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$TextImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextImplFromJson(json);

  @override
  @JsonKey()
  final ResponsiveBox responsiveBox;
  @override
  @JsonKey()
  final String quillText;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayoutElement.text(responsiveBox: $responsiveBox, quillText: $quillText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextImpl &&
            (identical(other.responsiveBox, responsiveBox) ||
                other.responsiveBox == responsiveBox) &&
            (identical(other.quillText, quillText) ||
                other.quillText == quillText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responsiveBox, quillText);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextImplCopyWith<_$TextImpl> get copyWith =>
      __$$TextImplCopyWithImpl<_$TextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponsiveBox responsiveBox) title,
    required TResult Function(ResponsiveBox responsiveBox) image,
    required TResult Function(ResponsiveBox responsiveBox) content,
    required TResult Function(ResponsiveBox responsiveBox, String quillText)
        text,
    required TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)
        box,
  }) {
    return text(responsiveBox, quillText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponsiveBox responsiveBox)? title,
    TResult? Function(ResponsiveBox responsiveBox)? image,
    TResult? Function(ResponsiveBox responsiveBox)? content,
    TResult? Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult? Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
  }) {
    return text?.call(responsiveBox, quillText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponsiveBox responsiveBox)? title,
    TResult Function(ResponsiveBox responsiveBox)? image,
    TResult Function(ResponsiveBox responsiveBox)? content,
    TResult Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(responsiveBox, quillText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Image value) image,
    required TResult Function(Content value) content,
    required TResult Function(Text value) text,
    required TResult Function(Box value) box,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Image value)? image,
    TResult? Function(Content value)? content,
    TResult? Function(Text value)? text,
    TResult? Function(Box value)? box,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Image value)? image,
    TResult Function(Content value)? content,
    TResult Function(Text value)? text,
    TResult Function(Box value)? box,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextImplToJson(
      this,
    );
  }
}

abstract class Text extends NodeLayoutElement {
  const factory Text(
      {final ResponsiveBox responsiveBox, final String quillText}) = _$TextImpl;
  const Text._() : super._();

  factory Text.fromJson(Map<String, dynamic> json) = _$TextImpl.fromJson;

  @override
  ResponsiveBox get responsiveBox;
  String get quillText;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextImplCopyWith<_$TextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BoxImplCopyWith<$Res>
    implements $NodeLayoutElementCopyWith<$Res> {
  factory _$$BoxImplCopyWith(_$BoxImpl value, $Res Function(_$BoxImpl) then) =
      __$$BoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponsiveBox responsiveBox, ColorOption boxColor});

  @override
  $ResponsiveBoxCopyWith<$Res> get responsiveBox;
  $ColorOptionCopyWith<$Res> get boxColor;
}

/// @nodoc
class __$$BoxImplCopyWithImpl<$Res>
    extends _$NodeLayoutElementCopyWithImpl<$Res, _$BoxImpl>
    implements _$$BoxImplCopyWith<$Res> {
  __$$BoxImplCopyWithImpl(_$BoxImpl _value, $Res Function(_$BoxImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responsiveBox = null,
    Object? boxColor = null,
  }) {
    return _then(_$BoxImpl(
      responsiveBox: null == responsiveBox
          ? _value.responsiveBox
          : responsiveBox // ignore: cast_nullable_to_non_nullable
              as ResponsiveBox,
      boxColor: null == boxColor
          ? _value.boxColor
          : boxColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
    ));
  }

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get boxColor {
    return $ColorOptionCopyWith<$Res>(_value.boxColor, (value) {
      return _then(_value.copyWith(boxColor: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BoxImpl extends Box {
  const _$BoxImpl(
      {this.responsiveBox = const ResponsiveBox(
          left: ResponsiveSize(
              percentage: 0, option: ResponsiveSizeOption.percentage),
          right: ResponsiveSize(
              percentage: 0, option: ResponsiveSizeOption.percentage),
          top: ResponsiveSize(
              percentage: 45, option: ResponsiveSizeOption.percentage),
          bottom: ResponsiveSize(
              percentage: 55, option: ResponsiveSizeOption.percentage)),
      this.boxColor = const ColorOption(),
      final String? $type})
      : $type = $type ?? 'box',
        super._();

  factory _$BoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoxImplFromJson(json);

  @override
  @JsonKey()
  final ResponsiveBox responsiveBox;
  @override
  @JsonKey()
  final ColorOption boxColor;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayoutElement.box(responsiveBox: $responsiveBox, boxColor: $boxColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxImpl &&
            (identical(other.responsiveBox, responsiveBox) ||
                other.responsiveBox == responsiveBox) &&
            (identical(other.boxColor, boxColor) ||
                other.boxColor == boxColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, responsiveBox, boxColor);

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxImplCopyWith<_$BoxImpl> get copyWith =>
      __$$BoxImplCopyWithImpl<_$BoxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ResponsiveBox responsiveBox) title,
    required TResult Function(ResponsiveBox responsiveBox) image,
    required TResult Function(ResponsiveBox responsiveBox) content,
    required TResult Function(ResponsiveBox responsiveBox, String quillText)
        text,
    required TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)
        box,
  }) {
    return box(responsiveBox, boxColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ResponsiveBox responsiveBox)? title,
    TResult? Function(ResponsiveBox responsiveBox)? image,
    TResult? Function(ResponsiveBox responsiveBox)? content,
    TResult? Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult? Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
  }) {
    return box?.call(responsiveBox, boxColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ResponsiveBox responsiveBox)? title,
    TResult Function(ResponsiveBox responsiveBox)? image,
    TResult Function(ResponsiveBox responsiveBox)? content,
    TResult Function(ResponsiveBox responsiveBox, String quillText)? text,
    TResult Function(ResponsiveBox responsiveBox, ColorOption boxColor)? box,
    required TResult orElse(),
  }) {
    if (box != null) {
      return box(responsiveBox, boxColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Title value) title,
    required TResult Function(Image value) image,
    required TResult Function(Content value) content,
    required TResult Function(Text value) text,
    required TResult Function(Box value) box,
  }) {
    return box(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Title value)? title,
    TResult? Function(Image value)? image,
    TResult? Function(Content value)? content,
    TResult? Function(Text value)? text,
    TResult? Function(Box value)? box,
  }) {
    return box?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Title value)? title,
    TResult Function(Image value)? image,
    TResult Function(Content value)? content,
    TResult Function(Text value)? text,
    TResult Function(Box value)? box,
    required TResult orElse(),
  }) {
    if (box != null) {
      return box(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BoxImplToJson(
      this,
    );
  }
}

abstract class Box extends NodeLayoutElement {
  const factory Box(
      {final ResponsiveBox responsiveBox,
      final ColorOption boxColor}) = _$BoxImpl;
  const Box._() : super._();

  factory Box.fromJson(Map<String, dynamic> json) = _$BoxImpl.fromJson;

  @override
  ResponsiveBox get responsiveBox;
  ColorOption get boxColor;

  /// Create a copy of NodeLayoutElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BoxImplCopyWith<_$BoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeLayout _$NodeLayoutFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _NodeLayout.fromJson(json);
    case 'upTitle':
      return _NodeLayoutUpTitle.fromJson(json);
    case 'downTitle':
      return _NodeLayoutDownTitle.fromJson(json);
    case 'leftImage':
      return _NodeLayoutLeftImage.fromJson(json);
    case 'rightImage':
      return _NodeLayoutRightImage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'NodeLayout',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$NodeLayout {
  List<NodeLayoutElement> get nodeLayoutElements =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements) $default, {
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        upTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        downTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        leftImage,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        rightImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NodeLayout value) $default, {
    required TResult Function(_NodeLayoutUpTitle value) upTitle,
    required TResult Function(_NodeLayoutDownTitle value) downTitle,
    required TResult Function(_NodeLayoutLeftImage value) leftImage,
    required TResult Function(_NodeLayoutRightImage value) rightImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NodeLayout value)? $default, {
    TResult? Function(_NodeLayoutUpTitle value)? upTitle,
    TResult? Function(_NodeLayoutDownTitle value)? downTitle,
    TResult? Function(_NodeLayoutLeftImage value)? leftImage,
    TResult? Function(_NodeLayoutRightImage value)? rightImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NodeLayout value)? $default, {
    TResult Function(_NodeLayoutUpTitle value)? upTitle,
    TResult Function(_NodeLayoutDownTitle value)? downTitle,
    TResult Function(_NodeLayoutLeftImage value)? leftImage,
    TResult Function(_NodeLayoutRightImage value)? rightImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this NodeLayout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NodeLayoutCopyWith<NodeLayout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeLayoutCopyWith<$Res> {
  factory $NodeLayoutCopyWith(
          NodeLayout value, $Res Function(NodeLayout) then) =
      _$NodeLayoutCopyWithImpl<$Res, NodeLayout>;
  @useResult
  $Res call({List<NodeLayoutElement> nodeLayoutElements});
}

/// @nodoc
class _$NodeLayoutCopyWithImpl<$Res, $Val extends NodeLayout>
    implements $NodeLayoutCopyWith<$Res> {
  _$NodeLayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeLayoutElements = null,
  }) {
    return _then(_value.copyWith(
      nodeLayoutElements: null == nodeLayoutElements
          ? _value.nodeLayoutElements
          : nodeLayoutElements // ignore: cast_nullable_to_non_nullable
              as List<NodeLayoutElement>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodeLayoutImplCopyWith<$Res>
    implements $NodeLayoutCopyWith<$Res> {
  factory _$$NodeLayoutImplCopyWith(
          _$NodeLayoutImpl value, $Res Function(_$NodeLayoutImpl) then) =
      __$$NodeLayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NodeLayoutElement> nodeLayoutElements});
}

/// @nodoc
class __$$NodeLayoutImplCopyWithImpl<$Res>
    extends _$NodeLayoutCopyWithImpl<$Res, _$NodeLayoutImpl>
    implements _$$NodeLayoutImplCopyWith<$Res> {
  __$$NodeLayoutImplCopyWithImpl(
      _$NodeLayoutImpl _value, $Res Function(_$NodeLayoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeLayoutElements = null,
  }) {
    return _then(_$NodeLayoutImpl(
      nodeLayoutElements: null == nodeLayoutElements
          ? _value._nodeLayoutElements
          : nodeLayoutElements // ignore: cast_nullable_to_non_nullable
              as List<NodeLayoutElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeLayoutImpl implements _NodeLayout {
  const _$NodeLayoutImpl(
      {final List<NodeLayoutElement> nodeLayoutElements = const [
        NodeLayoutElement.title(),
        NodeLayoutElement.image(),
        NodeLayoutElement.content()
      ],
      final String? $type})
      : _nodeLayoutElements = nodeLayoutElements,
        $type = $type ?? 'default';

  factory _$NodeLayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeLayoutImplFromJson(json);

  final List<NodeLayoutElement> _nodeLayoutElements;
  @override
  @JsonKey()
  List<NodeLayoutElement> get nodeLayoutElements {
    if (_nodeLayoutElements is EqualUnmodifiableListView)
      return _nodeLayoutElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodeLayoutElements);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayout(nodeLayoutElements: $nodeLayoutElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeLayoutImpl &&
            const DeepCollectionEquality()
                .equals(other._nodeLayoutElements, _nodeLayoutElements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nodeLayoutElements));

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeLayoutImplCopyWith<_$NodeLayoutImpl> get copyWith =>
      __$$NodeLayoutImplCopyWithImpl<_$NodeLayoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements) $default, {
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        upTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        downTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        leftImage,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        rightImage,
  }) {
    return $default(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
  }) {
    return $default?.call(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(nodeLayoutElements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NodeLayout value) $default, {
    required TResult Function(_NodeLayoutUpTitle value) upTitle,
    required TResult Function(_NodeLayoutDownTitle value) downTitle,
    required TResult Function(_NodeLayoutLeftImage value) leftImage,
    required TResult Function(_NodeLayoutRightImage value) rightImage,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NodeLayout value)? $default, {
    TResult? Function(_NodeLayoutUpTitle value)? upTitle,
    TResult? Function(_NodeLayoutDownTitle value)? downTitle,
    TResult? Function(_NodeLayoutLeftImage value)? leftImage,
    TResult? Function(_NodeLayoutRightImage value)? rightImage,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NodeLayout value)? $default, {
    TResult Function(_NodeLayoutUpTitle value)? upTitle,
    TResult Function(_NodeLayoutDownTitle value)? downTitle,
    TResult Function(_NodeLayoutLeftImage value)? leftImage,
    TResult Function(_NodeLayoutRightImage value)? rightImage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeLayoutImplToJson(
      this,
    );
  }
}

abstract class _NodeLayout implements NodeLayout {
  const factory _NodeLayout(
      {final List<NodeLayoutElement> nodeLayoutElements}) = _$NodeLayoutImpl;

  factory _NodeLayout.fromJson(Map<String, dynamic> json) =
      _$NodeLayoutImpl.fromJson;

  @override
  List<NodeLayoutElement> get nodeLayoutElements;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeLayoutImplCopyWith<_$NodeLayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NodeLayoutUpTitleImplCopyWith<$Res>
    implements $NodeLayoutCopyWith<$Res> {
  factory _$$NodeLayoutUpTitleImplCopyWith(_$NodeLayoutUpTitleImpl value,
          $Res Function(_$NodeLayoutUpTitleImpl) then) =
      __$$NodeLayoutUpTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NodeLayoutElement> nodeLayoutElements});
}

/// @nodoc
class __$$NodeLayoutUpTitleImplCopyWithImpl<$Res>
    extends _$NodeLayoutCopyWithImpl<$Res, _$NodeLayoutUpTitleImpl>
    implements _$$NodeLayoutUpTitleImplCopyWith<$Res> {
  __$$NodeLayoutUpTitleImplCopyWithImpl(_$NodeLayoutUpTitleImpl _value,
      $Res Function(_$NodeLayoutUpTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeLayoutElements = null,
  }) {
    return _then(_$NodeLayoutUpTitleImpl(
      nodeLayoutElements: null == nodeLayoutElements
          ? _value._nodeLayoutElements
          : nodeLayoutElements // ignore: cast_nullable_to_non_nullable
              as List<NodeLayoutElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeLayoutUpTitleImpl implements _NodeLayoutUpTitle {
  const _$NodeLayoutUpTitleImpl(
      {final List<NodeLayoutElement> nodeLayoutElements = const [
        NodeLayoutElement.title(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                top: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px),
                height: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px))),
        NodeLayoutElement.image(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                top: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px),
                height: ResponsiveSize(
                    px: 400,
                    percentage: 50,
                    option: ResponsiveSizeOption.min))),
        NodeLayoutElement.content(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                top: ResponsiveSize(
                    anchor: ResponsiveSize(
                        px: 400,
                        percentage: 50,
                        option: ResponsiveSizeOption.min),
                    px: defaultTitleHeight,
                    option: ResponsiveSizeOption.px,
                    position: ResponsivePositionOption.relative),
                bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
      ],
      final String? $type})
      : _nodeLayoutElements = nodeLayoutElements,
        $type = $type ?? 'upTitle';

  factory _$NodeLayoutUpTitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeLayoutUpTitleImplFromJson(json);

  final List<NodeLayoutElement> _nodeLayoutElements;
  @override
  @JsonKey()
  List<NodeLayoutElement> get nodeLayoutElements {
    if (_nodeLayoutElements is EqualUnmodifiableListView)
      return _nodeLayoutElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodeLayoutElements);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayout.upTitle(nodeLayoutElements: $nodeLayoutElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeLayoutUpTitleImpl &&
            const DeepCollectionEquality()
                .equals(other._nodeLayoutElements, _nodeLayoutElements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nodeLayoutElements));

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeLayoutUpTitleImplCopyWith<_$NodeLayoutUpTitleImpl> get copyWith =>
      __$$NodeLayoutUpTitleImplCopyWithImpl<_$NodeLayoutUpTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements) $default, {
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        upTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        downTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        leftImage,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        rightImage,
  }) {
    return upTitle(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
  }) {
    return upTitle?.call(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
    required TResult orElse(),
  }) {
    if (upTitle != null) {
      return upTitle(nodeLayoutElements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NodeLayout value) $default, {
    required TResult Function(_NodeLayoutUpTitle value) upTitle,
    required TResult Function(_NodeLayoutDownTitle value) downTitle,
    required TResult Function(_NodeLayoutLeftImage value) leftImage,
    required TResult Function(_NodeLayoutRightImage value) rightImage,
  }) {
    return upTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NodeLayout value)? $default, {
    TResult? Function(_NodeLayoutUpTitle value)? upTitle,
    TResult? Function(_NodeLayoutDownTitle value)? downTitle,
    TResult? Function(_NodeLayoutLeftImage value)? leftImage,
    TResult? Function(_NodeLayoutRightImage value)? rightImage,
  }) {
    return upTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NodeLayout value)? $default, {
    TResult Function(_NodeLayoutUpTitle value)? upTitle,
    TResult Function(_NodeLayoutDownTitle value)? downTitle,
    TResult Function(_NodeLayoutLeftImage value)? leftImage,
    TResult Function(_NodeLayoutRightImage value)? rightImage,
    required TResult orElse(),
  }) {
    if (upTitle != null) {
      return upTitle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeLayoutUpTitleImplToJson(
      this,
    );
  }
}

abstract class _NodeLayoutUpTitle implements NodeLayout {
  const factory _NodeLayoutUpTitle(
          {final List<NodeLayoutElement> nodeLayoutElements}) =
      _$NodeLayoutUpTitleImpl;

  factory _NodeLayoutUpTitle.fromJson(Map<String, dynamic> json) =
      _$NodeLayoutUpTitleImpl.fromJson;

  @override
  List<NodeLayoutElement> get nodeLayoutElements;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeLayoutUpTitleImplCopyWith<_$NodeLayoutUpTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NodeLayoutDownTitleImplCopyWith<$Res>
    implements $NodeLayoutCopyWith<$Res> {
  factory _$$NodeLayoutDownTitleImplCopyWith(_$NodeLayoutDownTitleImpl value,
          $Res Function(_$NodeLayoutDownTitleImpl) then) =
      __$$NodeLayoutDownTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NodeLayoutElement> nodeLayoutElements});
}

/// @nodoc
class __$$NodeLayoutDownTitleImplCopyWithImpl<$Res>
    extends _$NodeLayoutCopyWithImpl<$Res, _$NodeLayoutDownTitleImpl>
    implements _$$NodeLayoutDownTitleImplCopyWith<$Res> {
  __$$NodeLayoutDownTitleImplCopyWithImpl(_$NodeLayoutDownTitleImpl _value,
      $Res Function(_$NodeLayoutDownTitleImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeLayoutElements = null,
  }) {
    return _then(_$NodeLayoutDownTitleImpl(
      nodeLayoutElements: null == nodeLayoutElements
          ? _value._nodeLayoutElements
          : nodeLayoutElements // ignore: cast_nullable_to_non_nullable
              as List<NodeLayoutElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeLayoutDownTitleImpl implements _NodeLayoutDownTitle {
  const _$NodeLayoutDownTitleImpl(
      {final List<NodeLayoutElement> nodeLayoutElements = const [
        NodeLayoutElement.image(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                top: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                height: ResponsiveSize(
                    px: 400,
                    percentage: 50,
                    option: ResponsiveSizeOption.min))),
        NodeLayoutElement.title(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                top: ResponsiveSize(
                    px: 400, percentage: 50, option: ResponsiveSizeOption.min),
                height: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px))),
        NodeLayoutElement.content(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                top: ResponsiveSize(
                    anchor: ResponsiveSize(
                        px: 400,
                        percentage: 50,
                        option: ResponsiveSizeOption.min),
                    px: defaultTitleHeight,
                    option: ResponsiveSizeOption.px,
                    position: ResponsivePositionOption.relative),
                bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
      ],
      final String? $type})
      : _nodeLayoutElements = nodeLayoutElements,
        $type = $type ?? 'downTitle';

  factory _$NodeLayoutDownTitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeLayoutDownTitleImplFromJson(json);

  final List<NodeLayoutElement> _nodeLayoutElements;
  @override
  @JsonKey()
  List<NodeLayoutElement> get nodeLayoutElements {
    if (_nodeLayoutElements is EqualUnmodifiableListView)
      return _nodeLayoutElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodeLayoutElements);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayout.downTitle(nodeLayoutElements: $nodeLayoutElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeLayoutDownTitleImpl &&
            const DeepCollectionEquality()
                .equals(other._nodeLayoutElements, _nodeLayoutElements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nodeLayoutElements));

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeLayoutDownTitleImplCopyWith<_$NodeLayoutDownTitleImpl> get copyWith =>
      __$$NodeLayoutDownTitleImplCopyWithImpl<_$NodeLayoutDownTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements) $default, {
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        upTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        downTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        leftImage,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        rightImage,
  }) {
    return downTitle(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
  }) {
    return downTitle?.call(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
    required TResult orElse(),
  }) {
    if (downTitle != null) {
      return downTitle(nodeLayoutElements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NodeLayout value) $default, {
    required TResult Function(_NodeLayoutUpTitle value) upTitle,
    required TResult Function(_NodeLayoutDownTitle value) downTitle,
    required TResult Function(_NodeLayoutLeftImage value) leftImage,
    required TResult Function(_NodeLayoutRightImage value) rightImage,
  }) {
    return downTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NodeLayout value)? $default, {
    TResult? Function(_NodeLayoutUpTitle value)? upTitle,
    TResult? Function(_NodeLayoutDownTitle value)? downTitle,
    TResult? Function(_NodeLayoutLeftImage value)? leftImage,
    TResult? Function(_NodeLayoutRightImage value)? rightImage,
  }) {
    return downTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NodeLayout value)? $default, {
    TResult Function(_NodeLayoutUpTitle value)? upTitle,
    TResult Function(_NodeLayoutDownTitle value)? downTitle,
    TResult Function(_NodeLayoutLeftImage value)? leftImage,
    TResult Function(_NodeLayoutRightImage value)? rightImage,
    required TResult orElse(),
  }) {
    if (downTitle != null) {
      return downTitle(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeLayoutDownTitleImplToJson(
      this,
    );
  }
}

abstract class _NodeLayoutDownTitle implements NodeLayout {
  const factory _NodeLayoutDownTitle(
          {final List<NodeLayoutElement> nodeLayoutElements}) =
      _$NodeLayoutDownTitleImpl;

  factory _NodeLayoutDownTitle.fromJson(Map<String, dynamic> json) =
      _$NodeLayoutDownTitleImpl.fromJson;

  @override
  List<NodeLayoutElement> get nodeLayoutElements;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeLayoutDownTitleImplCopyWith<_$NodeLayoutDownTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NodeLayoutLeftImageImplCopyWith<$Res>
    implements $NodeLayoutCopyWith<$Res> {
  factory _$$NodeLayoutLeftImageImplCopyWith(_$NodeLayoutLeftImageImpl value,
          $Res Function(_$NodeLayoutLeftImageImpl) then) =
      __$$NodeLayoutLeftImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NodeLayoutElement> nodeLayoutElements});
}

/// @nodoc
class __$$NodeLayoutLeftImageImplCopyWithImpl<$Res>
    extends _$NodeLayoutCopyWithImpl<$Res, _$NodeLayoutLeftImageImpl>
    implements _$$NodeLayoutLeftImageImplCopyWith<$Res> {
  __$$NodeLayoutLeftImageImplCopyWithImpl(_$NodeLayoutLeftImageImpl _value,
      $Res Function(_$NodeLayoutLeftImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeLayoutElements = null,
  }) {
    return _then(_$NodeLayoutLeftImageImpl(
      nodeLayoutElements: null == nodeLayoutElements
          ? _value._nodeLayoutElements
          : nodeLayoutElements // ignore: cast_nullable_to_non_nullable
              as List<NodeLayoutElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeLayoutLeftImageImpl implements _NodeLayoutLeftImage {
  const _$NodeLayoutLeftImageImpl(
      {final List<NodeLayoutElement> nodeLayoutElements = const [
        NodeLayoutElement.title(),
        NodeLayoutElement.image(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(
                    percentage: 0, option: ResponsiveSizeOption.percentage),
                width: ResponsiveSize(
                    percentage: 50, option: ResponsiveSizeOption.percentage),
                top: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px),
                bottom:
                    ResponsiveSize(px: 0, option: ResponsiveSizeOption.px))),
        NodeLayoutElement.content(
            responsiveBox: ResponsiveBox(
                right: ResponsiveSize(
                    percentage: 0, option: ResponsiveSizeOption.percentage),
                width: ResponsiveSize(
                    percentage: 50, option: ResponsiveSizeOption.percentage),
                top: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px),
                bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
      ],
      final String? $type})
      : _nodeLayoutElements = nodeLayoutElements,
        $type = $type ?? 'leftImage';

  factory _$NodeLayoutLeftImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeLayoutLeftImageImplFromJson(json);

  final List<NodeLayoutElement> _nodeLayoutElements;
  @override
  @JsonKey()
  List<NodeLayoutElement> get nodeLayoutElements {
    if (_nodeLayoutElements is EqualUnmodifiableListView)
      return _nodeLayoutElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodeLayoutElements);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayout.leftImage(nodeLayoutElements: $nodeLayoutElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeLayoutLeftImageImpl &&
            const DeepCollectionEquality()
                .equals(other._nodeLayoutElements, _nodeLayoutElements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nodeLayoutElements));

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeLayoutLeftImageImplCopyWith<_$NodeLayoutLeftImageImpl> get copyWith =>
      __$$NodeLayoutLeftImageImplCopyWithImpl<_$NodeLayoutLeftImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements) $default, {
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        upTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        downTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        leftImage,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        rightImage,
  }) {
    return leftImage(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
  }) {
    return leftImage?.call(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
    required TResult orElse(),
  }) {
    if (leftImage != null) {
      return leftImage(nodeLayoutElements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NodeLayout value) $default, {
    required TResult Function(_NodeLayoutUpTitle value) upTitle,
    required TResult Function(_NodeLayoutDownTitle value) downTitle,
    required TResult Function(_NodeLayoutLeftImage value) leftImage,
    required TResult Function(_NodeLayoutRightImage value) rightImage,
  }) {
    return leftImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NodeLayout value)? $default, {
    TResult? Function(_NodeLayoutUpTitle value)? upTitle,
    TResult? Function(_NodeLayoutDownTitle value)? downTitle,
    TResult? Function(_NodeLayoutLeftImage value)? leftImage,
    TResult? Function(_NodeLayoutRightImage value)? rightImage,
  }) {
    return leftImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NodeLayout value)? $default, {
    TResult Function(_NodeLayoutUpTitle value)? upTitle,
    TResult Function(_NodeLayoutDownTitle value)? downTitle,
    TResult Function(_NodeLayoutLeftImage value)? leftImage,
    TResult Function(_NodeLayoutRightImage value)? rightImage,
    required TResult orElse(),
  }) {
    if (leftImage != null) {
      return leftImage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeLayoutLeftImageImplToJson(
      this,
    );
  }
}

abstract class _NodeLayoutLeftImage implements NodeLayout {
  const factory _NodeLayoutLeftImage(
          {final List<NodeLayoutElement> nodeLayoutElements}) =
      _$NodeLayoutLeftImageImpl;

  factory _NodeLayoutLeftImage.fromJson(Map<String, dynamic> json) =
      _$NodeLayoutLeftImageImpl.fromJson;

  @override
  List<NodeLayoutElement> get nodeLayoutElements;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeLayoutLeftImageImplCopyWith<_$NodeLayoutLeftImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NodeLayoutRightImageImplCopyWith<$Res>
    implements $NodeLayoutCopyWith<$Res> {
  factory _$$NodeLayoutRightImageImplCopyWith(_$NodeLayoutRightImageImpl value,
          $Res Function(_$NodeLayoutRightImageImpl) then) =
      __$$NodeLayoutRightImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NodeLayoutElement> nodeLayoutElements});
}

/// @nodoc
class __$$NodeLayoutRightImageImplCopyWithImpl<$Res>
    extends _$NodeLayoutCopyWithImpl<$Res, _$NodeLayoutRightImageImpl>
    implements _$$NodeLayoutRightImageImplCopyWith<$Res> {
  __$$NodeLayoutRightImageImplCopyWithImpl(_$NodeLayoutRightImageImpl _value,
      $Res Function(_$NodeLayoutRightImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeLayoutElements = null,
  }) {
    return _then(_$NodeLayoutRightImageImpl(
      nodeLayoutElements: null == nodeLayoutElements
          ? _value._nodeLayoutElements
          : nodeLayoutElements // ignore: cast_nullable_to_non_nullable
              as List<NodeLayoutElement>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodeLayoutRightImageImpl implements _NodeLayoutRightImage {
  const _$NodeLayoutRightImageImpl(
      {final List<NodeLayoutElement> nodeLayoutElements = const [
        NodeLayoutElement.title(),
        NodeLayoutElement.image(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(
                    percentage: 50, option: ResponsiveSizeOption.percentage),
                right: ResponsiveSize(
                    percentage: 0, option: ResponsiveSizeOption.percentage),
                top: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px),
                bottom:
                    ResponsiveSize(px: 0, option: ResponsiveSizeOption.px))),
        NodeLayoutElement.content(
            responsiveBox: ResponsiveBox(
                left: ResponsiveSize(
                    percentage: 0, option: ResponsiveSizeOption.percentage),
                right: ResponsiveSize(
                    percentage: 50, option: ResponsiveSizeOption.percentage),
                top: ResponsiveSize(
                    px: defaultTitleHeight, option: ResponsiveSizeOption.px),
                bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
      ],
      final String? $type})
      : _nodeLayoutElements = nodeLayoutElements,
        $type = $type ?? 'rightImage';

  factory _$NodeLayoutRightImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeLayoutRightImageImplFromJson(json);

  final List<NodeLayoutElement> _nodeLayoutElements;
  @override
  @JsonKey()
  List<NodeLayoutElement> get nodeLayoutElements {
    if (_nodeLayoutElements is EqualUnmodifiableListView)
      return _nodeLayoutElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodeLayoutElements);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'NodeLayout.rightImage(nodeLayoutElements: $nodeLayoutElements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeLayoutRightImageImpl &&
            const DeepCollectionEquality()
                .equals(other._nodeLayoutElements, _nodeLayoutElements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nodeLayoutElements));

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeLayoutRightImageImplCopyWith<_$NodeLayoutRightImageImpl>
      get copyWith =>
          __$$NodeLayoutRightImageImplCopyWithImpl<_$NodeLayoutRightImageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements) $default, {
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        upTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        downTitle,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        leftImage,
    required TResult Function(List<NodeLayoutElement> nodeLayoutElements)
        rightImage,
  }) {
    return rightImage(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult? Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
  }) {
    return rightImage?.call(nodeLayoutElements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? $default, {
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? upTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? downTitle,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? leftImage,
    TResult Function(List<NodeLayoutElement> nodeLayoutElements)? rightImage,
    required TResult orElse(),
  }) {
    if (rightImage != null) {
      return rightImage(nodeLayoutElements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NodeLayout value) $default, {
    required TResult Function(_NodeLayoutUpTitle value) upTitle,
    required TResult Function(_NodeLayoutDownTitle value) downTitle,
    required TResult Function(_NodeLayoutLeftImage value) leftImage,
    required TResult Function(_NodeLayoutRightImage value) rightImage,
  }) {
    return rightImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NodeLayout value)? $default, {
    TResult? Function(_NodeLayoutUpTitle value)? upTitle,
    TResult? Function(_NodeLayoutDownTitle value)? downTitle,
    TResult? Function(_NodeLayoutLeftImage value)? leftImage,
    TResult? Function(_NodeLayoutRightImage value)? rightImage,
  }) {
    return rightImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NodeLayout value)? $default, {
    TResult Function(_NodeLayoutUpTitle value)? upTitle,
    TResult Function(_NodeLayoutDownTitle value)? downTitle,
    TResult Function(_NodeLayoutLeftImage value)? leftImage,
    TResult Function(_NodeLayoutRightImage value)? rightImage,
    required TResult orElse(),
  }) {
    if (rightImage != null) {
      return rightImage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeLayoutRightImageImplToJson(
      this,
    );
  }
}

abstract class _NodeLayoutRightImage implements NodeLayout {
  const factory _NodeLayoutRightImage(
          {final List<NodeLayoutElement> nodeLayoutElements}) =
      _$NodeLayoutRightImageImpl;

  factory _NodeLayoutRightImage.fromJson(Map<String, dynamic> json) =
      _$NodeLayoutRightImageImpl.fromJson;

  @override
  List<NodeLayoutElement> get nodeLayoutElements;

  /// Create a copy of NodeLayout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeLayoutRightImageImplCopyWith<_$NodeLayoutRightImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
