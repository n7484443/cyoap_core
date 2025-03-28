// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlatformDesignSetting _$PlatformDesignSettingFromJson(
    Map<String, dynamic> json) {
  return _PlatformDesignSetting.fromJson(json);
}

/// @nodoc
mixin _$PlatformDesignSetting {
  String get variableFont => throw _privateConstructorUsedError;
  String? get backgroundImage => throw _privateConstructorUsedError;
  ColorOption get backgroundColorOption => throw _privateConstructorUsedError;
  ImageAttribute get backgroundAttribute => throw _privateConstructorUsedError;
  Map<String, ChoiceLineDesignPreset> get choiceLinePresetMap =>
      throw _privateConstructorUsedError;
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap =>
      throw _privateConstructorUsedError;
  double get marginVertical => throw _privateConstructorUsedError;

  /// Serializes this PlatformDesignSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlatformDesignSettingCopyWith<PlatformDesignSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformDesignSettingCopyWith<$Res> {
  factory $PlatformDesignSettingCopyWith(PlatformDesignSetting value,
          $Res Function(PlatformDesignSetting) then) =
      _$PlatformDesignSettingCopyWithImpl<$Res, PlatformDesignSetting>;
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
class _$PlatformDesignSettingCopyWithImpl<$Res,
        $Val extends PlatformDesignSetting>
    implements $PlatformDesignSettingCopyWith<$Res> {
  _$PlatformDesignSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      variableFont: null == variableFont
          ? _value.variableFont
          : variableFont // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorOption: null == backgroundColorOption
          ? _value.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      backgroundAttribute: null == backgroundAttribute
          ? _value.backgroundAttribute
          : backgroundAttribute // ignore: cast_nullable_to_non_nullable
              as ImageAttribute,
      choiceLinePresetMap: null == choiceLinePresetMap
          ? _value.choiceLinePresetMap
          : choiceLinePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceLineDesignPreset>,
      choiceNodePresetMap: null == choiceNodePresetMap
          ? _value.choiceNodePresetMap
          : choiceNodePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceNodeDesignPreset>,
      marginVertical: null == marginVertical
          ? _value.marginVertical
          : marginVertical // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get backgroundColorOption {
    return $ColorOptionCopyWith<$Res>(_value.backgroundColorOption, (value) {
      return _then(_value.copyWith(backgroundColorOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlatformDesignSettingImplCopyWith<$Res>
    implements $PlatformDesignSettingCopyWith<$Res> {
  factory _$$PlatformDesignSettingImplCopyWith(
          _$PlatformDesignSettingImpl value,
          $Res Function(_$PlatformDesignSettingImpl) then) =
      __$$PlatformDesignSettingImplCopyWithImpl<$Res>;
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
class __$$PlatformDesignSettingImplCopyWithImpl<$Res>
    extends _$PlatformDesignSettingCopyWithImpl<$Res,
        _$PlatformDesignSettingImpl>
    implements _$$PlatformDesignSettingImplCopyWith<$Res> {
  __$$PlatformDesignSettingImplCopyWithImpl(_$PlatformDesignSettingImpl _value,
      $Res Function(_$PlatformDesignSettingImpl) _then)
      : super(_value, _then);

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
    return _then(_$PlatformDesignSettingImpl(
      variableFont: null == variableFont
          ? _value.variableFont
          : variableFont // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColorOption: null == backgroundColorOption
          ? _value.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      backgroundAttribute: null == backgroundAttribute
          ? _value.backgroundAttribute
          : backgroundAttribute // ignore: cast_nullable_to_non_nullable
              as ImageAttribute,
      choiceLinePresetMap: null == choiceLinePresetMap
          ? _value._choiceLinePresetMap
          : choiceLinePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceLineDesignPreset>,
      choiceNodePresetMap: null == choiceNodePresetMap
          ? _value._choiceNodePresetMap
          : choiceNodePresetMap // ignore: cast_nullable_to_non_nullable
              as Map<String, ChoiceNodeDesignPreset>,
      marginVertical: null == marginVertical
          ? _value.marginVertical
          : marginVertical // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformDesignSettingImpl extends _PlatformDesignSetting {
  _$PlatformDesignSettingImpl(
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

  factory _$PlatformDesignSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformDesignSettingImplFromJson(json);

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

  @override
  String toString() {
    return 'PlatformDesignSetting(variableFont: $variableFont, backgroundImage: $backgroundImage, backgroundColorOption: $backgroundColorOption, backgroundAttribute: $backgroundAttribute, choiceLinePresetMap: $choiceLinePresetMap, choiceNodePresetMap: $choiceNodePresetMap, marginVertical: $marginVertical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformDesignSettingImpl &&
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

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformDesignSettingImplCopyWith<_$PlatformDesignSettingImpl>
      get copyWith => __$$PlatformDesignSettingImplCopyWithImpl<
          _$PlatformDesignSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformDesignSettingImplToJson(
      this,
    );
  }
}

abstract class _PlatformDesignSetting extends PlatformDesignSetting {
  factory _PlatformDesignSetting(
      {final String variableFont,
      final String? backgroundImage,
      final ColorOption backgroundColorOption,
      final ImageAttribute backgroundAttribute,
      final Map<String, ChoiceLineDesignPreset> choiceLinePresetMap,
      final Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
      final double marginVertical}) = _$PlatformDesignSettingImpl;
  _PlatformDesignSetting._() : super._();

  factory _PlatformDesignSetting.fromJson(Map<String, dynamic> json) =
      _$PlatformDesignSettingImpl.fromJson;

  @override
  String get variableFont;
  @override
  String? get backgroundImage;
  @override
  ColorOption get backgroundColorOption;
  @override
  ImageAttribute get backgroundAttribute;
  @override
  Map<String, ChoiceLineDesignPreset> get choiceLinePresetMap;
  @override
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap;
  @override
  double get marginVertical;

  /// Create a copy of PlatformDesignSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlatformDesignSettingImplCopyWith<_$PlatformDesignSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
