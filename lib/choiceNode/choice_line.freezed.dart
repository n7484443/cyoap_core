// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChoiceLineOption {
  int get maxSelect;
  bool get enableCancelFeature;
  String get presetName;
  ChoiceLineDesignPreset? get overridePreset;
  String? get name;

  /// Create a copy of ChoiceLineOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceLineOptionCopyWith<ChoiceLineOption> get copyWith =>
      _$ChoiceLineOptionCopyWithImpl<ChoiceLineOption>(
          this as ChoiceLineOption, _$identity);

  /// Serializes this ChoiceLineOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoiceLineOption &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect) &&
            (identical(other.enableCancelFeature, enableCancelFeature) ||
                other.enableCancelFeature == enableCancelFeature) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName) &&
            (identical(other.overridePreset, overridePreset) ||
                other.overridePreset == overridePreset) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maxSelect, enableCancelFeature,
      presetName, overridePreset, name);

  @override
  String toString() {
    return 'ChoiceLineOption(maxSelect: $maxSelect, enableCancelFeature: $enableCancelFeature, presetName: $presetName, overridePreset: $overridePreset, name: $name)';
  }
}

/// @nodoc
abstract mixin class $ChoiceLineOptionCopyWith<$Res> {
  factory $ChoiceLineOptionCopyWith(
          ChoiceLineOption value, $Res Function(ChoiceLineOption) _then) =
      _$ChoiceLineOptionCopyWithImpl;
  @useResult
  $Res call(
      {int maxSelect,
      bool enableCancelFeature,
      String presetName,
      ChoiceLineDesignPreset? overridePreset,
      String? name});

  $ChoiceLineDesignPresetCopyWith<$Res>? get overridePreset;
}

/// @nodoc
class _$ChoiceLineOptionCopyWithImpl<$Res>
    implements $ChoiceLineOptionCopyWith<$Res> {
  _$ChoiceLineOptionCopyWithImpl(this._self, this._then);

  final ChoiceLineOption _self;
  final $Res Function(ChoiceLineOption) _then;

  /// Create a copy of ChoiceLineOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxSelect = null,
    Object? enableCancelFeature = null,
    Object? presetName = null,
    Object? overridePreset = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      maxSelect: null == maxSelect
          ? _self.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      enableCancelFeature: null == enableCancelFeature
          ? _self.enableCancelFeature
          : enableCancelFeature // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _self.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
      overridePreset: freezed == overridePreset
          ? _self.overridePreset
          : overridePreset // ignore: cast_nullable_to_non_nullable
              as ChoiceLineDesignPreset?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ChoiceLineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceLineDesignPresetCopyWith<$Res>? get overridePreset {
    if (_self.overridePreset == null) {
      return null;
    }

    return $ChoiceLineDesignPresetCopyWith<$Res>(_self.overridePreset!,
        (value) {
      return _then(_self.copyWith(overridePreset: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChoiceLineOption].
extension ChoiceLineOptionPatterns on ChoiceLineOption {
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
    TResult Function(_ChoiceLineOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineOption() when $default != null:
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
    TResult Function(_ChoiceLineOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineOption():
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
    TResult? Function(_ChoiceLineOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineOption() when $default != null:
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
    TResult Function(int maxSelect, bool enableCancelFeature, String presetName,
            ChoiceLineDesignPreset? overridePreset, String? name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineOption() when $default != null:
        return $default(_that.maxSelect, _that.enableCancelFeature,
            _that.presetName, _that.overridePreset, _that.name);
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
    TResult Function(int maxSelect, bool enableCancelFeature, String presetName,
            ChoiceLineDesignPreset? overridePreset, String? name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineOption():
        return $default(_that.maxSelect, _that.enableCancelFeature,
            _that.presetName, _that.overridePreset, _that.name);
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
    TResult? Function(
            int maxSelect,
            bool enableCancelFeature,
            String presetName,
            ChoiceLineDesignPreset? overridePreset,
            String? name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceLineOption() when $default != null:
        return $default(_that.maxSelect, _that.enableCancelFeature,
            _that.presetName, _that.overridePreset, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChoiceLineOption extends ChoiceLineOption {
  const _ChoiceLineOption(
      {this.maxSelect = -1,
      this.enableCancelFeature = false,
      this.presetName = 'default',
      this.overridePreset = null,
      this.name})
      : super._();
  factory _ChoiceLineOption.fromJson(Map<String, dynamic> json) =>
      _$ChoiceLineOptionFromJson(json);

  @override
  @JsonKey()
  final int maxSelect;
  @override
  @JsonKey()
  final bool enableCancelFeature;
  @override
  @JsonKey()
  final String presetName;
  @override
  @JsonKey()
  final ChoiceLineDesignPreset? overridePreset;
  @override
  final String? name;

  /// Create a copy of ChoiceLineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoiceLineOptionCopyWith<_ChoiceLineOption> get copyWith =>
      __$ChoiceLineOptionCopyWithImpl<_ChoiceLineOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChoiceLineOptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoiceLineOption &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect) &&
            (identical(other.enableCancelFeature, enableCancelFeature) ||
                other.enableCancelFeature == enableCancelFeature) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName) &&
            (identical(other.overridePreset, overridePreset) ||
                other.overridePreset == overridePreset) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maxSelect, enableCancelFeature,
      presetName, overridePreset, name);

  @override
  String toString() {
    return 'ChoiceLineOption(maxSelect: $maxSelect, enableCancelFeature: $enableCancelFeature, presetName: $presetName, overridePreset: $overridePreset, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$ChoiceLineOptionCopyWith<$Res>
    implements $ChoiceLineOptionCopyWith<$Res> {
  factory _$ChoiceLineOptionCopyWith(
          _ChoiceLineOption value, $Res Function(_ChoiceLineOption) _then) =
      __$ChoiceLineOptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int maxSelect,
      bool enableCancelFeature,
      String presetName,
      ChoiceLineDesignPreset? overridePreset,
      String? name});

  @override
  $ChoiceLineDesignPresetCopyWith<$Res>? get overridePreset;
}

/// @nodoc
class __$ChoiceLineOptionCopyWithImpl<$Res>
    implements _$ChoiceLineOptionCopyWith<$Res> {
  __$ChoiceLineOptionCopyWithImpl(this._self, this._then);

  final _ChoiceLineOption _self;
  final $Res Function(_ChoiceLineOption) _then;

  /// Create a copy of ChoiceLineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? maxSelect = null,
    Object? enableCancelFeature = null,
    Object? presetName = null,
    Object? overridePreset = freezed,
    Object? name = freezed,
  }) {
    return _then(_ChoiceLineOption(
      maxSelect: null == maxSelect
          ? _self.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      enableCancelFeature: null == enableCancelFeature
          ? _self.enableCancelFeature
          : enableCancelFeature // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _self.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
      overridePreset: freezed == overridePreset
          ? _self.overridePreset
          : overridePreset // ignore: cast_nullable_to_non_nullable
              as ChoiceLineDesignPreset?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ChoiceLineOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceLineDesignPresetCopyWith<$Res>? get overridePreset {
    if (_self.overridePreset == null) {
      return null;
    }

    return $ChoiceLineDesignPresetCopyWith<$Res>(_self.overridePreset!,
        (value) {
      return _then(_self.copyWith(overridePreset: value));
    });
  }
}

// dart format on
