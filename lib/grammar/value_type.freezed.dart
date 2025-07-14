// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValueType {
  String get data;
  DataType get type;

  /// Create a copy of ValueType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValueTypeCopyWith<ValueType> get copyWith =>
      _$ValueTypeCopyWithImpl<ValueType>(this as ValueType, _$identity);

  /// Serializes this ValueType to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValueType &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, type);
}

/// @nodoc
abstract mixin class $ValueTypeCopyWith<$Res> {
  factory $ValueTypeCopyWith(ValueType value, $Res Function(ValueType) _then) =
      _$ValueTypeCopyWithImpl;
  @useResult
  $Res call({String data, DataType type});
}

/// @nodoc
class _$ValueTypeCopyWithImpl<$Res> implements $ValueTypeCopyWith<$Res> {
  _$ValueTypeCopyWithImpl(this._self, this._then);

  final ValueType _self;
  final $Res Function(ValueType) _then;

  /// Create a copy of ValueType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as DataType,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValueType].
extension ValueTypePatterns on ValueType {
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
    TResult Function(_ValueType value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValueType() when $default != null:
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
    TResult Function(_ValueType value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueType():
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
    TResult? Function(_ValueType value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueType() when $default != null:
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
    TResult Function(String data, DataType type)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValueType() when $default != null:
        return $default(_that.data, _that.type);
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
    TResult Function(String data, DataType type) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueType():
        return $default(_that.data, _that.type);
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
    TResult? Function(String data, DataType type)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueType() when $default != null:
        return $default(_that.data, _that.type);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ValueType extends ValueType {
  const _ValueType({required this.data, required this.type}) : super._();
  factory _ValueType.fromJson(Map<String, dynamic> json) =>
      _$ValueTypeFromJson(json);

  @override
  final String data;
  @override
  final DataType type;

  /// Create a copy of ValueType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValueTypeCopyWith<_ValueType> get copyWith =>
      __$ValueTypeCopyWithImpl<_ValueType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValueTypeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValueType &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, type);
}

/// @nodoc
abstract mixin class _$ValueTypeCopyWith<$Res>
    implements $ValueTypeCopyWith<$Res> {
  factory _$ValueTypeCopyWith(
          _ValueType value, $Res Function(_ValueType) _then) =
      __$ValueTypeCopyWithImpl;
  @override
  @useResult
  $Res call({String data, DataType type});
}

/// @nodoc
class __$ValueTypeCopyWithImpl<$Res> implements _$ValueTypeCopyWith<$Res> {
  __$ValueTypeCopyWithImpl(this._self, this._then);

  final _ValueType _self;
  final $Res Function(_ValueType) _then;

  /// Create a copy of ValueType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_ValueType(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as DataType,
    ));
  }
}

/// @nodoc
mixin _$ValueTypeWrapper {
  @ValueTypeConverter()
  ValueType get valueType;
  bool get visible;
  String get displayName;

  /// Create a copy of ValueTypeWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValueTypeWrapperCopyWith<ValueTypeWrapper> get copyWith =>
      _$ValueTypeWrapperCopyWithImpl<ValueTypeWrapper>(
          this as ValueTypeWrapper, _$identity);

  /// Serializes this ValueTypeWrapper to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValueTypeWrapper &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, valueType, visible, displayName);
}

/// @nodoc
abstract mixin class $ValueTypeWrapperCopyWith<$Res> {
  factory $ValueTypeWrapperCopyWith(
          ValueTypeWrapper value, $Res Function(ValueTypeWrapper) _then) =
      _$ValueTypeWrapperCopyWithImpl;
  @useResult
  $Res call(
      {@ValueTypeConverter() ValueType valueType,
      bool visible,
      String displayName});

  $ValueTypeCopyWith<$Res> get valueType;
}

/// @nodoc
class _$ValueTypeWrapperCopyWithImpl<$Res>
    implements $ValueTypeWrapperCopyWith<$Res> {
  _$ValueTypeWrapperCopyWithImpl(this._self, this._then);

  final ValueTypeWrapper _self;
  final $Res Function(ValueTypeWrapper) _then;

  /// Create a copy of ValueTypeWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueType = null,
    Object? visible = null,
    Object? displayName = null,
  }) {
    return _then(_self.copyWith(
      valueType: null == valueType
          ? _self.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ValueTypeWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueTypeCopyWith<$Res> get valueType {
    return $ValueTypeCopyWith<$Res>(_self.valueType, (value) {
      return _then(_self.copyWith(valueType: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ValueTypeWrapper].
extension ValueTypeWrapperPatterns on ValueTypeWrapper {
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
    TResult Function(_ValueTypeWrapper value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValueTypeWrapper() when $default != null:
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
    TResult Function(_ValueTypeWrapper value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueTypeWrapper():
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
    TResult? Function(_ValueTypeWrapper value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueTypeWrapper() when $default != null:
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
    TResult Function(@ValueTypeConverter() ValueType valueType, bool visible,
            String displayName)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValueTypeWrapper() when $default != null:
        return $default(_that.valueType, _that.visible, _that.displayName);
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
    TResult Function(@ValueTypeConverter() ValueType valueType, bool visible,
            String displayName)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueTypeWrapper():
        return $default(_that.valueType, _that.visible, _that.displayName);
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
    TResult? Function(@ValueTypeConverter() ValueType valueType, bool visible,
            String displayName)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValueTypeWrapper() when $default != null:
        return $default(_that.valueType, _that.visible, _that.displayName);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ValueTypeWrapper extends ValueTypeWrapper {
  const _ValueTypeWrapper(
      {@ValueTypeConverter() required this.valueType,
      this.visible = false,
      this.displayName = ''})
      : super._();
  factory _ValueTypeWrapper.fromJson(Map<String, dynamic> json) =>
      _$ValueTypeWrapperFromJson(json);

  @override
  @ValueTypeConverter()
  final ValueType valueType;
  @override
  @JsonKey()
  final bool visible;
  @override
  @JsonKey()
  final String displayName;

  /// Create a copy of ValueTypeWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValueTypeWrapperCopyWith<_ValueTypeWrapper> get copyWith =>
      __$ValueTypeWrapperCopyWithImpl<_ValueTypeWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValueTypeWrapperToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValueTypeWrapper &&
            (identical(other.valueType, valueType) ||
                other.valueType == valueType) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, valueType, visible, displayName);
}

/// @nodoc
abstract mixin class _$ValueTypeWrapperCopyWith<$Res>
    implements $ValueTypeWrapperCopyWith<$Res> {
  factory _$ValueTypeWrapperCopyWith(
          _ValueTypeWrapper value, $Res Function(_ValueTypeWrapper) _then) =
      __$ValueTypeWrapperCopyWithImpl;
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
class __$ValueTypeWrapperCopyWithImpl<$Res>
    implements _$ValueTypeWrapperCopyWith<$Res> {
  __$ValueTypeWrapperCopyWithImpl(this._self, this._then);

  final _ValueTypeWrapper _self;
  final $Res Function(_ValueTypeWrapper) _then;

  /// Create a copy of ValueTypeWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? valueType = null,
    Object? visible = null,
    Object? displayName = null,
  }) {
    return _then(_ValueTypeWrapper(
      valueType: null == valueType
          ? _self.valueType
          : valueType // ignore: cast_nullable_to_non_nullable
              as ValueType,
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ValueTypeWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValueTypeCopyWith<$Res> get valueType {
    return $ValueTypeCopyWith<$Res>(_self.valueType, (value) {
      return _then(_self.copyWith(valueType: value));
    });
  }
}

// dart format on
