// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'choice_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceNodeDesign _$ChoiceNodeDesignFromJson(Map<String, dynamic> json) {
  return _ChoiceNodeDesign.fromJson(json);
}

/// @nodoc
mixin _$ChoiceNodeDesign {
  bool get isOccupySpace => throw _privateConstructorUsedError;
  bool get hideAsResult => throw _privateConstructorUsedError;
  bool get showAsResult => throw _privateConstructorUsedError;
  String get presetName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceNodeDesignCopyWith<ChoiceNodeDesign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceNodeDesignCopyWith<$Res> {
  factory $ChoiceNodeDesignCopyWith(
          ChoiceNodeDesign value, $Res Function(ChoiceNodeDesign) then) =
      _$ChoiceNodeDesignCopyWithImpl<$Res, ChoiceNodeDesign>;
  @useResult
  $Res call(
      {bool isOccupySpace,
      bool hideAsResult,
      bool showAsResult,
      String presetName});
}

/// @nodoc
class _$ChoiceNodeDesignCopyWithImpl<$Res, $Val extends ChoiceNodeDesign>
    implements $ChoiceNodeDesignCopyWith<$Res> {
  _$ChoiceNodeDesignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOccupySpace = null,
    Object? hideAsResult = null,
    Object? showAsResult = null,
    Object? presetName = null,
  }) {
    return _then(_value.copyWith(
      isOccupySpace: null == isOccupySpace
          ? _value.isOccupySpace
          : isOccupySpace // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAsResult: null == hideAsResult
          ? _value.hideAsResult
          : hideAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      showAsResult: null == showAsResult
          ? _value.showAsResult
          : showAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _value.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoiceNodeDesignCopyWith<$Res>
    implements $ChoiceNodeDesignCopyWith<$Res> {
  factory _$$_ChoiceNodeDesignCopyWith(
          _$_ChoiceNodeDesign value, $Res Function(_$_ChoiceNodeDesign) then) =
      __$$_ChoiceNodeDesignCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOccupySpace,
      bool hideAsResult,
      bool showAsResult,
      String presetName});
}

/// @nodoc
class __$$_ChoiceNodeDesignCopyWithImpl<$Res>
    extends _$ChoiceNodeDesignCopyWithImpl<$Res, _$_ChoiceNodeDesign>
    implements _$$_ChoiceNodeDesignCopyWith<$Res> {
  __$$_ChoiceNodeDesignCopyWithImpl(
      _$_ChoiceNodeDesign _value, $Res Function(_$_ChoiceNodeDesign) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOccupySpace = null,
    Object? hideAsResult = null,
    Object? showAsResult = null,
    Object? presetName = null,
  }) {
    return _then(_$_ChoiceNodeDesign(
      isOccupySpace: null == isOccupySpace
          ? _value.isOccupySpace
          : isOccupySpace // ignore: cast_nullable_to_non_nullable
              as bool,
      hideAsResult: null == hideAsResult
          ? _value.hideAsResult
          : hideAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      showAsResult: null == showAsResult
          ? _value.showAsResult
          : showAsResult // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _value.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChoiceNodeDesign implements _ChoiceNodeDesign {
  _$_ChoiceNodeDesign(
      {this.isOccupySpace = false,
      this.hideAsResult = false,
      this.showAsResult = false,
      this.presetName = 'default'});

  factory _$_ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceNodeDesignFromJson(json);

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
  final String presetName;

  @override
  String toString() {
    return 'ChoiceNodeDesign(isOccupySpace: $isOccupySpace, hideAsResult: $hideAsResult, showAsResult: $showAsResult, presetName: $presetName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceNodeDesign &&
            (identical(other.isOccupySpace, isOccupySpace) ||
                other.isOccupySpace == isOccupySpace) &&
            (identical(other.hideAsResult, hideAsResult) ||
                other.hideAsResult == hideAsResult) &&
            (identical(other.showAsResult, showAsResult) ||
                other.showAsResult == showAsResult) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isOccupySpace, hideAsResult, showAsResult, presetName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceNodeDesignCopyWith<_$_ChoiceNodeDesign> get copyWith =>
      __$$_ChoiceNodeDesignCopyWithImpl<_$_ChoiceNodeDesign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceNodeDesignToJson(
      this,
    );
  }
}

abstract class _ChoiceNodeDesign implements ChoiceNodeDesign {
  factory _ChoiceNodeDesign(
      {final bool isOccupySpace,
      final bool hideAsResult,
      final bool showAsResult,
      final String presetName}) = _$_ChoiceNodeDesign;

  factory _ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =
      _$_ChoiceNodeDesign.fromJson;

  @override
  bool get isOccupySpace;
  @override
  bool get hideAsResult;
  @override
  bool get showAsResult;
  @override
  String get presetName;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceNodeDesignCopyWith<_$_ChoiceNodeDesign> get copyWith =>
      throw _privateConstructorUsedError;
}
