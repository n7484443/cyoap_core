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

EdgeValue _$EdgeValueFromJson(Map<String, dynamic> json) {
  return _EdgeValue.fromJson(json);
}

/// @nodoc
mixin _$EdgeValue {
  double get top => throw _privateConstructorUsedError;
  double get right => throw _privateConstructorUsedError;
  double get bottom => throw _privateConstructorUsedError;
  double get left => throw _privateConstructorUsedError;

  /// Serializes this EdgeValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EdgeValueCopyWith<EdgeValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgeValueCopyWith<$Res> {
  factory $EdgeValueCopyWith(EdgeValue value, $Res Function(EdgeValue) then) =
      _$EdgeValueCopyWithImpl<$Res, EdgeValue>;
  @useResult
  $Res call({double top, double right, double bottom, double left});
}

/// @nodoc
class _$EdgeValueCopyWithImpl<$Res, $Val extends EdgeValue>
    implements $EdgeValueCopyWith<$Res> {
  _$EdgeValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EdgeValueImplCopyWith<$Res>
    implements $EdgeValueCopyWith<$Res> {
  factory _$$EdgeValueImplCopyWith(
          _$EdgeValueImpl value, $Res Function(_$EdgeValueImpl) then) =
      __$$EdgeValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double top, double right, double bottom, double left});
}

/// @nodoc
class __$$EdgeValueImplCopyWithImpl<$Res>
    extends _$EdgeValueCopyWithImpl<$Res, _$EdgeValueImpl>
    implements _$$EdgeValueImplCopyWith<$Res> {
  __$$EdgeValueImplCopyWithImpl(
      _$EdgeValueImpl _value, $Res Function(_$EdgeValueImpl) _then)
      : super(_value, _then);

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
    return _then(_$EdgeValueImpl(
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double,
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgeValueImpl extends _EdgeValue {
  const _$EdgeValueImpl(
      {this.top = 0.0, this.right = 0.0, this.bottom = 0.0, this.left = 0.0})
      : super._();

  factory _$EdgeValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgeValueImplFromJson(json);

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

  @override
  String toString() {
    return 'EdgeValue(top: $top, right: $right, bottom: $bottom, left: $left)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgeValueImpl &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.left, left) || other.left == left));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, top, right, bottom, left);

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgeValueImplCopyWith<_$EdgeValueImpl> get copyWith =>
      __$$EdgeValueImplCopyWithImpl<_$EdgeValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgeValueImplToJson(
      this,
    );
  }
}

abstract class _EdgeValue extends EdgeValue {
  const factory _EdgeValue(
      {final double top,
      final double right,
      final double bottom,
      final double left}) = _$EdgeValueImpl;
  const _EdgeValue._() : super._();

  factory _EdgeValue.fromJson(Map<String, dynamic> json) =
      _$EdgeValueImpl.fromJson;

  @override
  double get top;
  @override
  double get right;
  @override
  double get bottom;
  @override
  double get left;

  /// Create a copy of EdgeValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EdgeValueImplCopyWith<_$EdgeValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VertexValue _$VertexValueFromJson(Map<String, dynamic> json) {
  return _VertexValue.fromJson(json);
}

/// @nodoc
mixin _$VertexValue {
  double get topLeft => throw _privateConstructorUsedError;
  double get topRight => throw _privateConstructorUsedError;
  double get bottomLeft => throw _privateConstructorUsedError;
  double get bottomRight => throw _privateConstructorUsedError;

  /// Serializes this VertexValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VertexValueCopyWith<VertexValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VertexValueCopyWith<$Res> {
  factory $VertexValueCopyWith(
          VertexValue value, $Res Function(VertexValue) then) =
      _$VertexValueCopyWithImpl<$Res, VertexValue>;
  @useResult
  $Res call(
      {double topLeft, double topRight, double bottomLeft, double bottomRight});
}

/// @nodoc
class _$VertexValueCopyWithImpl<$Res, $Val extends VertexValue>
    implements $VertexValueCopyWith<$Res> {
  _$VertexValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      topLeft: null == topLeft
          ? _value.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as double,
      topRight: null == topRight
          ? _value.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeft: null == bottomLeft
          ? _value.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRight: null == bottomRight
          ? _value.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VertexValueImplCopyWith<$Res>
    implements $VertexValueCopyWith<$Res> {
  factory _$$VertexValueImplCopyWith(
          _$VertexValueImpl value, $Res Function(_$VertexValueImpl) then) =
      __$$VertexValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double topLeft, double topRight, double bottomLeft, double bottomRight});
}

/// @nodoc
class __$$VertexValueImplCopyWithImpl<$Res>
    extends _$VertexValueCopyWithImpl<$Res, _$VertexValueImpl>
    implements _$$VertexValueImplCopyWith<$Res> {
  __$$VertexValueImplCopyWithImpl(
      _$VertexValueImpl _value, $Res Function(_$VertexValueImpl) _then)
      : super(_value, _then);

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
    return _then(_$VertexValueImpl(
      topLeft: null == topLeft
          ? _value.topLeft
          : topLeft // ignore: cast_nullable_to_non_nullable
              as double,
      topRight: null == topRight
          ? _value.topRight
          : topRight // ignore: cast_nullable_to_non_nullable
              as double,
      bottomLeft: null == bottomLeft
          ? _value.bottomLeft
          : bottomLeft // ignore: cast_nullable_to_non_nullable
              as double,
      bottomRight: null == bottomRight
          ? _value.bottomRight
          : bottomRight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VertexValueImpl extends _VertexValue {
  const _$VertexValueImpl(
      {this.topLeft = 0.0,
      this.topRight = 0.0,
      this.bottomLeft = 0.0,
      this.bottomRight = 0.0})
      : super._();

  factory _$VertexValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$VertexValueImplFromJson(json);

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

  @override
  String toString() {
    return 'VertexValue(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VertexValueImpl &&
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

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VertexValueImplCopyWith<_$VertexValueImpl> get copyWith =>
      __$$VertexValueImplCopyWithImpl<_$VertexValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VertexValueImplToJson(
      this,
    );
  }
}

abstract class _VertexValue extends VertexValue {
  const factory _VertexValue(
      {final double topLeft,
      final double topRight,
      final double bottomLeft,
      final double bottomRight}) = _$VertexValueImpl;
  const _VertexValue._() : super._();

  factory _VertexValue.fromJson(Map<String, dynamic> json) =
      _$VertexValueImpl.fromJson;

  @override
  double get topLeft;
  @override
  double get topRight;
  @override
  double get bottomLeft;
  @override
  double get bottomRight;

  /// Create a copy of VertexValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VertexValueImplCopyWith<_$VertexValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutlineOption _$OutlineOptionFromJson(Map<String, dynamic> json) {
  return _OutlineOption.fromJson(json);
}

/// @nodoc
mixin _$OutlineOption {
  OutlineType get outlineType => throw _privateConstructorUsedError;
  ColorOption get outlineColor => throw _privateConstructorUsedError;
  VertexValue get round => throw _privateConstructorUsedError;
  EdgeValue get distance => throw _privateConstructorUsedError;
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
      VertexValue round,
      EdgeValue distance,
      double outlineWidth});

  $ColorOptionCopyWith<$Res> get outlineColor;
  $VertexValueCopyWith<$Res> get round;
  $EdgeValueCopyWith<$Res> get distance;
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
    Object? round = null,
    Object? distance = null,
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
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as EdgeValue,
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

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VertexValueCopyWith<$Res> get round {
    return $VertexValueCopyWith<$Res>(_value.round, (value) {
      return _then(_value.copyWith(round: value) as $Val);
    });
  }

  /// Create a copy of OutlineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<$Res> get distance {
    return $EdgeValueCopyWith<$Res>(_value.distance, (value) {
      return _then(_value.copyWith(distance: value) as $Val);
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
    Object? round = null,
    Object? distance = null,
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
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as EdgeValue,
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
      this.round = const VertexValue(
          topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0, bottomRight: 4.0),
      this.distance =
          const EdgeValue(top: 4.0, right: 4.0, bottom: 4.0, left: 4.0),
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
  final VertexValue round;
  @override
  @JsonKey()
  final EdgeValue distance;
  @override
  @JsonKey()
  final double outlineWidth;

  @override
  String toString() {
    return 'OutlineOption(outlineType: $outlineType, outlineColor: $outlineColor, round: $round, distance: $distance, outlineWidth: $outlineWidth)';
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
      final VertexValue round,
      final EdgeValue distance,
      final double outlineWidth}) = _$OutlineOptionImpl;

  factory _OutlineOption.fromJson(Map<String, dynamic> json) =
      _$OutlineOptionImpl.fromJson;

  @override
  OutlineType get outlineType;
  @override
  ColorOption get outlineColor;
  @override
  VertexValue get round;
  @override
  EdgeValue get distance;
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

ChoiceNodeDesignPreset _$ChoiceNodeDesignPresetFromJson(
    Map<String, dynamic> json) {
  return _ChoiceNodeDesignPreset.fromJson(json);
}

/// @nodoc
mixin _$ChoiceNodeDesignPreset {
  bool? get titlePosition => throw _privateConstructorUsedError;
  double? get elevation => throw _privateConstructorUsedError;
  VertexValue? get round => throw _privateConstructorUsedError;
  EdgeValue? get padding => throw _privateConstructorUsedError;
  double? get imageMaxHeightRatio => throw _privateConstructorUsedError;
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
    return _then(_value.copyWith(
      titlePosition: freezed == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeValue?,
      imageMaxHeightRatio: freezed == imageMaxHeightRatio
          ? _value.imageMaxHeightRatio
          : imageMaxHeightRatio // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $VertexValueCopyWith<$Res>? get round {
    if (_value.round == null) {
      return null;
    }

    return $VertexValueCopyWith<$Res>(_value.round!, (value) {
      return _then(_value.copyWith(round: value) as $Val);
    });
  }

  /// Create a copy of ChoiceNodeDesignPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EdgeValueCopyWith<$Res>? get padding {
    if (_value.padding == null) {
      return null;
    }

    return $EdgeValueCopyWith<$Res>(_value.padding!, (value) {
      return _then(_value.copyWith(padding: value) as $Val);
    });
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
    return _then(_$ChoiceNodeDesignPresetImpl(
      titlePosition: freezed == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool?,
      elevation: freezed == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as VertexValue?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeValue?,
      imageMaxHeightRatio: freezed == imageMaxHeightRatio
          ? _value.imageMaxHeightRatio
          : imageMaxHeightRatio // ignore: cast_nullable_to_non_nullable
              as double?,
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

  factory _$ChoiceNodeDesignPresetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceNodeDesignPresetImplFromJson(json);

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

  @override
  String toString() {
    return 'ChoiceNodeDesignPreset(titlePosition: $titlePosition, elevation: $elevation, round: $round, padding: $padding, imageMaxHeightRatio: $imageMaxHeightRatio, hideTitle: $hideTitle, imagePosition: $imagePosition, colorTitle: $colorTitle, titleFont: $titleFont, mainFont: $mainFont, defaultOutlineOption: $defaultOutlineOption, selectOutlineEnable: $selectOutlineEnable, selectOutlineOption: $selectOutlineOption, defaultColorOption: $defaultColorOption, selectColorEnable: $selectColorEnable, selectColorOption: $selectColorOption, sliderOption: $sliderOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceNodeDesignPresetImpl &&
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
      {final bool? titlePosition,
      final double? elevation,
      final VertexValue? round,
      final EdgeValue? padding,
      final double? imageMaxHeightRatio,
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
  bool? get titlePosition;
  @override
  double? get elevation;
  @override
  VertexValue? get round;
  @override
  EdgeValue? get padding;
  @override
  double? get imageMaxHeightRatio;
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
