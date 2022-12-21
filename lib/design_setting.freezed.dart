// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'design_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlatformDesignSetting _$PlatformDesignSettingFromJson(
    Map<String, dynamic> json) {
  return _PlatformDesignSetting.fromJson(json);
}

/// @nodoc
mixin _$PlatformDesignSetting {
  String get variableFont => throw _privateConstructorUsedError;
  int get colorBackground => throw _privateConstructorUsedError;
  String? get backgroundImage => throw _privateConstructorUsedError;
  ImageAttribute get backgroundAttribute => throw _privateConstructorUsedError;
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap =>
      throw _privateConstructorUsedError;
  double get marginVertical => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      int colorBackground,
      String? backgroundImage,
      ImageAttribute backgroundAttribute,
      Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
      double marginVertical});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableFont = null,
    Object? colorBackground = null,
    Object? backgroundImage = freezed,
    Object? backgroundAttribute = null,
    Object? choiceNodePresetMap = null,
    Object? marginVertical = null,
  }) {
    return _then(_value.copyWith(
      variableFont: null == variableFont
          ? _value.variableFont
          : variableFont // ignore: cast_nullable_to_non_nullable
              as String,
      colorBackground: null == colorBackground
          ? _value.colorBackground
          : colorBackground // ignore: cast_nullable_to_non_nullable
              as int,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundAttribute: null == backgroundAttribute
          ? _value.backgroundAttribute
          : backgroundAttribute // ignore: cast_nullable_to_non_nullable
              as ImageAttribute,
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
}

/// @nodoc
abstract class _$$_PlatformDesignSettingCopyWith<$Res>
    implements $PlatformDesignSettingCopyWith<$Res> {
  factory _$$_PlatformDesignSettingCopyWith(_$_PlatformDesignSetting value,
          $Res Function(_$_PlatformDesignSetting) then) =
      __$$_PlatformDesignSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String variableFont,
      int colorBackground,
      String? backgroundImage,
      ImageAttribute backgroundAttribute,
      Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
      double marginVertical});
}

/// @nodoc
class __$$_PlatformDesignSettingCopyWithImpl<$Res>
    extends _$PlatformDesignSettingCopyWithImpl<$Res, _$_PlatformDesignSetting>
    implements _$$_PlatformDesignSettingCopyWith<$Res> {
  __$$_PlatformDesignSettingCopyWithImpl(_$_PlatformDesignSetting _value,
      $Res Function(_$_PlatformDesignSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableFont = null,
    Object? colorBackground = null,
    Object? backgroundImage = freezed,
    Object? backgroundAttribute = null,
    Object? choiceNodePresetMap = null,
    Object? marginVertical = null,
  }) {
    return _then(_$_PlatformDesignSetting(
      variableFont: null == variableFont
          ? _value.variableFont
          : variableFont // ignore: cast_nullable_to_non_nullable
              as String,
      colorBackground: null == colorBackground
          ? _value.colorBackground
          : colorBackground // ignore: cast_nullable_to_non_nullable
              as int,
      backgroundImage: freezed == backgroundImage
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundAttribute: null == backgroundAttribute
          ? _value.backgroundAttribute
          : backgroundAttribute // ignore: cast_nullable_to_non_nullable
              as ImageAttribute,
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

@JsonSerializable(explicitToJson: true)
class _$_PlatformDesignSetting implements _PlatformDesignSetting {
  _$_PlatformDesignSetting(
      {this.variableFont = "notoSans",
      this.colorBackground = 0xFFFFFFFF,
      this.backgroundImage,
      this.backgroundAttribute = ImageAttribute.fit,
      final Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap = const {
        'default': ChoiceNodeDesignPreset()
      },
      this.marginVertical = 12.0})
      : _choiceNodePresetMap = choiceNodePresetMap;

  factory _$_PlatformDesignSetting.fromJson(Map<String, dynamic> json) =>
      _$$_PlatformDesignSettingFromJson(json);

  @override
  @JsonKey()
  final String variableFont;
  @override
  @JsonKey()
  final int colorBackground;
  @override
  final String? backgroundImage;
  @override
  @JsonKey()
  final ImageAttribute backgroundAttribute;
  final Map<String, ChoiceNodeDesignPreset> _choiceNodePresetMap;
  @override
  @JsonKey()
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_choiceNodePresetMap);
  }

  @override
  @JsonKey()
  final double marginVertical;

  @override
  String toString() {
    return 'PlatformDesignSetting(variableFont: $variableFont, colorBackground: $colorBackground, backgroundImage: $backgroundImage, backgroundAttribute: $backgroundAttribute, choiceNodePresetMap: $choiceNodePresetMap, marginVertical: $marginVertical)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlatformDesignSetting &&
            (identical(other.variableFont, variableFont) ||
                other.variableFont == variableFont) &&
            (identical(other.colorBackground, colorBackground) ||
                other.colorBackground == colorBackground) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage) &&
            (identical(other.backgroundAttribute, backgroundAttribute) ||
                other.backgroundAttribute == backgroundAttribute) &&
            const DeepCollectionEquality()
                .equals(other._choiceNodePresetMap, _choiceNodePresetMap) &&
            (identical(other.marginVertical, marginVertical) ||
                other.marginVertical == marginVertical));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      variableFont,
      colorBackground,
      backgroundImage,
      backgroundAttribute,
      const DeepCollectionEquality().hash(_choiceNodePresetMap),
      marginVertical);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlatformDesignSettingCopyWith<_$_PlatformDesignSetting> get copyWith =>
      __$$_PlatformDesignSettingCopyWithImpl<_$_PlatformDesignSetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlatformDesignSettingToJson(
      this,
    );
  }
}

abstract class _PlatformDesignSetting implements PlatformDesignSetting {
  factory _PlatformDesignSetting(
      {final String variableFont,
      final int colorBackground,
      final String? backgroundImage,
      final ImageAttribute backgroundAttribute,
      final Map<String, ChoiceNodeDesignPreset> choiceNodePresetMap,
      final double marginVertical}) = _$_PlatformDesignSetting;

  factory _PlatformDesignSetting.fromJson(Map<String, dynamic> json) =
      _$_PlatformDesignSetting.fromJson;

  @override
  String get variableFont;
  @override
  int get colorBackground;
  @override
  String? get backgroundImage;
  @override
  ImageAttribute get backgroundAttribute;
  @override
  Map<String, ChoiceNodeDesignPreset> get choiceNodePresetMap;
  @override
  double get marginVertical;
  @override
  @JsonKey(ignore: true)
  _$$_PlatformDesignSettingCopyWith<_$_PlatformDesignSetting> get copyWith =>
      throw _privateConstructorUsedError;
}
