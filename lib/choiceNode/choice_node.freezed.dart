// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceNodeOption _$ChoiceNodeOptionFromJson(Map<String, dynamic> json) {
  return _ChoiceNodeDesign.fromJson(json);
}

/// @nodoc
mixin _$ChoiceNodeOption {
  bool get isOccupySpace => throw _privateConstructorUsedError;
  bool get hideAsResult => throw _privateConstructorUsedError;
  bool get showAsResult => throw _privateConstructorUsedError;
  bool get showAsSlider => throw _privateConstructorUsedError;
  String get presetName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceNodeOptionCopyWith<ChoiceNodeOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceNodeOptionCopyWith<$Res> {
  factory $ChoiceNodeOptionCopyWith(
          ChoiceNodeOption value, $Res Function(ChoiceNodeOption) then) =
      _$ChoiceNodeOptionCopyWithImpl<$Res, ChoiceNodeOption>;
  @useResult
  $Res call(
      {bool isOccupySpace,
      bool hideAsResult,
      bool showAsResult,
      bool showAsSlider,
      String presetName});
}

/// @nodoc
class _$ChoiceNodeOptionCopyWithImpl<$Res, $Val extends ChoiceNodeOption>
    implements $ChoiceNodeOptionCopyWith<$Res> {
  _$ChoiceNodeOptionCopyWithImpl(this._value, this._then);

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
    Object? showAsSlider = null,
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
      showAsSlider: null == showAsSlider
          ? _value.showAsSlider
          : showAsSlider // ignore: cast_nullable_to_non_nullable
              as bool,
      presetName: null == presetName
          ? _value.presetName
          : presetName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceNodeDesignImplCopyWith<$Res>
    implements $ChoiceNodeOptionCopyWith<$Res> {
  factory _$$ChoiceNodeDesignImplCopyWith(_$ChoiceNodeDesignImpl value,
          $Res Function(_$ChoiceNodeDesignImpl) then) =
      __$$ChoiceNodeDesignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOccupySpace,
      bool hideAsResult,
      bool showAsResult,
      bool showAsSlider,
      String presetName});
}

/// @nodoc
class __$$ChoiceNodeDesignImplCopyWithImpl<$Res>
    extends _$ChoiceNodeOptionCopyWithImpl<$Res, _$ChoiceNodeDesignImpl>
    implements _$$ChoiceNodeDesignImplCopyWith<$Res> {
  __$$ChoiceNodeDesignImplCopyWithImpl(_$ChoiceNodeDesignImpl _value,
      $Res Function(_$ChoiceNodeDesignImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOccupySpace = null,
    Object? hideAsResult = null,
    Object? showAsResult = null,
    Object? showAsSlider = null,
    Object? presetName = null,
  }) {
    return _then(_$ChoiceNodeDesignImpl(
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
      showAsSlider: null == showAsSlider
          ? _value.showAsSlider
          : showAsSlider // ignore: cast_nullable_to_non_nullable
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
class _$ChoiceNodeDesignImpl implements _ChoiceNodeDesign {
  _$ChoiceNodeDesignImpl(
      {this.isOccupySpace = false,
      this.hideAsResult = false,
      this.showAsResult = false,
      this.showAsSlider = false,
      this.presetName = 'default'});

  factory _$ChoiceNodeDesignImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceNodeDesignImplFromJson(json);

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
  final String presetName;

  @override
  String toString() {
    return 'ChoiceNodeOption(isOccupySpace: $isOccupySpace, hideAsResult: $hideAsResult, showAsResult: $showAsResult, showAsSlider: $showAsSlider, presetName: $presetName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceNodeDesignImpl &&
            (identical(other.isOccupySpace, isOccupySpace) ||
                other.isOccupySpace == isOccupySpace) &&
            (identical(other.hideAsResult, hideAsResult) ||
                other.hideAsResult == hideAsResult) &&
            (identical(other.showAsResult, showAsResult) ||
                other.showAsResult == showAsResult) &&
            (identical(other.showAsSlider, showAsSlider) ||
                other.showAsSlider == showAsSlider) &&
            (identical(other.presetName, presetName) ||
                other.presetName == presetName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isOccupySpace, hideAsResult,
      showAsResult, showAsSlider, presetName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceNodeDesignImplCopyWith<_$ChoiceNodeDesignImpl> get copyWith =>
      __$$ChoiceNodeDesignImplCopyWithImpl<_$ChoiceNodeDesignImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceNodeDesignImplToJson(
      this,
    );
  }
}

abstract class _ChoiceNodeDesign implements ChoiceNodeOption {
  factory _ChoiceNodeDesign(
      {final bool isOccupySpace,
      final bool hideAsResult,
      final bool showAsResult,
      final bool showAsSlider,
      final String presetName}) = _$ChoiceNodeDesignImpl;

  factory _ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =
      _$ChoiceNodeDesignImpl.fromJson;

  @override
  bool get isOccupySpace;
  @override
  bool get hideAsResult;
  @override
  bool get showAsResult;
  @override
  bool get showAsSlider;
  @override
  String get presetName;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceNodeDesignImplCopyWith<_$ChoiceNodeDesignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
