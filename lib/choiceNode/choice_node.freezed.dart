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
  bool get isCard => throw _privateConstructorUsedError;
  bool get isRound => throw _privateConstructorUsedError;
  bool get isOccupySpace => throw _privateConstructorUsedError;
  bool get maximizingImage => throw _privateConstructorUsedError;
  bool get hideTitle => throw _privateConstructorUsedError;
  int get imagePosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceNodeDesignCopyWith<ChoiceNodeDesign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceNodeDesignCopyWith<$Res> {
  factory $ChoiceNodeDesignCopyWith(
          ChoiceNodeDesign value, $Res Function(ChoiceNodeDesign) then) =
      _$ChoiceNodeDesignCopyWithImpl<$Res>;
  $Res call(
      {bool isCard,
      bool isRound,
      bool isOccupySpace,
      bool maximizingImage,
      bool hideTitle,
      int imagePosition});
}

/// @nodoc
class _$ChoiceNodeDesignCopyWithImpl<$Res>
    implements $ChoiceNodeDesignCopyWith<$Res> {
  _$ChoiceNodeDesignCopyWithImpl(this._value, this._then);

  final ChoiceNodeDesign _value;
  // ignore: unused_field
  final $Res Function(ChoiceNodeDesign) _then;

  @override
  $Res call({
    Object? isCard = freezed,
    Object? isRound = freezed,
    Object? isOccupySpace = freezed,
    Object? maximizingImage = freezed,
    Object? hideTitle = freezed,
    Object? imagePosition = freezed,
  }) {
    return _then(_value.copyWith(
      isCard: isCard == freezed
          ? _value.isCard
          : isCard // ignore: cast_nullable_to_non_nullable
              as bool,
      isRound: isRound == freezed
          ? _value.isRound
          : isRound // ignore: cast_nullable_to_non_nullable
              as bool,
      isOccupySpace: isOccupySpace == freezed
          ? _value.isOccupySpace
          : isOccupySpace // ignore: cast_nullable_to_non_nullable
              as bool,
      maximizingImage: maximizingImage == freezed
          ? _value.maximizingImage
          : maximizingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      hideTitle: hideTitle == freezed
          ? _value.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePosition: imagePosition == freezed
          ? _value.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ChoiceNodeDesignCopyWith<$Res>
    implements $ChoiceNodeDesignCopyWith<$Res> {
  factory _$$_ChoiceNodeDesignCopyWith(
          _$_ChoiceNodeDesign value, $Res Function(_$_ChoiceNodeDesign) then) =
      __$$_ChoiceNodeDesignCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isCard,
      bool isRound,
      bool isOccupySpace,
      bool maximizingImage,
      bool hideTitle,
      int imagePosition});
}

/// @nodoc
class __$$_ChoiceNodeDesignCopyWithImpl<$Res>
    extends _$ChoiceNodeDesignCopyWithImpl<$Res>
    implements _$$_ChoiceNodeDesignCopyWith<$Res> {
  __$$_ChoiceNodeDesignCopyWithImpl(
      _$_ChoiceNodeDesign _value, $Res Function(_$_ChoiceNodeDesign) _then)
      : super(_value, (v) => _then(v as _$_ChoiceNodeDesign));

  @override
  _$_ChoiceNodeDesign get _value => super._value as _$_ChoiceNodeDesign;

  @override
  $Res call({
    Object? isCard = freezed,
    Object? isRound = freezed,
    Object? isOccupySpace = freezed,
    Object? maximizingImage = freezed,
    Object? hideTitle = freezed,
    Object? imagePosition = freezed,
  }) {
    return _then(_$_ChoiceNodeDesign(
      isCard: isCard == freezed
          ? _value.isCard
          : isCard // ignore: cast_nullable_to_non_nullable
              as bool,
      isRound: isRound == freezed
          ? _value.isRound
          : isRound // ignore: cast_nullable_to_non_nullable
              as bool,
      isOccupySpace: isOccupySpace == freezed
          ? _value.isOccupySpace
          : isOccupySpace // ignore: cast_nullable_to_non_nullable
              as bool,
      maximizingImage: maximizingImage == freezed
          ? _value.maximizingImage
          : maximizingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      hideTitle: hideTitle == freezed
          ? _value.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePosition: imagePosition == freezed
          ? _value.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChoiceNodeDesign implements _ChoiceNodeDesign {
  _$_ChoiceNodeDesign(
      {this.isCard = true,
      this.isRound = true,
      this.isOccupySpace = true,
      this.maximizingImage = false,
      this.hideTitle = false,
      this.imagePosition = 0});

  factory _$_ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceNodeDesignFromJson(json);

  @override
  @JsonKey()
  final bool isCard;
  @override
  @JsonKey()
  final bool isRound;
  @override
  @JsonKey()
  final bool isOccupySpace;
  @override
  @JsonKey()
  final bool maximizingImage;
  @override
  @JsonKey()
  final bool hideTitle;
  @override
  @JsonKey()
  final int imagePosition;

  @override
  String toString() {
    return 'ChoiceNodeDesign(isCard: $isCard, isRound: $isRound, isOccupySpace: $isOccupySpace, maximizingImage: $maximizingImage, hideTitle: $hideTitle, imagePosition: $imagePosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceNodeDesign &&
            const DeepCollectionEquality().equals(other.isCard, isCard) &&
            const DeepCollectionEquality().equals(other.isRound, isRound) &&
            const DeepCollectionEquality()
                .equals(other.isOccupySpace, isOccupySpace) &&
            const DeepCollectionEquality()
                .equals(other.maximizingImage, maximizingImage) &&
            const DeepCollectionEquality().equals(other.hideTitle, hideTitle) &&
            const DeepCollectionEquality()
                .equals(other.imagePosition, imagePosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isCard),
      const DeepCollectionEquality().hash(isRound),
      const DeepCollectionEquality().hash(isOccupySpace),
      const DeepCollectionEquality().hash(maximizingImage),
      const DeepCollectionEquality().hash(hideTitle),
      const DeepCollectionEquality().hash(imagePosition));

  @JsonKey(ignore: true)
  @override
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
      {final bool isCard,
      final bool isRound,
      final bool isOccupySpace,
      final bool maximizingImage,
      final bool hideTitle,
      final int imagePosition}) = _$_ChoiceNodeDesign;

  factory _ChoiceNodeDesign.fromJson(Map<String, dynamic> json) =
      _$_ChoiceNodeDesign.fromJson;

  @override
  bool get isCard;
  @override
  bool get isRound;
  @override
  bool get isOccupySpace;
  @override
  bool get maximizingImage;
  @override
  bool get hideTitle;
  @override
  int get imagePosition;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceNodeDesignCopyWith<_$_ChoiceNodeDesign> get copyWith =>
      throw _privateConstructorUsedError;
}
