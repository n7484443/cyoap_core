// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlatformDesignSetting {
  String get variableFont;
  String? get backgroundImage;
  ColorOption get backgroundColorOption;
  ImageAttribute get backgroundAttribute;
  Map<String, ChoiceLineDesignPreset> get choiceLinePresetMap;
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap;
  double get marginVertical;

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlatformDesignSettingCopyWith<PlatformDesignSetting> get copyWith =>
      _$PlatformDesignSettingCopyWithImpl<PlatformDesignSetting>(
          this as PlatformDesignSetting, _$identity);

  /// Serializes this PlatformDesignSetting to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlatformDesignSetting &&
            (identical(other.variableFont, variableFont) ||
                other.variableFont == variableFont) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.backgroundColorOption, backgroundColorOption) ||
                other.backgroundColorOption == backgroundColorOption) &&
            (identical(other.backgroundAttribute, backgroundAttribute) ||
                other.backgroundAttribute == backgroundAttribute) &&
            const DeepCollectionEquality()
                .equals(other.choiceLinePresetMap, choiceLinePresetMap) &&
            const DeepCollectionEquality()
                .equals(other.choiceNodePresetMap, choiceNodePresetMap) &&
            (identical(other.marginVertical, marginVertical) ||
                other.marginVertical == marginVertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      variableFont,
      backgroundImage,
      backgroundColorOption,
      backgroundAttribute,
      const DeepCollectionEquality().hash(choiceLinePresetMap),
      const DeepCollectionEquality().hash(choiceNodePresetMap),
      marginVertical);

  @override
  String toString() {
    return 'PlatformDesignSetting(variableFont: $variableFont, backgroundImage: $backgroundImage, backgroundColorOption: $backgroundColorOption, backgroundAttribute: $backgroundAttribute, choiceLinePresetMap: $choiceLinePresetMap, choiceNodePresetMap: $choiceNodePresetMap, marginVertical: $marginVertical)';
  }
}

/// @nodoc
abstract mixin class $PlatformDesignSettingCopyWith<$Res> {
  factory $PlatformDesignSettingCopyWith(PlatformDesignSetting value,
          $Res Function(PlatformDesignSetting) _then) =
      _$PlatformDesignSettingCopyWithImpl;
  @useResult
  $Res call(
      {String variableFont,
      String? backgroundImage,
      ColorOption backgroundColorOption,
      ImageAttribute backgroundAttribute,
      Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
      Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
      double marginVertical});

  $ColorOptionCopyWith<$Res> get backgroundColorOption;
}

/// @nodoc
class _$PlatformDesignSettingCopyWithImpl<$Res>
    implements $PlatformDesignSettingCopyWith<$Res> {
  _$PlatformDesignSettingCopyWithImpl(this._self, this._then);

  final PlatformDesignSetting _self;
  final $Res Function(PlatformDesignSetting) _then;

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableFont = null,
    Object? backgroundImage = freezed,
    Object? backgroundColorOption = null,
    Object? backgroundAttribute = null,
    Object? choiceLinePresetMap = null,
    Object? choiceNodePresetMap = null,
    Object? marginVertical = null,
  }) {
    return _then(_self.copyWith(
      variableFont: null == variableFont
          ? _self.variableFont
          : variableFont // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: freezed == backgroundImage
          ? _self.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorOption: null == backgroundColorOption
          ? _self.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      backgroundAttribute: null == backgroundAttribute
          ? _self.backgroundAttribute
          : backgroundAttribute // ignore: cast_nullable_to_non_nullable
              as ImageAttribute,
      choiceLinePresetMap: null == choiceLinePresetMap
          ? _self.choiceLinePresetMap
          : choiceLinePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceLineDesignPreset>,
      choiceNodePresetMap: null == choiceNodePresetMap
          ? _self.choiceNodePresetMap
          : choiceNodePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceNodeDesignPreset>,
      marginVertical: null == marginVertical
          ? _self.marginVertical
          : marginVertical // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get backgroundColorOption {
    return $ColorOptionCopyWith<$Res>(_self.backgroundColorOption, (value) {
      return _then(_self.copyWith(backgroundColorOption: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PlatformDesignSetting].
extension PlatformDesignSettingPatterns on PlatformDesignSetting {
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
    TResult Function(_PlatformDesignSetting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlatformDesignSetting() when $default != null:
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
    TResult Function(_PlatformDesignSetting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlatformDesignSetting():
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
    TResult? Function(_PlatformDesignSetting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlatformDesignSetting() when $default != null:
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
            String variableFont,
            String? backgroundImage,
            ColorOption backgroundColorOption,
            ImageAttribute backgroundAttribute,
            Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
            Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
            double marginVertical)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlatformDesignSetting() when $default != null:
        return $default(
            _that.variableFont,
            _that.backgroundImage,
            _that.backgroundColorOption,
            _that.backgroundAttribute,
            _that.choiceLinePresetMap,
            _that.choiceNodePresetMap,
            _that.marginVertical);
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
            String variableFont,
            String? backgroundImage,
            ColorOption backgroundColorOption,
            ImageAttribute backgroundAttribute,
            Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
            Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
            double marginVertical)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlatformDesignSetting():
        return $default(
            _that.variableFont,
            _that.backgroundImage,
            _that.backgroundColorOption,
            _that.backgroundAttribute,
            _that.choiceLinePresetMap,
            _that.choiceNodePresetMap,
            _that.marginVertical);
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
            String variableFont,
            String? backgroundImage,
            ColorOption backgroundColorOption,
            ImageAttribute backgroundAttribute,
            Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
            Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
            double marginVertical)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlatformDesignSetting() when $default != null:
        return $default(
            _that.variableFont,
            _that.backgroundImage,
            _that.backgroundColorOption,
            _that.backgroundAttribute,
            _that.choiceLinePresetMap,
            _that.choiceNodePresetMap,
            _that.marginVertical);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PlatformDesignSetting extends PlatformDesignSetting {
  _PlatformDesignSetting(
      {this.variableFont = "notoSans",
      this.backgroundImage,
      this.backgroundColorOption = const ColorOption(color: 0xFFEEEEFF),
      this.backgroundAttribute = ImageAttribute.fit,
      final Map<String, ChoiceLineDesignPreset> choiceLinePresetMap = const {
        'default': ChoiceLineDesignPreset()
      },
      final Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap = const {
        'default': ChoiceNodeDesignPreset()
      },
      this.marginVertical = 12.0})
      : _choiceLinePresetMap = choiceLinePresetMap,
        _choiceNodePresetMap = choiceNodePresetMap,
        super._();
  factory _PlatformDesignSetting.fromJson(Map<String, dynamic> json) =>
      _$PlatformDesignSettingFromJson(json);

  @override
  @JsonKey()
  final String variableFont;
  @override
  final String? backgroundImage;
  @override
  @JsonKey()
  final ColorOption backgroundColorOption;
  @override
  @JsonKey()
  final ImageAttribute backgroundAttribute;
  final Map<String, ChoiceLineDesignPreset> _choiceLinePresetMap;
  @override
  @JsonKey()
  Map<String, ChoiceLineDesignPreset> get choiceLinePresetMap {
    if (_choiceLinePresetMap is EqualUnmodifiableMapView)
      return _choiceLinePresetMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_choiceLinePresetMap);
  }

  final Map<String, ChoiceNodeDesignPreset> _choiceNodePresetMap;
  @override
  @JsonKey()
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap {
    if (_choiceNodePresetMap is EqualUnmodifiableMapView)
      return _choiceNodePresetMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_choiceNodePresetMap);
  }

  @override
  @JsonKey()
  final double marginVertical;

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlatformDesignSettingCopyWith<_PlatformDesignSetting> get copyWith =>
      __$PlatformDesignSettingCopyWithImpl<_PlatformDesignSetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlatformDesignSettingToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlatformDesignSetting &&
            (identical(other.variableFont, variableFont) ||
                other.variableFont == variableFont) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.backgroundColorOption, backgroundColorOption) ||
                other.backgroundColorOption == backgroundColorOption) &&
            (identical(other.backgroundAttribute, backgroundAttribute) ||
                other.backgroundAttribute == backgroundAttribute) &&
            const DeepCollectionEquality()
                .equals(other._choiceLinePresetMap, _choiceLinePresetMap) &&
            const DeepCollectionEquality()
                .equals(other._choiceNodePresetMap, _choiceNodePresetMap) &&
            (identical(other.marginVertical, marginVertical) ||
                other.marginVertical == marginVertical));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      variableFont,
      backgroundImage,
      backgroundColorOption,
      backgroundAttribute,
      const DeepCollectionEquality().hash(_choiceLinePresetMap),
      const DeepCollectionEquality().hash(_choiceNodePresetMap),
      marginVertical);

  @override
  String toString() {
    return 'PlatformDesignSetting(variableFont: $variableFont, backgroundImage: $backgroundImage, backgroundColorOption: $backgroundColorOption, backgroundAttribute: $backgroundAttribute, choiceLinePresetMap: $choiceLinePresetMap, choiceNodePresetMap: $choiceNodePresetMap, marginVertical: $marginVertical)';
  }
}

/// @nodoc
abstract mixin class _$PlatformDesignSettingCopyWith<$Res>
    implements $PlatformDesignSettingCopyWith<$Res> {
  factory _$PlatformDesignSettingCopyWith(_PlatformDesignSetting value,
          $Res Function(_PlatformDesignSetting) _then) =
      __$PlatformDesignSettingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String variableFont,
      String? backgroundImage,
      ColorOption backgroundColorOption,
      ImageAttribute backgroundAttribute,
      Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
      Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
      double marginVertical});

  @override
  $ColorOptionCopyWith<$Res> get backgroundColorOption;
}

/// @nodoc
class __$PlatformDesignSettingCopyWithImpl<$Res>
    implements _$PlatformDesignSettingCopyWith<$Res> {
  __$PlatformDesignSettingCopyWithImpl(this._self, this._then);

  final _PlatformDesignSetting _self;
  final $Res Function(_PlatformDesignSetting) _then;

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? variableFont = null,
    Object? backgroundImage = freezed,
    Object? backgroundColorOption = null,
    Object? backgroundAttribute = null,
    Object? choiceLinePresetMap = null,
    Object? choiceNodePresetMap = null,
    Object? marginVertical = null,
  }) {
    return _then(_PlatformDesignSetting(
      variableFont: null == variableFont
          ? _self.variableFont
          : variableFont // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: freezed == backgroundImage
          ? _self.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorOption: null == backgroundColorOption
          ? _self.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      backgroundAttribute: null == backgroundAttribute
          ? _self.backgroundAttribute
          : backgroundAttribute // ignore: cast_nullable_to_non_nullable
              as ImageAttribute,
      choiceLinePresetMap: null == choiceLinePresetMap
          ? _self._choiceLinePresetMap
          : choiceLinePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceLineDesignPreset>,
      choiceNodePresetMap: null == choiceNodePresetMap
          ? _self._choiceNodePresetMap
          : choiceNodePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceNodeDesignPreset>,
      marginVertical: null == marginVertical
          ? _self.marginVertical
          : marginVertical // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get backgroundColorOption {
    return $ColorOptionCopyWith<$Res>(_self.backgroundColorOption, (value) {
      return _then(_self.copyWith(backgroundColorOption: value));
    });
  }
}

// dart format on
