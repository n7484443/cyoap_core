// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ChoiceNodeOption _$ChoiceNodeOptionFromJson(Map<String, dynamic> json) {
  return _ChoiceNodeDesign.fromJson(json);
}

/// @nodoc
mixin _$ChoiceNodeOption {
  bool get isOccupySpace;
  bool get hideAsResult;
  bool get showAsResult;
  bool get showAsSlider;
  bool get executeWhenVisible;
  String get presetName;
  ChoiceNodeDesignPreset? get overridePreset;

  /// Create a copy of ChoiceNodeOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceNodeOptionCopyWith<ChoiceNodeOption> get copyWith =>
      _$ChoiceNodeOptionCopyWithImpl<ChoiceNodeOption>(
          this as ChoiceNodeOption, _$identity);

  /// Serializes this ChoiceNodeOption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoiceNodeOption &&
            (identical(other.isOccupySpace, isOccupySpace) ||
                other.isOccupySpace == isOccupySpace) &&
            (identical(other.hideAsResult, hideAsResult) ||
                other.hideAsResult == hideAsResult) &&
            (identical(other.showAsResult, showAsResult) ||
                other.showAsResult == showAsResult) &&
            (identical(other.showAsSlider, showAsSlider) ||
                other.showAsSlider == showAsSlider) &&
            (identical(other.executeWhenVisible, executeWhenVisible) ||
                other.executeWhenVisible == executeWhenVisible) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName) &&
            (identical(other.overridePreset, overridePreset) ||
                other.overridePreset == overridePreset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isOccupySpace,
      hideAsResult,
      showAsResult,
      showAsSlider,
      executeWhenVisible,
      presetName,
      overridePreset);

  @override
  String toString() {
    return 'ChoiceNodeOption(isOccupySpace: $isOccupySpace, hideAsResult: $hideAsResult, showAsResult: $showAsResult, showAsSlider: $showAsSlider, executeWhenVisible: $executeWhenVisible, presetName: $presetName, overridePreset: $overridePreset)';
  }
}

/// @nodoc
abstract mixin class $ChoiceNodeOptionCopyWith<$Res> {
  factory $ChoiceNodeOptionCopyWith(
          ChoiceNodeOption value, $Res Function(ChoiceNodeOption) _then) =
      _$ChoiceNodeOptionCopyWithImpl;
  @useResult
  $Res call(
      {bool isOccupySpace,
      bool hideAsResult,
      bool showAsResult,
      bool showAsSlider,
      bool executeWhenVisible,
      String presetName,
      ChoiceNodeDesignPreset? overridePreset});

  $ChoiceNodeDesignPresetCopyWith<$Res>? get overridePreset;
}

/// @nodoc
class _$ChoiceNodeOptionCopyWithImpl<$Res>
    implements $ChoiceNodeOptionCopyWith<$Res> {
  _$ChoiceNodeOptionCopyWithImpl(this._self, this._then);

  final ChoiceNodeOption _self;
  final $Res Function(ChoiceNodeOption) _then;

  /// Create a copy of ChoiceNodeOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOccupySpace = null,
    Object? hideAsResult = null,
    Object? showAsResult = null,
    Object? showAsSlider = null,
    Object? executeWhenVisible = null,
    Object? presetName = null,
    Object? overridePreset = freezed,
  }) {
    return _then(_self.copyWith(
      isOccupySpace: null == isOccupySpace
          ? _self.isOccupySpace
          : isOccupySpace // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAsResult: null == hideAsResult
          ? _self.hideAsResult
          : hideAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      showAsResult: null == showAsResult
          ? _self.showAsResult
          : showAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      showAsSlider: null == showAsSlider
          ? _self.showAsSlider
          : showAsSlider // ignore: cast_nullable_to_non_nullable
              as bool,
      executeWhenVisible: null == executeWhenVisible
          ? _self.executeWhenVisible
          : executeWhenVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _self.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
      overridePreset: freezed == overridePreset
          ? _self.overridePreset
          : overridePreset // ignore: cast_nullable_to_non_nullable
              as ChoiceNodeDesignPreset?,
    ));
  }

  /// Create a copy of ChoiceNodeOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceNodeDesignPresetCopyWith<$Res>? get overridePreset {
    if (_self.overridePreset == null) {
      return null;
    }

    return $ChoiceNodeDesignPresetCopyWith<$Res>(_self.overridePreset!,
        (value) {
      return _then(_self.copyWith(overridePreset: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChoiceNodeOption].
extension ChoiceNodeOptionPatterns on ChoiceNodeOption {
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
    TResult Function(_ChoiceNodeDesign value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesign() when $default != null:
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
    TResult Function(_ChoiceNodeDesign value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesign():
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
    TResult? Function(_ChoiceNodeDesign value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesign() when $default != null:
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
    TResult Function(
            bool isOccupySpace,
            bool hideAsResult,
            bool showAsResult,
            bool showAsSlider,
            bool executeWhenVisible,
            String presetName,
            ChoiceNodeDesignPreset? overridePreset)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesign() when $default != null:
        return $default(
            _that.isOccupySpace,
            _that.hideAsResult,
            _that.showAsResult,
            _that.showAsSlider,
            _that.executeWhenVisible,
            _that.presetName,
            _that.overridePreset);
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
    TResult Function(
            bool isOccupySpace,
            bool hideAsResult,
            bool showAsResult,
            bool showAsSlider,
            bool executeWhenVisible,
            String presetName,
            ChoiceNodeDesignPreset? overridePreset)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesign():
        return $default(
            _that.isOccupySpace,
            _that.hideAsResult,
            _that.showAsResult,
            _that.showAsSlider,
            _that.executeWhenVisible,
            _that.presetName,
            _that.overridePreset);
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
            bool isOccupySpace,
            bool hideAsResult,
            bool showAsResult,
            bool showAsSlider,
            bool executeWhenVisible,
            String presetName,
            ChoiceNodeDesignPreset? overridePreset)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChoiceNodeDesign() when $default != null:
        return $default(
            _that.isOccupySpace,
            _that.hideAsResult,
            _that.showAsResult,
            _that.showAsSlider,
            _that.executeWhenVisible,
            _that.presetName,
            _that.overridePreset);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChoiceNodeDesign extends ChoiceNodeOption {
  _ChoiceNodeDesign(
      {this.isOccupySpace = false,
      this.hideAsResult = false,
      this.showAsResult = false,
      this.showAsSlider = false,
      this.executeWhenVisible = false,
      this.presetName = 'default',
      this.overridePreset = null})
      : super._();
  factory _ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =>
      _$ChoiceNodeDesignFromJson(json);

  @override
  @JsonKey()
  final bool isOccupySpace;
  @override
  @JsonKey()
  final bool hideAsResult;
  @override
  @JsonKey()
  final bool showAsResult;
  @override
  @JsonKey()
  final bool showAsSlider;
  @override
  @JsonKey()
  final bool executeWhenVisible;
  @override
  @JsonKey()
  final String presetName;
  @override
  @JsonKey()
  final ChoiceNodeDesignPreset? overridePreset;

  /// Create a copy of ChoiceNodeOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChoiceNodeDesignCopyWith<_ChoiceNodeDesign> get copyWith =>
      __$ChoiceNodeDesignCopyWithImpl<_ChoiceNodeDesign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChoiceNodeDesignToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChoiceNodeDesign &&
            (identical(other.isOccupySpace, isOccupySpace) ||
                other.isOccupySpace == isOccupySpace) &&
            (identical(other.hideAsResult, hideAsResult) ||
                other.hideAsResult == hideAsResult) &&
            (identical(other.showAsResult, showAsResult) ||
                other.showAsResult == showAsResult) &&
            (identical(other.showAsSlider, showAsSlider) ||
                other.showAsSlider == showAsSlider) &&
            (identical(other.executeWhenVisible, executeWhenVisible) ||
                other.executeWhenVisible == executeWhenVisible) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName) &&
            (identical(other.overridePreset, overridePreset) ||
                other.overridePreset == overridePreset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isOccupySpace,
      hideAsResult,
      showAsResult,
      showAsSlider,
      executeWhenVisible,
      presetName,
      overridePreset);

  @override
  String toString() {
    return 'ChoiceNodeOption(isOccupySpace: $isOccupySpace, hideAsResult: $hideAsResult, showAsResult: $showAsResult, showAsSlider: $showAsSlider, executeWhenVisible: $executeWhenVisible, presetName: $presetName, overridePreset: $overridePreset)';
  }
}

/// @nodoc
abstract mixin class _$ChoiceNodeDesignCopyWith<$Res>
    implements $ChoiceNodeOptionCopyWith<$Res> {
  factory _$ChoiceNodeDesignCopyWith(
          _ChoiceNodeDesign value, $Res Function(_ChoiceNodeDesign) _then) =
      __$ChoiceNodeDesignCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isOccupySpace,
      bool hideAsResult,
      bool showAsResult,
      bool showAsSlider,
      bool executeWhenVisible,
      String presetName,
      ChoiceNodeDesignPreset? overridePreset});

  @override
  $ChoiceNodeDesignPresetCopyWith<$Res>? get overridePreset;
}

/// @nodoc
class __$ChoiceNodeDesignCopyWithImpl<$Res>
    implements _$ChoiceNodeDesignCopyWith<$Res> {
  __$ChoiceNodeDesignCopyWithImpl(this._self, this._then);

  final _ChoiceNodeDesign _self;
  final $Res Function(_ChoiceNodeDesign) _then;

  /// Create a copy of ChoiceNodeOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isOccupySpace = null,
    Object? hideAsResult = null,
    Object? showAsResult = null,
    Object? showAsSlider = null,
    Object? executeWhenVisible = null,
    Object? presetName = null,
    Object? overridePreset = freezed,
  }) {
    return _then(_ChoiceNodeDesign(
      isOccupySpace: null == isOccupySpace
          ? _self.isOccupySpace
          : isOccupySpace // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAsResult: null == hideAsResult
          ? _self.hideAsResult
          : hideAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      showAsResult: null == showAsResult
          ? _self.showAsResult
          : showAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      showAsSlider: null == showAsSlider
          ? _self.showAsSlider
          : showAsSlider // ignore: cast_nullable_to_non_nullable
              as bool,
      executeWhenVisible: null == executeWhenVisible
          ? _self.executeWhenVisible
          : executeWhenVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _self.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
      overridePreset: freezed == overridePreset
          ? _self.overridePreset
          : overridePreset // ignore: cast_nullable_to_non_nullable
              as ChoiceNodeDesignPreset?,
    ));
  }

  /// Create a copy of ChoiceNodeOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceNodeDesignPresetCopyWith<$Res>? get overridePreset {
    if (_self.overridePreset == null) {
      return null;
    }

    return $ChoiceNodeDesignPresetCopyWith<$Res>(_self.overridePreset!,
        (value) {
      return _then(_self.copyWith(overridePreset: value));
    });
  }
}

// dart format on
