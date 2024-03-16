// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceLineDesignPreset _$ChoiceLineDesignPresetFromJson(
    Map<String, dynamic> json) {
  return _ChoiceLineDesignPreset.fromJson(json);
}

/// @nodoc
mixin _$ChoiceLineDesignPreset {
  String get name => throw _privateConstructorUsedError;
  ColorOption get backgroundColorOption => throw _privateConstructorUsedError;
  String? get backgroundImageString => throw _privateConstructorUsedError;
  bool get alwaysVisibleLine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceLineDesignPresetCopyWith<ChoiceLineDesignPreset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceLineDesignPresetCopyWith<$Res> {
  factory $ChoiceLineDesignPresetCopyWith(ChoiceLineDesignPreset value,
          $Res Function(ChoiceLineDesignPreset) then) =
      _$ChoiceLineDesignPresetCopyWithImpl<$Res, ChoiceLineDesignPreset>;
  @useResult
  $Res call(
      {String name,
      ColorOption backgroundColorOption,
      String? backgroundImageString,
      bool alwaysVisibleLine});

  $ColorOptionCopyWith<$Res> get backgroundColorOption;
}

/// @nodoc
class _$ChoiceLineDesignPresetCopyWithImpl<$Res,
        $Val extends ChoiceLineDesignPreset>
    implements $ChoiceLineDesignPresetCopyWith<$Res> {
  _$ChoiceLineDesignPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColorOption = null,
    Object? backgroundImageString = freezed,
    Object? alwaysVisibleLine = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColorOption: null == backgroundColorOption
          ? _value.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      backgroundImageString: freezed == backgroundImageString
          ? _value.backgroundImageString
          : backgroundImageString // ignore: cast_nullable_to_non_nullable
              as String?,
      alwaysVisibleLine: null == alwaysVisibleLine
          ? _value.alwaysVisibleLine
          : alwaysVisibleLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get backgroundColorOption {
    return $ColorOptionCopyWith<$Res>(_value.backgroundColorOption, (value) {
      return _then(_value.copyWith(backgroundColorOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceLineDesignPresetImplCopyWith<$Res>
    implements $ChoiceLineDesignPresetCopyWith<$Res> {
  factory _$$ChoiceLineDesignPresetImplCopyWith(
          _$ChoiceLineDesignPresetImpl value,
          $Res Function(_$ChoiceLineDesignPresetImpl) then) =
      __$$ChoiceLineDesignPresetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      ColorOption backgroundColorOption,
      String? backgroundImageString,
      bool alwaysVisibleLine});

  @override
  $ColorOptionCopyWith<$Res> get backgroundColorOption;
}

/// @nodoc
class __$$ChoiceLineDesignPresetImplCopyWithImpl<$Res>
    extends _$ChoiceLineDesignPresetCopyWithImpl<$Res,
        _$ChoiceLineDesignPresetImpl>
    implements _$$ChoiceLineDesignPresetImplCopyWith<$Res> {
  __$$ChoiceLineDesignPresetImplCopyWithImpl(
      _$ChoiceLineDesignPresetImpl _value,
      $Res Function(_$ChoiceLineDesignPresetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColorOption = null,
    Object? backgroundImageString = freezed,
    Object? alwaysVisibleLine = null,
  }) {
    return _then(_$ChoiceLineDesignPresetImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColorOption: null == backgroundColorOption
          ? _value.backgroundColorOption
          : backgroundColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      backgroundImageString: freezed == backgroundImageString
          ? _value.backgroundImageString
          : backgroundImageString // ignore: cast_nullable_to_non_nullable
              as String?,
      alwaysVisibleLine: null == alwaysVisibleLine
          ? _value.alwaysVisibleLine
          : alwaysVisibleLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChoiceLineDesignPresetImpl implements _ChoiceLineDesignPreset {
  const _$ChoiceLineDesignPresetImpl(
      {required this.name,
      this.backgroundColorOption = const ColorOption(color: 0),
      this.backgroundImageString,
      this.alwaysVisibleLine = false});

  factory _$ChoiceLineDesignPresetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceLineDesignPresetImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final ColorOption backgroundColorOption;
  @override
  final String? backgroundImageString;
  @override
  @JsonKey()
  final bool alwaysVisibleLine;

  @override
  String toString() {
    return 'ChoiceLineDesignPreset(name: $name, backgroundColorOption: $backgroundColorOption, backgroundImageString: $backgroundImageString, alwaysVisibleLine: $alwaysVisibleLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceLineDesignPresetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColorOption, backgroundColorOption) ||
                other.backgroundColorOption == backgroundColorOption) &&
            (identical(other.backgroundImageString, backgroundImageString) ||
                other.backgroundImageString == backgroundImageString) &&
            (identical(other.alwaysVisibleLine, alwaysVisibleLine) ||
                other.alwaysVisibleLine == alwaysVisibleLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundColorOption,
      backgroundImageString, alwaysVisibleLine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceLineDesignPresetImplCopyWith<_$ChoiceLineDesignPresetImpl>
      get copyWith => __$$ChoiceLineDesignPresetImplCopyWithImpl<
          _$ChoiceLineDesignPresetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceLineDesignPresetImplToJson(
      this,
    );
  }
}

abstract class _ChoiceLineDesignPreset implements ChoiceLineDesignPreset {
  const factory _ChoiceLineDesignPreset(
      {required final String name,
      final ColorOption backgroundColorOption,
      final String? backgroundImageString,
      final bool alwaysVisibleLine}) = _$ChoiceLineDesignPresetImpl;

  factory _ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =
      _$ChoiceLineDesignPresetImpl.fromJson;

  @override
  String get name;
  @override
  ColorOption get backgroundColorOption;
  @override
  String? get backgroundImageString;
  @override
  bool get alwaysVisibleLine;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceLineDesignPresetImplCopyWith<_$ChoiceLineDesignPresetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
