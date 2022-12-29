// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choice_line_preset.dart';

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
  int? get backgroundColor => throw _privateConstructorUsedError;
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
      int? backgroundColor,
      String? backgroundImageString,
      bool alwaysVisibleLine});
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
    Object? backgroundColor = freezed,
    Object? backgroundImageString = freezed,
    Object? alwaysVisibleLine = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as int?,
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
}

/// @nodoc
abstract class _$$_ChoiceLineDesignPresetCopyWith<$Res>
    implements $ChoiceLineDesignPresetCopyWith<$Res> {
  factory _$$_ChoiceLineDesignPresetCopyWith(_$_ChoiceLineDesignPreset value,
          $Res Function(_$_ChoiceLineDesignPreset) then) =
      __$$_ChoiceLineDesignPresetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int? backgroundColor,
      String? backgroundImageString,
      bool alwaysVisibleLine});
}

/// @nodoc
class __$$_ChoiceLineDesignPresetCopyWithImpl<$Res>
    extends _$ChoiceLineDesignPresetCopyWithImpl<$Res,
        _$_ChoiceLineDesignPreset>
    implements _$$_ChoiceLineDesignPresetCopyWith<$Res> {
  __$$_ChoiceLineDesignPresetCopyWithImpl(_$_ChoiceLineDesignPreset _value,
      $Res Function(_$_ChoiceLineDesignPreset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? backgroundColor = freezed,
    Object? backgroundImageString = freezed,
    Object? alwaysVisibleLine = null,
  }) {
    return _then(_$_ChoiceLineDesignPreset(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as int?,
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

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ChoiceLineDesignPreset implements _ChoiceLineDesignPreset {
  const _$_ChoiceLineDesignPreset(
      {required this.name,
      this.backgroundColor,
      this.backgroundImageString,
      this.alwaysVisibleLine = false});

  factory _$_ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceLineDesignPresetFromJson(json);

  @override
  final String name;
  @override
  final int? backgroundColor;
  @override
  final String? backgroundImageString;
  @override
  @JsonKey()
  final bool alwaysVisibleLine;

  @override
  String toString() {
    return 'ChoiceLineDesignPreset(name: $name, backgroundColor: $backgroundColor, backgroundImageString: $backgroundImageString, alwaysVisibleLine: $alwaysVisibleLine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceLineDesignPreset &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.backgroundImageString, backgroundImageString) ||
                other.backgroundImageString == backgroundImageString) &&
            (identical(other.alwaysVisibleLine, alwaysVisibleLine) ||
                other.alwaysVisibleLine == alwaysVisibleLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, backgroundColor,
      backgroundImageString, alwaysVisibleLine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceLineDesignPresetCopyWith<_$_ChoiceLineDesignPreset> get copyWith =>
      __$$_ChoiceLineDesignPresetCopyWithImpl<_$_ChoiceLineDesignPreset>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceLineDesignPresetToJson(
      this,
    );
  }
}

abstract class _ChoiceLineDesignPreset implements ChoiceLineDesignPreset {
  const factory _ChoiceLineDesignPreset(
      {required final String name,
      final int? backgroundColor,
      final String? backgroundImageString,
      final bool alwaysVisibleLine}) = _$_ChoiceLineDesignPreset;

  factory _ChoiceLineDesignPreset.fromJson(Map<String, dynamic> json) =
      _$_ChoiceLineDesignPreset.fromJson;

  @override
  String get name;
  @override
  int? get backgroundColor;
  @override
  String? get backgroundImageString;
  @override
  bool get alwaysVisibleLine;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceLineDesignPresetCopyWith<_$_ChoiceLineDesignPreset> get copyWith =>
      throw _privateConstructorUsedError;
}
