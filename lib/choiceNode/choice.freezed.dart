// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectInfo {
  Pos get pos => throw _privateConstructorUsedError;
  int get select => throw _privateConstructorUsedError;

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectInfoCopyWith<SelectInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectInfoCopyWith<$Res> {
  factory $SelectInfoCopyWith(
          SelectInfo value, $Res Function(SelectInfo) then) =
      _$SelectInfoCopyWithImpl<$Res, SelectInfo>;
  @useResult
  $Res call({Pos pos, int select});

  $PosCopyWith<$Res> get pos;
}

/// @nodoc
class _$SelectInfoCopyWithImpl<$Res, $Val extends SelectInfo>
    implements $SelectInfoCopyWith<$Res> {
  _$SelectInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
    Object? select = null,
  }) {
    return _then(_value.copyWith(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos,
      select: null == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PosCopyWith<$Res> get pos {
    return $PosCopyWith<$Res>(_value.pos, (value) {
      return _then(_value.copyWith(pos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectInfoImplCopyWith<$Res>
    implements $SelectInfoCopyWith<$Res> {
  factory _$$SelectInfoImplCopyWith(
          _$SelectInfoImpl value, $Res Function(_$SelectInfoImpl) then) =
      __$$SelectInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Pos pos, int select});

  @override
  $PosCopyWith<$Res> get pos;
}

/// @nodoc
class __$$SelectInfoImplCopyWithImpl<$Res>
    extends _$SelectInfoCopyWithImpl<$Res, _$SelectInfoImpl>
    implements _$$SelectInfoImplCopyWith<$Res> {
  __$$SelectInfoImplCopyWithImpl(
      _$SelectInfoImpl _value, $Res Function(_$SelectInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
    Object? select = null,
  }) {
    return _then(_$SelectInfoImpl(
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos,
      select: null == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectInfoImpl implements _SelectInfo {
  const _$SelectInfoImpl({required this.pos, required this.select});

  @override
  final Pos pos;
  @override
  final int select;

  @override
  String toString() {
    return 'SelectInfo(pos: $pos, select: $select)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectInfoImpl &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.select, select) || other.select == select));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos, select);

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectInfoImplCopyWith<_$SelectInfoImpl> get copyWith =>
      __$$SelectInfoImplCopyWithImpl<_$SelectInfoImpl>(this, _$identity);
}

abstract class _SelectInfo implements SelectInfo {
  const factory _SelectInfo(
      {required final Pos pos, required final int select}) = _$SelectInfoImpl;

  @override
  Pos get pos;
  @override
  int get select;

  /// Create a copy of SelectInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectInfoImplCopyWith<_$SelectInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeData _$SizeDataFromJson(Map<String, dynamic> json) {
  return _SizeData.fromJson(json);
}

/// @nodoc
mixin _$SizeData {
  int get width => throw _privateConstructorUsedError;
  Pos? get pos => throw _privateConstructorUsedError;

  /// Serializes this SizeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SizeDataCopyWith<SizeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeDataCopyWith<$Res> {
  factory $SizeDataCopyWith(SizeData value, $Res Function(SizeData) then) =
      _$SizeDataCopyWithImpl<$Res, SizeData>;
  @useResult
  $Res call({int width, Pos? pos});

  $PosCopyWith<$Res>? get pos;
}

/// @nodoc
class _$SizeDataCopyWithImpl<$Res, $Val extends SizeData>
    implements $SizeDataCopyWith<$Res> {
  _$SizeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? pos = freezed,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos?,
    ) as $Val);
  }

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PosCopyWith<$Res>? get pos {
    if (_value.pos == null) {
      return null;
    }

    return $PosCopyWith<$Res>(_value.pos!, (value) {
      return _then(_value.copyWith(pos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SizeDataImplCopyWith<$Res>
    implements $SizeDataCopyWith<$Res> {
  factory _$$SizeDataImplCopyWith(
          _$SizeDataImpl value, $Res Function(_$SizeDataImpl) then) =
      __$$SizeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, Pos? pos});

  @override
  $PosCopyWith<$Res>? get pos;
}

/// @nodoc
class __$$SizeDataImplCopyWithImpl<$Res>
    extends _$SizeDataCopyWithImpl<$Res, _$SizeDataImpl>
    implements _$$SizeDataImplCopyWith<$Res> {
  __$$SizeDataImplCopyWithImpl(
      _$SizeDataImpl _value, $Res Function(_$SizeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? pos = freezed,
  }) {
    return _then(_$SizeDataImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as Pos?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeDataImpl implements _SizeData {
  const _$SizeDataImpl({required this.width, this.pos});

  factory _$SizeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeDataImplFromJson(json);

  @override
  final int width;
  @override
  final Pos? pos;

  @override
  String toString() {
    return 'SizeData(width: $width, pos: $pos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeDataImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, width, pos);

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeDataImplCopyWith<_$SizeDataImpl> get copyWith =>
      __$$SizeDataImplCopyWithImpl<_$SizeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeDataImplToJson(
      this,
    );
  }
}

abstract class _SizeData implements SizeData {
  const factory _SizeData({required final int width, final Pos? pos}) =
      _$SizeDataImpl;

  factory _SizeData.fromJson(Map<String, dynamic> json) =
      _$SizeDataImpl.fromJson;

  @override
  int get width;
  @override
  Pos? get pos;

  /// Create a copy of SizeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SizeDataImplCopyWith<_$SizeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
