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
abstract class _$$_PosCopyWith<$Res> implements $PosCopyWith<$Res> {
  factory _$$_PosCopyWith(_$_Pos value, $Res Function(_$_Pos) then) =
      __$$_PosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> data});
}

/// @nodoc
class __$$_PosCopyWithImpl<$Res> extends _$PosCopyWithImpl<$Res, _$_Pos>
    implements _$$_PosCopyWith<$Res> {
  __$$_PosCopyWithImpl(_$_Pos _value, $Res Function(_$_Pos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Pos(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pos extends _Pos {
  _$_Pos({final List<int> data = const []})
      : _data = data,
        super._();

  factory _$_Pos.fromJson(Map<String, dynamic> json) => _$$_PosFromJson(json);

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
            other is _$_Pos &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PosCopyWith<_$_Pos> get copyWith =>
      __$$_PosCopyWithImpl<_$_Pos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PosToJson(
      this,
    );
  }
}

abstract class _Pos extends Pos {
  factory _Pos({final List<int> data}) = _$_Pos;
  _Pos._() : super._();

  factory _Pos.fromJson(Map<String, dynamic> json) = _$_Pos.fromJson;

  @override
  List<int> get data;
  @override
  @JsonKey(ignore: true)
  _$$_PosCopyWith<_$_Pos> get copyWith => throw _privateConstructorUsedError;
}
