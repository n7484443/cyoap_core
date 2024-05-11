// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValueType _$ValueTypeFromJson(Map<String, dynamic> json) {
  return _ValueType.fromJson(json);
}

/// @nodoc
mixin _$ValueType {
  String get data => throw _privateConstructorUsedError;
  DataType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueTypeCopyWith<ValueType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueTypeCopyWith<$Res> {
  factory $ValueTypeCopyWith(ValueType value, $Res Function(ValueType) then) =
      _$ValueTypeCopyWithImpl<$Res, ValueType>;
  @useResult
  $Res call({String data, DataType type});
}

/// @nodoc
class _$ValueTypeCopyWithImpl<$Res, $Val extends ValueType>
    implements $ValueTypeCopyWith<$Res> {
  _$ValueTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DataType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueTypeImplCopyWith<$Res>
    implements $ValueTypeCopyWith<$Res> {
  factory _$$ValueTypeImplCopyWith(
          _$ValueTypeImpl value, $Res Function(_$ValueTypeImpl) then) =
      __$$ValueTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, DataType type});
}

/// @nodoc
class __$$ValueTypeImplCopyWithImpl<$Res>
    extends _$ValueTypeCopyWithImpl<$Res, _$ValueTypeImpl>
    implements _$$ValueTypeImplCopyWith<$Res> {
  __$$ValueTypeImplCopyWithImpl(
      _$ValueTypeImpl _value, $Res Function(_$ValueTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_$ValueTypeImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DataType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueTypeImpl extends _ValueType {
  const _$ValueTypeImpl({required this.data, required this.type}) : super._();

  factory _$ValueTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueTypeImplFromJson(json);

  @override
  final String data;
  @override
  final DataType type;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueTypeImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueTypeImplCopyWith<_$ValueTypeImpl> get copyWith =>
      __$$ValueTypeImplCopyWithImpl<_$ValueTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueTypeImplToJson(
      this,
    );
  }
}

abstract class _ValueType extends ValueType {
  const factory _ValueType(
      {required final String data,
      required final DataType type}) = _$ValueTypeImpl;
  const _ValueType._() : super._();

  factory _ValueType.fromJson(Map<String, dynamic> json) =
      _$ValueTypeImpl.fromJson;

  @override
  String get data;
  @override
  DataType get type;
  @override
  @JsonKey(ignore: true)
  _$$ValueTypeImplCopyWith<_$ValueTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValueTypeWrapper _$ValueTypeWrapperFromJson(Map<String, dynamic> json) {
  return _ValueTypeWrapper.fromJson(json);
}

/// @nodoc
mixin _$ValueTypeWrapper {
  @ValueTypeConverter()
  ValueType get valueType => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueTypeWrapperCopyWith<ValueTypeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueTypeWrapperCopyWith<$Res> {
  factory $ValueTypeWrapperCopyWith(
          ValueTypeWrapper value, $Res Function(ValueTypeWrapper) then) =
      _$ValueTypeWrapperCopyWithImpl<$Res, ValueTypeWrapper>;
  @useResult
  $Res call(
      {@ValueTypeConverter() ValueType valueType,
      bool visible,
      String displayName});

  $ValueTypeCopyWith<$Res> get valueType;
}

/// @nodoc
class _$ValueTypeWrapperCopyWithImpl<$Res, $Val extends ValueTypeWrapper>
    implements $ValueTypeWrapperCopyWith<$Res> {
  _$ValueTypeWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueType = null,
    Object? visible = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValueTypeCopyWith<$Res> get valueType {
    return $ValueTypeCopyWith<$Res>(_value.valueType, (value) {
      return _then(_value.copyWith(valueType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValueTypeWrapperImplCopyWith<$Res>
    implements $ValueTypeWrapperCopyWith<$Res> {
  factory _$$ValueTypeWrapperImplCopyWith(_$ValueTypeWrapperImpl value,
          $Res Function(_$ValueTypeWrapperImpl) then) =
      __$$ValueTypeWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ValueTypeConverter() ValueType valueType,
      bool visible,
      String displayName});

  @override
  $ValueTypeCopyWith<$Res> get valueType;
}

/// @nodoc
class __$$ValueTypeWrapperImplCopyWithImpl<$Res>
    extends _$ValueTypeWrapperCopyWithImpl<$Res, _$ValueTypeWrapperImpl>
    implements _$$ValueTypeWrapperImplCopyWith<$Res> {
  __$$ValueTypeWrapperImplCopyWithImpl(_$ValueTypeWrapperImpl _value,
      $Res Function(_$ValueTypeWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueType = null,
    Object? visible = null,
    Object? displayName = null,
  }) {
    return _then(_$ValueTypeWrapperImpl(
      valueType: null == valueType
          ? _value.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueTypeWrapperImpl extends _ValueTypeWrapper {
  const _$ValueTypeWrapperImpl(
      {@ValueTypeConverter() required this.valueType,
      this.visible = false,
      this.displayName = ''})
      : super._();

  factory _$ValueTypeWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueTypeWrapperImplFromJson(json);

  @override
  @ValueTypeConverter()
  final ValueType valueType;
  @override
  @JsonKey()
  final bool visible;
  @override
  @JsonKey()
  final String displayName;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueTypeWrapperImpl &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, valueType, visible, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueTypeWrapperImplCopyWith<_$ValueTypeWrapperImpl> get copyWith =>
      __$$ValueTypeWrapperImplCopyWithImpl<_$ValueTypeWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueTypeWrapperImplToJson(
      this,
    );
  }
}

abstract class _ValueTypeWrapper extends ValueTypeWrapper {
  const factory _ValueTypeWrapper(
      {@ValueTypeConverter() required final ValueType valueType,
      final bool visible,
      final String displayName}) = _$ValueTypeWrapperImpl;
  const _ValueTypeWrapper._() : super._();

  factory _ValueTypeWrapper.fromJson(Map<String, dynamic> json) =
      _$ValueTypeWrapperImpl.fromJson;

  @override
  @ValueTypeConverter()
  ValueType get valueType;
  @override
  bool get visible;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$ValueTypeWrapperImplCopyWith<_$ValueTypeWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
