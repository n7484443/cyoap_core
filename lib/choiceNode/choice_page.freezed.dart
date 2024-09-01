// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoicePageOption _$ChoicePageOptionFromJson(Map<String, dynamic> json) {
  return _ChoicePageOption.fromJson(json);
}

/// @nodoc
mixin _$ChoicePageOption {
  bool get setEntireAsOneLine => throw _privateConstructorUsedError;

  /// Serializes this ChoicePageOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoicePageOptionCopyWith<ChoicePageOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicePageOptionCopyWith<$Res> {
  factory $ChoicePageOptionCopyWith(
          ChoicePageOption value, $Res Function(ChoicePageOption) then) =
      _$ChoicePageOptionCopyWithImpl<$Res, ChoicePageOption>;
  @useResult
  $Res call({bool setEntireAsOneLine});
}

/// @nodoc
class _$ChoicePageOptionCopyWithImpl<$Res, $Val extends ChoicePageOption>
    implements $ChoicePageOptionCopyWith<$Res> {
  _$ChoicePageOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setEntireAsOneLine = null,
  }) {
    return _then(_value.copyWith(
      setEntireAsOneLine: null == setEntireAsOneLine
          ? _value.setEntireAsOneLine
          : setEntireAsOneLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoicePageOptionImplCopyWith<$Res>
    implements $ChoicePageOptionCopyWith<$Res> {
  factory _$$ChoicePageOptionImplCopyWith(_$ChoicePageOptionImpl value,
          $Res Function(_$ChoicePageOptionImpl) then) =
      __$$ChoicePageOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool setEntireAsOneLine});
}

/// @nodoc
class __$$ChoicePageOptionImplCopyWithImpl<$Res>
    extends _$ChoicePageOptionCopyWithImpl<$Res, _$ChoicePageOptionImpl>
    implements _$$ChoicePageOptionImplCopyWith<$Res> {
  __$$ChoicePageOptionImplCopyWithImpl(_$ChoicePageOptionImpl _value,
      $Res Function(_$ChoicePageOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setEntireAsOneLine = null,
  }) {
    return _then(_$ChoicePageOptionImpl(
      setEntireAsOneLine: null == setEntireAsOneLine
          ? _value.setEntireAsOneLine
          : setEntireAsOneLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoicePageOptionImpl implements _ChoicePageOption {
  _$ChoicePageOptionImpl({this.setEntireAsOneLine = false});

  factory _$ChoicePageOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoicePageOptionImplFromJson(json);

  @override
  @JsonKey()
  final bool setEntireAsOneLine;

  @override
  String toString() {
    return 'ChoicePageOption(setEntireAsOneLine: $setEntireAsOneLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoicePageOptionImpl &&
            (identical(other.setEntireAsOneLine, setEntireAsOneLine) ||
                other.setEntireAsOneLine == setEntireAsOneLine));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, setEntireAsOneLine);

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoicePageOptionImplCopyWith<_$ChoicePageOptionImpl> get copyWith =>
      __$$ChoicePageOptionImplCopyWithImpl<_$ChoicePageOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoicePageOptionImplToJson(
      this,
    );
  }
}

abstract class _ChoicePageOption implements ChoicePageOption {
  factory _ChoicePageOption({final bool setEntireAsOneLine}) =
      _$ChoicePageOptionImpl;

  factory _ChoicePageOption.fromJson(Map<String, dynamic> json) =
      _$ChoicePageOptionImpl.fromJson;

  @override
  bool get setEntireAsOneLine;

  /// Create a copy of ChoicePageOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoicePageOptionImplCopyWith<_$ChoicePageOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
