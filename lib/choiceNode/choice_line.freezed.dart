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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoiceLineOption _$ChoiceLineOptionFromJson(Map<String, dynamic> json) {
  return _ChoiceLineOption.fromJson(json);
}

/// @nodoc
mixin _$ChoiceLineOption {
  int get maxSelect => throw _privateConstructorUsedError;
  bool get enableCancelFeature => throw _privateConstructorUsedError;
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
  $Res call(
      {int maxSelect,
      bool enableCancelFeature,
      String presetName,
      String? name});
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
    Object? enableCancelFeature = null,
    Object? presetName = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      enableCancelFeature: null == enableCancelFeature
          ? _value.enableCancelFeature
          : enableCancelFeature // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$ChoiceLineOptionImplCopyWith<$Res>
    implements $ChoiceLineOptionCopyWith<$Res> {
  factory _$$ChoiceLineOptionImplCopyWith(_$ChoiceLineOptionImpl value,
          $Res Function(_$ChoiceLineOptionImpl) then) =
      __$$ChoiceLineOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maxSelect,
      bool enableCancelFeature,
      String presetName,
      String? name});
}

/// @nodoc
class __$$ChoiceLineOptionImplCopyWithImpl<$Res>
    extends _$ChoiceLineOptionCopyWithImpl<$Res, _$ChoiceLineOptionImpl>
    implements _$$ChoiceLineOptionImplCopyWith<$Res> {
  __$$ChoiceLineOptionImplCopyWithImpl(_$ChoiceLineOptionImpl _value,
      $Res Function(_$ChoiceLineOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxSelect = null,
    Object? enableCancelFeature = null,
    Object? presetName = null,
    Object? name = freezed,
  }) {
    return _then(_$ChoiceLineOptionImpl(
      maxSelect: null == maxSelect
          ? _value.maxSelect
          : maxSelect // ignore: cast_nullable_to_non_nullable
              as int,
      enableCancelFeature: null == enableCancelFeature
          ? _value.enableCancelFeature
          : enableCancelFeature // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$ChoiceLineOptionImpl implements _ChoiceLineOption {
  const _$ChoiceLineOptionImpl(
      {this.maxSelect = -1,
      this.enableCancelFeature = false,
      this.presetName = 'default',
      this.name});

  factory _$ChoiceLineOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceLineOptionImplFromJson(json);

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
  final String? name;

  @override
  String toString() {
    return 'ChoiceLineOption(maxSelect: $maxSelect, enableCancelFeature: $enableCancelFeature, presetName: $presetName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceLineOptionImpl &&
            (identical(other.maxSelect, maxSelect) ||
                other.maxSelect == maxSelect) &&
            (identical(other.enableCancelFeature, enableCancelFeature) ||
                other.enableCancelFeature == enableCancelFeature) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, maxSelect, enableCancelFeature, presetName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceLineOptionImplCopyWith<_$ChoiceLineOptionImpl> get copyWith =>
      __$$ChoiceLineOptionImplCopyWithImpl<_$ChoiceLineOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceLineOptionImplToJson(
      this,
    );
  }
}

abstract class _ChoiceLineOption implements ChoiceLineOption {
  const factory _ChoiceLineOption(
      {final int maxSelect,
      final bool enableCancelFeature,
      final String presetName,
      final String? name}) = _$ChoiceLineOptionImpl;

  factory _ChoiceLineOption.fromJson(Map<String, dynamic> json) =
      _$ChoiceLineOptionImpl.fromJson;

  @override
  int get maxSelect;
  @override
  bool get enableCancelFeature;
  @override
  String get presetName;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceLineOptionImplCopyWith<_$ChoiceLineOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
