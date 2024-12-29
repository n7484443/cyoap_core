// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleCodeBlock _$SimpleCodeBlockFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'action':
      return Action.fromJson(json);
    case 'condition':
      return Condition.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SimpleCodeBlock',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SimpleCodeBlock {
  Object get type => throw _privateConstructorUsedError;
  String get varName => throw _privateConstructorUsedError;
  ValueType? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SimpleActionType type, String varName, ValueType? value)
        action,
    required TResult Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)
        condition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleActionType type, String varName, ValueType? value)?
        action,
    TResult? Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)?
        condition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleActionType type, String varName, ValueType? value)?
        action,
    TResult Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)?
        condition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Action value) action,
    required TResult Function(Condition value) condition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Action value)? action,
    TResult? Function(Condition value)? condition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Action value)? action,
    TResult Function(Condition value)? condition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SimpleCodeBlock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleCodeBlockCopyWith<SimpleCodeBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCodeBlockCopyWith<$Res> {
  factory $SimpleCodeBlockCopyWith(
          SimpleCodeBlock value, $Res Function(SimpleCodeBlock) then) =
      _$SimpleCodeBlockCopyWithImpl<$Res, SimpleCodeBlock>;
  @useResult
  $Res call({String varName, ValueType? value});

  $ValueTypeCopyWith<$Res>? get value;
}

/// @nodoc
class _$SimpleCodeBlockCopyWithImpl<$Res, $Val extends SimpleCodeBlock>
    implements $SimpleCodeBlockCopyWith<$Res> {
  _$SimpleCodeBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? varName = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      varName: null == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ValueType?,
    ) as $Val);
  }

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueTypeCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $ValueTypeCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActionImplCopyWith<$Res>
    implements $SimpleCodeBlockCopyWith<$Res> {
  factory _$$ActionImplCopyWith(
          _$ActionImpl value, $Res Function(_$ActionImpl) then) =
      __$$ActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SimpleActionType type, String varName, ValueType? value});

  @override
  $ValueTypeCopyWith<$Res>? get value;
}

/// @nodoc
class __$$ActionImplCopyWithImpl<$Res>
    extends _$SimpleCodeBlockCopyWithImpl<$Res, _$ActionImpl>
    implements _$$ActionImplCopyWith<$Res> {
  __$$ActionImplCopyWithImpl(
      _$ActionImpl _value, $Res Function(_$ActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? varName = null,
    Object? value = freezed,
  }) {
    return _then(_$ActionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleActionType,
      varName: null == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ValueType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionImpl extends Action {
  const _$ActionImpl(
      {this.type = SimpleActionType.varSet,
      this.varName = "",
      this.value = null,
      final String? $type})
      : $type = $type ?? 'action',
        super._();

  factory _$ActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionImplFromJson(json);

  @override
  @JsonKey()
  final SimpleActionType type;
  @override
  @JsonKey()
  final String varName;
  @override
  @JsonKey()
  final ValueType? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SimpleCodeBlock.action(type: $type, varName: $varName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.varName, varName) || other.varName == varName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, varName, value);

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionImplCopyWith<_$ActionImpl> get copyWith =>
      __$$ActionImplCopyWithImpl<_$ActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SimpleActionType type, String varName, ValueType? value)
        action,
    required TResult Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)
        condition,
  }) {
    return action(type, varName, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleActionType type, String varName, ValueType? value)?
        action,
    TResult? Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)?
        condition,
  }) {
    return action?.call(type, varName, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleActionType type, String varName, ValueType? value)?
        action,
    TResult Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)?
        condition,
    required TResult orElse(),
  }) {
    if (action != null) {
      return action(type, varName, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Action value) action,
    required TResult Function(Condition value) condition,
  }) {
    return action(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Action value)? action,
    TResult? Function(Condition value)? condition,
  }) {
    return action?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Action value)? action,
    TResult Function(Condition value)? condition,
    required TResult orElse(),
  }) {
    if (action != null) {
      return action(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionImplToJson(
      this,
    );
  }
}

abstract class Action extends SimpleCodeBlock {
  const factory Action(
      {final SimpleActionType type,
      final String varName,
      final ValueType? value}) = _$ActionImpl;
  const Action._() : super._();

  factory Action.fromJson(Map<String, dynamic> json) = _$ActionImpl.fromJson;

  @override
  SimpleActionType get type;
  @override
  String get varName;
  @override
  ValueType? get value;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionImplCopyWith<_$ActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConditionImplCopyWith<$Res>
    implements $SimpleCodeBlockCopyWith<$Res> {
  factory _$$ConditionImplCopyWith(
          _$ConditionImpl value, $Res Function(_$ConditionImpl) then) =
      __$$ConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SimpleConditionType type,
      String varName,
      String? anotherVarName,
      ValueType? value});

  @override
  $ValueTypeCopyWith<$Res>? get value;
}

/// @nodoc
class __$$ConditionImplCopyWithImpl<$Res>
    extends _$SimpleCodeBlockCopyWithImpl<$Res, _$ConditionImpl>
    implements _$$ConditionImplCopyWith<$Res> {
  __$$ConditionImplCopyWithImpl(
      _$ConditionImpl _value, $Res Function(_$ConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? varName = null,
    Object? anotherVarName = freezed,
    Object? value = freezed,
  }) {
    return _then(_$ConditionImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleConditionType,
      varName: null == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String,
      anotherVarName: freezed == anotherVarName
          ? _value.anotherVarName
          : anotherVarName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as ValueType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionImpl extends Condition {
  const _$ConditionImpl(
      {this.type = SimpleConditionType.nodeOn,
      this.varName = "",
      this.anotherVarName = null,
      this.value = const ValueType(data: 'true', type: DataType.bools),
      final String? $type})
      : $type = $type ?? 'condition',
        super._();

  factory _$ConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionImplFromJson(json);

  @override
  @JsonKey()
  final SimpleConditionType type;
  @override
  @JsonKey()
  final String varName;
  @override
  @JsonKey()
  final String? anotherVarName;
  @override
  @JsonKey()
  final ValueType? value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SimpleCodeBlock.condition(type: $type, varName: $varName, anotherVarName: $anotherVarName, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.varName, varName) || other.varName == varName) &&
            (identical(other.anotherVarName, anotherVarName) ||
                other.anotherVarName == anotherVarName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, varName, anotherVarName, value);

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      __$$ConditionImplCopyWithImpl<_$ConditionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SimpleActionType type, String varName, ValueType? value)
        action,
    required TResult Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)
        condition,
  }) {
    return condition(type, varName, anotherVarName, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleActionType type, String varName, ValueType? value)?
        action,
    TResult? Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)?
        condition,
  }) {
    return condition?.call(type, varName, anotherVarName, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleActionType type, String varName, ValueType? value)?
        action,
    TResult Function(SimpleConditionType type, String varName,
            String? anotherVarName, ValueType? value)?
        condition,
    required TResult orElse(),
  }) {
    if (condition != null) {
      return condition(type, varName, anotherVarName, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Action value) action,
    required TResult Function(Condition value) condition,
  }) {
    return condition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Action value)? action,
    TResult? Function(Condition value)? condition,
  }) {
    return condition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Action value)? action,
    TResult Function(Condition value)? condition,
    required TResult orElse(),
  }) {
    if (condition != null) {
      return condition(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionImplToJson(
      this,
    );
  }
}

abstract class Condition extends SimpleCodeBlock {
  const factory Condition(
      {final SimpleConditionType type,
      final String varName,
      final String? anotherVarName,
      final ValueType? value}) = _$ConditionImpl;
  const Condition._() : super._();

  factory Condition.fromJson(Map<String, dynamic> json) =
      _$ConditionImpl.fromJson;

  @override
  SimpleConditionType get type;
  @override
  String get varName;
  String? get anotherVarName;
  @override
  ValueType? get value;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionImplCopyWith<_$ConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimpleCodes _$SimpleCodesFromJson(Map<String, dynamic> json) {
  return _SimpleCodes.fromJson(json);
}

/// @nodoc
mixin _$SimpleCodes {
  List<SimpleCodeBlock> get code => throw _privateConstructorUsedError;
  SimpleType get type => throw _privateConstructorUsedError;

  /// Serializes this SimpleCodes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleCodesCopyWith<SimpleCodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCodesCopyWith<$Res> {
  factory $SimpleCodesCopyWith(
          SimpleCodes value, $Res Function(SimpleCodes) then) =
      _$SimpleCodesCopyWithImpl<$Res, SimpleCodes>;
  @useResult
  $Res call({List<SimpleCodeBlock> code, SimpleType type});
}

/// @nodoc
class _$SimpleCodesCopyWithImpl<$Res, $Val extends SimpleCodes>
    implements $SimpleCodesCopyWith<$Res> {
  _$SimpleCodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<SimpleCodeBlock>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleCodesImplCopyWith<$Res>
    implements $SimpleCodesCopyWith<$Res> {
  factory _$$SimpleCodesImplCopyWith(
          _$SimpleCodesImpl value, $Res Function(_$SimpleCodesImpl) then) =
      __$$SimpleCodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SimpleCodeBlock> code, SimpleType type});
}

/// @nodoc
class __$$SimpleCodesImplCopyWithImpl<$Res>
    extends _$SimpleCodesCopyWithImpl<$Res, _$SimpleCodesImpl>
    implements _$$SimpleCodesImplCopyWith<$Res> {
  __$$SimpleCodesImplCopyWithImpl(
      _$SimpleCodesImpl _value, $Res Function(_$SimpleCodesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
  }) {
    return _then(_$SimpleCodesImpl(
      code: null == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<SimpleCodeBlock>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleCodesImpl extends _SimpleCodes {
  const _$SimpleCodesImpl(
      {final List<SimpleCodeBlock> code = const [],
      this.type = SimpleType.action})
      : _code = code,
        super._();

  factory _$SimpleCodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleCodesImplFromJson(json);

  final List<SimpleCodeBlock> _code;
  @override
  @JsonKey()
  List<SimpleCodeBlock> get code {
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_code);
  }

  @override
  @JsonKey()
  final SimpleType type;

  @override
  String toString() {
    return 'SimpleCodes(code: $code, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCodesImpl &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_code), type);

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCodesImplCopyWith<_$SimpleCodesImpl> get copyWith =>
      __$$SimpleCodesImplCopyWithImpl<_$SimpleCodesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleCodesImplToJson(
      this,
    );
  }
}

abstract class _SimpleCodes extends SimpleCodes {
  const factory _SimpleCodes(
      {final List<SimpleCodeBlock> code,
      final SimpleType type}) = _$SimpleCodesImpl;
  const _SimpleCodes._() : super._();

  factory _SimpleCodes.fromJson(Map<String, dynamic> json) =
      _$SimpleCodesImpl.fromJson;

  @override
  List<SimpleCodeBlock> get code;
  @override
  SimpleType get type;

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleCodesImplCopyWith<_$SimpleCodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
