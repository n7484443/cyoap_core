// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  Object get type;
  List<ValueType> get arguments;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleCodeBlockCopyWith<SimpleCodeBlock> get copyWith =>
      _$SimpleCodeBlockCopyWithImpl<SimpleCodeBlock>(
          this as SimpleCodeBlock, _$identity);

  /// Serializes this SimpleCodeBlock to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleCodeBlock &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'SimpleCodeBlock(type: $type, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $SimpleCodeBlockCopyWith<$Res> {
  factory $SimpleCodeBlockCopyWith(
          SimpleCodeBlock value, $Res Function(SimpleCodeBlock) _then) =
      _$SimpleCodeBlockCopyWithImpl;
  @useResult
  $Res call({List<ValueType> arguments});
}

/// @nodoc
class _$SimpleCodeBlockCopyWithImpl<$Res>
    implements $SimpleCodeBlockCopyWith<$Res> {
  _$SimpleCodeBlockCopyWithImpl(this._self, this._then);

  final SimpleCodeBlock _self;
  final $Res Function(SimpleCodeBlock) _then;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arguments = null,
  }) {
    return _then(_self.copyWith(
      arguments: null == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<ValueType>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SimpleCodeBlock].
extension SimpleCodeBlockPatterns on SimpleCodeBlock {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Action value)? action,
    TResult Function(Condition value)? condition,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Action() when action != null:
        return action(_that);
      case Condition() when condition != null:
        return condition(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(Action value) action,
    required TResult Function(Condition value) condition,
  }) {
    final _that = this;
    switch (_that) {
      case Action():
        return action(_that);
      case Condition():
        return condition(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Action value)? action,
    TResult? Function(Condition value)? condition,
  }) {
    final _that = this;
    switch (_that) {
      case Action() when action != null:
        return action(_that);
      case Condition() when condition != null:
        return condition(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SimpleActionType type, List<ValueType> arguments)? action,
    TResult Function(SimpleConditionType type, List<ValueType> arguments)?
        condition,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Action() when action != null:
        return action(_that.type, _that.arguments);
      case Condition() when condition != null:
        return condition(_that.type, _that.arguments);
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
  TResult when<TResult extends Object?>({
    required TResult Function(SimpleActionType type, List<ValueType> arguments)
        action,
    required TResult Function(
            SimpleConditionType type, List<ValueType> arguments)
        condition,
  }) {
    final _that = this;
    switch (_that) {
      case Action():
        return action(_that.type, _that.arguments);
      case Condition():
        return condition(_that.type, _that.arguments);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SimpleActionType type, List<ValueType> arguments)? action,
    TResult? Function(SimpleConditionType type, List<ValueType> arguments)?
        condition,
  }) {
    final _that = this;
    switch (_that) {
      case Action() when action != null:
        return action(_that.type, _that.arguments);
      case Condition() when condition != null:
        return condition(_that.type, _that.arguments);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class Action extends SimpleCodeBlock {
  const Action(
      {this.type = SimpleActionType.varSet,
      final List<ValueType> arguments = const [],
      final String? $type})
      : _arguments = arguments,
        $type = $type ?? 'action',
        super._();
  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);

  @override
  @JsonKey()
  final SimpleActionType type;
  final List<ValueType> _arguments;
  @override
  @JsonKey()
  List<ValueType> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActionCopyWith<Action> get copyWith =>
      _$ActionCopyWithImpl<Action>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Action &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_arguments));

  @override
  String toString() {
    return 'SimpleCodeBlock.action(type: $type, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $ActionCopyWith<$Res>
    implements $SimpleCodeBlockCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) _then) =
      _$ActionCopyWithImpl;
  @override
  @useResult
  $Res call({SimpleActionType type, List<ValueType> arguments});
}

/// @nodoc
class _$ActionCopyWithImpl<$Res> implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._self, this._then);

  final Action _self;
  final $Res Function(Action) _then;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? arguments = null,
  }) {
    return _then(Action(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleActionType,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<ValueType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class Condition extends SimpleCodeBlock {
  const Condition(
      {this.type = SimpleConditionType.nodeOn,
      final List<ValueType> arguments = const [],
      final String? $type})
      : _arguments = arguments,
        $type = $type ?? 'condition',
        super._();
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  @override
  @JsonKey()
  final SimpleConditionType type;
  final List<ValueType> _arguments;
  @override
  @JsonKey()
  List<ValueType> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConditionCopyWith<Condition> get copyWith =>
      _$ConditionCopyWithImpl<Condition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConditionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Condition &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_arguments));

  @override
  String toString() {
    return 'SimpleCodeBlock.condition(type: $type, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $ConditionCopyWith<$Res>
    implements $SimpleCodeBlockCopyWith<$Res> {
  factory $ConditionCopyWith(Condition value, $Res Function(Condition) _then) =
      _$ConditionCopyWithImpl;
  @override
  @useResult
  $Res call({SimpleConditionType type, List<ValueType> arguments});
}

/// @nodoc
class _$ConditionCopyWithImpl<$Res> implements $ConditionCopyWith<$Res> {
  _$ConditionCopyWithImpl(this._self, this._then);

  final Condition _self;
  final $Res Function(Condition) _then;

  /// Create a copy of SimpleCodeBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? arguments = null,
  }) {
    return _then(Condition(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleConditionType,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<ValueType>,
    ));
  }
}

/// @nodoc
mixin _$SimpleCodes {
  List<SimpleCodeBlock> get code;
  SimpleType get type;

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleCodesCopyWith<SimpleCodes> get copyWith =>
      _$SimpleCodesCopyWithImpl<SimpleCodes>(this as SimpleCodes, _$identity);

  /// Serializes this SimpleCodes to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleCodes &&
            const DeepCollectionEquality().equals(other.code, code) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code), type);

  @override
  String toString() {
    return 'SimpleCodes(code: $code, type: $type)';
  }
}

/// @nodoc
abstract mixin class $SimpleCodesCopyWith<$Res> {
  factory $SimpleCodesCopyWith(
          SimpleCodes value, $Res Function(SimpleCodes) _then) =
      _$SimpleCodesCopyWithImpl;
  @useResult
  $Res call({List<SimpleCodeBlock> code, SimpleType type});
}

/// @nodoc
class _$SimpleCodesCopyWithImpl<$Res> implements $SimpleCodesCopyWith<$Res> {
  _$SimpleCodesCopyWithImpl(this._self, this._then);

  final SimpleCodes _self;
  final $Res Function(SimpleCodes) _then;

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<SimpleCodeBlock>,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleType,
    ));
  }
}

/// Adds pattern-matching-related methods to [SimpleCodes].
extension SimpleCodesPatterns on SimpleCodes {
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
    TResult Function(_SimpleCodes value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SimpleCodes() when $default != null:
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
    TResult Function(_SimpleCodes value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SimpleCodes():
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
    TResult? Function(_SimpleCodes value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SimpleCodes() when $default != null:
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
    TResult Function(List<SimpleCodeBlock> code, SimpleType type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SimpleCodes() when $default != null:
        return $default(_that.code, _that.type);
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
    TResult Function(List<SimpleCodeBlock> code, SimpleType type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SimpleCodes():
        return $default(_that.code, _that.type);
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
    TResult? Function(List<SimpleCodeBlock> code, SimpleType type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SimpleCodes() when $default != null:
        return $default(_that.code, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SimpleCodes extends SimpleCodes {
  const _SimpleCodes(
      {final List<SimpleCodeBlock> code = const [],
      this.type = SimpleType.action})
      : _code = code,
        super._();
  factory _SimpleCodes.fromJson(Map<String, dynamic> json) =>
      _$SimpleCodesFromJson(json);

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

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SimpleCodesCopyWith<_SimpleCodes> get copyWith =>
      __$SimpleCodesCopyWithImpl<_SimpleCodes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SimpleCodesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimpleCodes &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_code), type);

  @override
  String toString() {
    return 'SimpleCodes(code: $code, type: $type)';
  }
}

/// @nodoc
abstract mixin class _$SimpleCodesCopyWith<$Res>
    implements $SimpleCodesCopyWith<$Res> {
  factory _$SimpleCodesCopyWith(
          _SimpleCodes value, $Res Function(_SimpleCodes) _then) =
      __$SimpleCodesCopyWithImpl;
  @override
  @useResult
  $Res call({List<SimpleCodeBlock> code, SimpleType type});
}

/// @nodoc
class __$SimpleCodesCopyWithImpl<$Res> implements _$SimpleCodesCopyWith<$Res> {
  __$SimpleCodesCopyWithImpl(this._self, this._then);

  final _SimpleCodes _self;
  final $Res Function(_SimpleCodes) _then;

  /// Create a copy of SimpleCodes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? type = null,
  }) {
    return _then(_SimpleCodes(
      code: null == code
          ? _self._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<SimpleCodeBlock>,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SimpleType,
    ));
  }
}

// dart format on
