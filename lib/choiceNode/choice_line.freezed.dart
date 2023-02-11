// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceLineOption _$ChoiceLineOptionFromJson(Map<String, dynamic> json) {
  return _ChoiceLineOption.fromJson(json);
}

/// @nodoc
mixin _$ChoiceLineOption {
  int get maxSelect => throw _privateConstructorUsedError;
  String get presetName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceLineOptionCopyWith<ChoiceLineOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceLineOptionCopyWith<$Res> {
  factory $ChoiceLineOptionCopyWith(
          ChoiceLineOption value, $Res Function(ChoiceLineOption) then) =
      _$ChoiceLineOptionCopyWithImpl<$Res, ChoiceLineOption>;
  @useResult
  $Res call({int maxSelect, String presetName, String? name});
}

/// @nodoc
class _$ChoiceLineOptionCopyWithImpl<$Res, $Val extends ChoiceLineOption>
    implements $ChoiceLineOptionCopyWith<$Res> {
  _$ChoiceLineOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxSelect = null,
    Object? presetName = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      presetName: null == presetName
          ? _value.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoiceLineOptionCopyWith<$Res>
    implements $ChoiceLineOptionCopyWith<$Res> {
  factory _$$_ChoiceLineOptionCopyWith(
          _$_ChoiceLineOption value, $Res Function(_$_ChoiceLineOption) then) =
      __$$_ChoiceLineOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int maxSelect, String presetName, String? name});
}

/// @nodoc
class __$$_ChoiceLineOptionCopyWithImpl<$Res>
    extends _$ChoiceLineOptionCopyWithImpl<$Res, _$_ChoiceLineOption>
    implements _$$_ChoiceLineOptionCopyWith<$Res> {
  __$$_ChoiceLineOptionCopyWithImpl(
      _$_ChoiceLineOption _value, $Res Function(_$_ChoiceLineOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxSelect = null,
    Object? presetName = null,
    Object? name = freezed,
  }) {
    return _then(_$_ChoiceLineOption(
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      presetName: null == presetName
          ? _value.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChoiceLineOption implements _ChoiceLineOption {
  const _$_ChoiceLineOption(
      {this.maxSelect = -1, this.presetName = 'default', this.name});

  factory _$_ChoiceLineOption.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceLineOptionFromJson(json);

  @override
  @JsonKey()
  final int maxSelect;
  @override
  @JsonKey()
  final String presetName;
  @override
  final String? name;

  @override
  String toString() {
    return 'ChoiceLineOption(maxSelect: $maxSelect, presetName: $presetName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceLineOption &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxSelect, presetName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceLineOptionCopyWith<_$_ChoiceLineOption> get copyWith =>
      __$$_ChoiceLineOptionCopyWithImpl<_$_ChoiceLineOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceLineOptionToJson(
      this,
    );
  }
}

abstract class _ChoiceLineOption implements ChoiceLineOption {
  const factory _ChoiceLineOption(
      {final int maxSelect,
      final String presetName,
      final String? name}) = _$_ChoiceLineOption;

  factory _ChoiceLineOption.fromJson(Map<String, dynamic> json) =
      _$_ChoiceLineOption.fromJson;

  @override
  int get maxSelect;
  @override
  String get presetName;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceLineOptionCopyWith<_$_ChoiceLineOption> get copyWith =>
      throw _privateConstructorUsedError;
}
