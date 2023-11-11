// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pos _$PosFromJson(Map<String, dynamic> json) {
  return _Pos.fromJson(json);
}

/// @nodoc
mixin _$Pos {
  List<int> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosCopyWith<Pos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCopyWith<$Res> {
  factory $PosCopyWith(Pos value, $Res Function(Pos) then) =
      _$PosCopyWithImpl<$Res, Pos>;
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class _$PosCopyWithImpl<$Res, $Val extends Pos> implements $PosCopyWith<$Res> {
  _$PosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosImplCopyWith<$Res> implements $PosCopyWith<$Res> {
  factory _$$PosImplCopyWith(_$PosImpl value, $Res Function(_$PosImpl) then) =
      __$$PosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class __$$PosImplCopyWithImpl<$Res> extends _$PosCopyWithImpl<$Res, _$PosImpl>
    implements _$$PosImplCopyWith<$Res> {
  __$$PosImplCopyWithImpl(_$PosImpl _value, $Res Function(_$PosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PosImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosImpl extends _Pos {
  const _$PosImpl({final List<int> data = const []})
      : _data = data,
        super._();

  factory _$PosImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosImplFromJson(json);

  final List<int> _data;
  @override
  @JsonKey()
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Pos(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosImplCopyWith<_$PosImpl> get copyWith =>
      __$$PosImplCopyWithImpl<_$PosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosImplToJson(
      this,
    );
  }
}

abstract class _Pos extends Pos {
  const factory _Pos({final List<int> data}) = _$PosImpl;
  const _Pos._() : super._();

  factory _Pos.fromJson(Map<String, dynamic> json) = _$PosImpl.fromJson;

  @override
  List<int> get data;
  @override
  @JsonKey(ignore: true)
  _$$PosImplCopyWith<_$PosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
