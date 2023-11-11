// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node_preset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutlineOption _$OutlineOptionFromJson(Map<String, dynamic> json) {
  return _OutlineOption.fromJson(json);
}

/// @nodoc
mixin _$OutlineOption {
  OutlineType get outlineType => throw _privateConstructorUsedError;
  ColorOption get outlineColor => throw _privateConstructorUsedError;
  double get outlinePadding => throw _privateConstructorUsedError;
  double get outlineWidth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutlineOptionCopyWith<OutlineOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutlineOptionCopyWith<$Res> {
  factory $OutlineOptionCopyWith(
          OutlineOption value, $Res Function(OutlineOption) then) =
      _$OutlineOptionCopyWithImpl<$Res, OutlineOption>;
  @useResult
  $Res call(
      {OutlineType outlineType,
      ColorOption outlineColor,
      double outlinePadding,
      double outlineWidth});

  $ColorOptionCopyWith<$Res> get outlineColor;
}

/// @nodoc
class _$OutlineOptionCopyWithImpl<$Res, $Val extends OutlineOption>
    implements $OutlineOptionCopyWith<$Res> {
  _$OutlineOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlineType = null,
    Object? outlineColor = null,
    Object? outlinePadding = null,
    Object? outlineWidth = null,
  }) {
    return _then(_value.copyWith(
      outlineType: null == outlineType
          ? _value.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineColor: null == outlineColor
          ? _value.outlineColor
          : outlineColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      outlinePadding: null == outlinePadding
          ? _value.outlinePadding
          : outlinePadding // ignore: cast_nullable_to_non_nullable
              as double,
      outlineWidth: null == outlineWidth
          ? _value.outlineWidth
          : outlineWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get outlineColor {
    return $ColorOptionCopyWith<$Res>(_value.outlineColor, (value) {
      return _then(_value.copyWith(outlineColor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OutlineOptionImplCopyWith<$Res>
    implements $OutlineOptionCopyWith<$Res> {
  factory _$$OutlineOptionImplCopyWith(
          _$OutlineOptionImpl value, $Res Function(_$OutlineOptionImpl) then) =
      __$$OutlineOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OutlineType outlineType,
      ColorOption outlineColor,
      double outlinePadding,
      double outlineWidth});

  @override
  $ColorOptionCopyWith<$Res> get outlineColor;
}

/// @nodoc
class __$$OutlineOptionImplCopyWithImpl<$Res>
    extends _$OutlineOptionCopyWithImpl<$Res, _$OutlineOptionImpl>
    implements _$$OutlineOptionImplCopyWith<$Res> {
  __$$OutlineOptionImplCopyWithImpl(
      _$OutlineOptionImpl _value, $Res Function(_$OutlineOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlineType = null,
    Object? outlineColor = null,
    Object? outlinePadding = null,
    Object? outlineWidth = null,
  }) {
    return _then(_$OutlineOptionImpl(
      outlineType: null == outlineType
          ? _value.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineColor: null == outlineColor
          ? _value.outlineColor
          : outlineColor // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      outlinePadding: null == outlinePadding
          ? _value.outlinePadding
          : outlinePadding // ignore: cast_nullable_to_non_nullable
              as double,
      outlineWidth: null == outlineWidth
          ? _value.outlineWidth
          : outlineWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OutlineOptionImpl implements _OutlineOption {
  const _$OutlineOptionImpl(
      {this.outlineType = OutlineType.solid,
      this.outlineColor = const ColorOption(),
      this.outlinePadding = 4.0,
      this.outlineWidth = 2.0});

  factory _$OutlineOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutlineOptionImplFromJson(json);

  @override
  @JsonKey()
  final OutlineType outlineType;
  @override
  @JsonKey()
  final ColorOption outlineColor;
  @override
  @JsonKey()
  final double outlinePadding;
  @override
  @JsonKey()
  final double outlineWidth;

  @override
  String toString() {
    return 'OutlineOption(outlineType: $outlineType, outlineColor: $outlineColor, outlinePadding: $outlinePadding, outlineWidth: $outlineWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutlineOptionImpl &&
            (identical(other.outlineType, outlineType) ||
                other.outlineType == outlineType) &&
            (identical(other.outlineColor, outlineColor) ||
                other.outlineColor == outlineColor) &&
            (identical(other.outlinePadding, outlinePadding) ||
                other.outlinePadding == outlinePadding) &&
            (identical(other.outlineWidth, outlineWidth) ||
                other.outlineWidth == outlineWidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, outlineType, outlineColor, outlinePadding, outlineWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutlineOptionImplCopyWith<_$OutlineOptionImpl> get copyWith =>
      __$$OutlineOptionImplCopyWithImpl<_$OutlineOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutlineOptionImplToJson(
      this,
    );
  }
}

abstract class _OutlineOption implements OutlineOption {
  const factory _OutlineOption(
      {final OutlineType outlineType,
      final ColorOption outlineColor,
      final double outlinePadding,
      final double outlineWidth}) = _$OutlineOptionImpl;

  factory _OutlineOption.fromJson(Map<String, dynamic> json) =
      _$OutlineOptionImpl.fromJson;

  @override
  OutlineType get outlineType;
  @override
  ColorOption get outlineColor;
  @override
  double get outlinePadding;
  @override
  double get outlineWidth;
  @override
  @JsonKey(ignore: true)
  _$$OutlineOptionImplCopyWith<_$OutlineOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GradientData _$GradientDataFromJson(Map<String, dynamic> json) {
  return _GradientData.fromJson(json);
}

/// @nodoc
mixin _$GradientData {
  (double, double) get gradientPos => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GradientDataCopyWith<GradientData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GradientDataCopyWith<$Res> {
  factory $GradientDataCopyWith(
          GradientData value, $Res Function(GradientData) then) =
      _$GradientDataCopyWithImpl<$Res, GradientData>;
  @useResult
  $Res call({(double, double) gradientPos, int color});
}

/// @nodoc
class _$GradientDataCopyWithImpl<$Res, $Val extends GradientData>
    implements $GradientDataCopyWith<$Res> {
  _$GradientDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientPos = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      gradientPos: null == gradientPos
          ? _value.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GradientDataImplCopyWith<$Res>
    implements $GradientDataCopyWith<$Res> {
  factory _$$GradientDataImplCopyWith(
          _$GradientDataImpl value, $Res Function(_$GradientDataImpl) then) =
      __$$GradientDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({(double, double) gradientPos, int color});
}

/// @nodoc
class __$$GradientDataImplCopyWithImpl<$Res>
    extends _$GradientDataCopyWithImpl<$Res, _$GradientDataImpl>
    implements _$$GradientDataImplCopyWith<$Res> {
  __$$GradientDataImplCopyWithImpl(
      _$GradientDataImpl _value, $Res Function(_$GradientDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientPos = null,
    Object? color = null,
  }) {
    return _then(_$GradientDataImpl(
      gradientPos: null == gradientPos
          ? _value.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GradientDataImpl implements _GradientData {
  const _$GradientDataImpl(
      {this.gradientPos = const (0.5, 0.5), this.color = 0xFFFFFFFF});

  factory _$GradientDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GradientDataImplFromJson(json);

  @override
  @JsonKey()
  final (double, double) gradientPos;
  @override
  @JsonKey()
  final int color;

  @override
  String toString() {
    return 'GradientData(gradientPos: $gradientPos, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradientDataImpl &&
            (identical(other.gradientPos, gradientPos) ||
                other.gradientPos == gradientPos) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gradientPos, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GradientDataImplCopyWith<_$GradientDataImpl> get copyWith =>
      __$$GradientDataImplCopyWithImpl<_$GradientDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GradientDataImplToJson(
      this,
    );
  }
}

abstract class _GradientData implements GradientData {
  const factory _GradientData(
      {final (double, double) gradientPos,
      final int color}) = _$GradientDataImpl;

  factory _GradientData.fromJson(Map<String, dynamic> json) =
      _$GradientDataImpl.fromJson;

  @override
  (double, double) get gradientPos;
  @override
  int get color;
  @override
  @JsonKey(ignore: true)
  _$$GradientDataImplCopyWith<_$GradientDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorOption _$ColorOptionFromJson(Map<String, dynamic> json) {
  return _ColorOption.fromJson(json);
}

/// @nodoc
mixin _$ColorOption {
  ColorType get colorType => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  GradientType get gradientType => throw _privateConstructorUsedError;
  List<GradientData> get gradientData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorOptionCopyWith<ColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorOptionCopyWith<$Res> {
  factory $ColorOptionCopyWith(
          ColorOption value, $Res Function(ColorOption) then) =
      _$ColorOptionCopyWithImpl<$Res, ColorOption>;
  @useResult
  $Res call(
      {ColorType colorType,
      int color,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class _$ColorOptionCopyWithImpl<$Res, $Val extends ColorOption>
    implements $ColorOptionCopyWith<$Res> {
  _$ColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorType = null,
    Object? color = null,
    Object? gradientType = null,
    Object? gradientData = null,
  }) {
    return _then(_value.copyWith(
      colorType: null == colorType
          ? _value.colorType
          : colorType // ignore: cast_nullable_to_non_nullable
              as ColorType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _value.gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorOptionImplCopyWith<$Res>
    implements $ColorOptionCopyWith<$Res> {
  factory _$$ColorOptionImplCopyWith(
          _$ColorOptionImpl value, $Res Function(_$ColorOptionImpl) then) =
      __$$ColorOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ColorType colorType,
      int color,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class __$$ColorOptionImplCopyWithImpl<$Res>
    extends _$ColorOptionCopyWithImpl<$Res, _$ColorOptionImpl>
    implements _$$ColorOptionImplCopyWith<$Res> {
  __$$ColorOptionImplCopyWithImpl(
      _$ColorOptionImpl _value, $Res Function(_$ColorOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorType = null,
    Object? color = null,
    Object? gradientType = null,
    Object? gradientData = null,
  }) {
    return _then(_$ColorOptionImpl(
      colorType: null == colorType
          ? _value.colorType
          : colorType // ignore: cast_nullable_to_non_nullable
              as ColorType,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _value.gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ColorOptionImpl implements _ColorOption {
  const _$ColorOptionImpl(
      {this.colorType = ColorType.solid,
      this.color = 0xFF40C4FF,
      this.gradientType = GradientType.linear,
      this.gradientData = const [
        GradientData(gradientPos: (0, 0)),
        GradientData(gradientPos: (1, 1))
      ]});

  factory _$ColorOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorOptionImplFromJson(json);

  @override
  @JsonKey()
  final ColorType colorType;
  @override
  @JsonKey()
  final int color;
  @override
  @JsonKey()
  final GradientType gradientType;
  @override
  @JsonKey()
  final List<GradientData> gradientData;

  @override
  String toString() {
    return 'ColorOption(colorType: $colorType, color: $color, gradientType: $gradientType, gradientData: $gradientData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorOptionImpl &&
            (identical(other.colorType, colorType) ||
                other.colorType == colorType) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.gradientType, gradientType) ||
                other.gradientType == gradientType) &&
            const DeepCollectionEquality()
                .equals(other.gradientData, gradientData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, colorType, color, gradientType,
      const DeepCollectionEquality().hash(gradientData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      __$$ColorOptionImplCopyWithImpl<_$ColorOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorOptionImplToJson(
      this,
    );
  }
}

abstract class _ColorOption implements ColorOption {
  const factory _ColorOption(
      {final ColorType colorType,
      final int color,
      final GradientType gradientType,
      final List<GradientData> gradientData}) = _$ColorOptionImpl;

  factory _ColorOption.fromJson(Map<String, dynamic> json) =
      _$ColorOptionImpl.fromJson;

  @override
  ColorType get colorType;
  @override
  int get color;
  @override
  GradientType get gradientType;
  @override
  List<GradientData> get gradientData;
  @override
  @JsonKey(ignore: true)
  _$$ColorOptionImplCopyWith<_$ColorOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoiceNodeDesignPreset _$ChoiceNodeDesignPresetFromJson(
    Map<String, dynamic> json) {
  return _ChoiceNodeDesignPreset.fromJson(json);
}

/// @nodoc
mixin _$ChoiceNodeDesignPreset {
  String get name => throw _privateConstructorUsedError;
  bool get titlePosition => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  double get round => throw _privateConstructorUsedError;
  double get padding => throw _privateConstructorUsedError;
  bool get maximizingImage =>
      throw _privateConstructorUsedError; //true: 80%, false: 50%
  bool get hideTitle => throw _privateConstructorUsedError;
  int get imagePosition =>
      throw _privateConstructorUsedError; //0:default, 1:image-right 2:image-left
  int get colorTitle => throw _privateConstructorUsedError;
  String get titleFont => throw _privateConstructorUsedError;
  String get mainFont => throw _privateConstructorUsedError;
  OutlineOption get outlineOption => throw _privateConstructorUsedError;
  ColorOption get defaultColorOption => throw _privateConstructorUsedError;
  bool get selectColorEnable => throw _privateConstructorUsedError;
  ColorOption get selectColorOption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceNodeDesignPresetCopyWith<ChoiceNodeDesignPreset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory $ChoiceNodeDesignPresetCopyWith(ChoiceNodeDesignPreset value,
          $Res Function(ChoiceNodeDesignPreset) then) =
      _$ChoiceNodeDesignPresetCopyWithImpl<$Res, ChoiceNodeDesignPreset>;
  @useResult
  $Res call(
      {String name,
      bool titlePosition,
      double elevation,
      double round,
      double padding,
      bool maximizingImage,
      bool hideTitle,
      int imagePosition,
      int colorTitle,
      String titleFont,
      String mainFont,
      OutlineOption outlineOption,
      ColorOption defaultColorOption,
      bool selectColorEnable,
      ColorOption selectColorOption});

  $OutlineOptionCopyWith<$Res> get outlineOption;
  $ColorOptionCopyWith<$Res> get defaultColorOption;
  $ColorOptionCopyWith<$Res> get selectColorOption;
}

/// @nodoc
class _$ChoiceNodeDesignPresetCopyWithImpl<$Res,
        $Val extends ChoiceNodeDesignPreset>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  _$ChoiceNodeDesignPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? titlePosition = null,
    Object? elevation = null,
    Object? round = null,
    Object? padding = null,
    Object? maximizingImage = null,
    Object? hideTitle = null,
    Object? imagePosition = null,
    Object? colorTitle = null,
    Object? titleFont = null,
    Object? mainFont = null,
    Object? outlineOption = null,
    Object? defaultColorOption = null,
    Object? selectColorEnable = null,
    Object? selectColorOption = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      titlePosition: null == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as double,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      maximizingImage: null == maximizingImage
          ? _value.maximizingImage
          : maximizingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      hideTitle: null == hideTitle
          ? _value.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePosition: null == imagePosition
          ? _value.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int,
      colorTitle: null == colorTitle
          ? _value.colorTitle
          : colorTitle // ignore: cast_nullable_to_non_nullable
              as int,
      titleFont: null == titleFont
          ? _value.titleFont
          : titleFont // ignore: cast_nullable_to_non_nullable
              as String,
      mainFont: null == mainFont
          ? _value.mainFont
          : mainFont // ignore: cast_nullable_to_non_nullable
              as String,
      outlineOption: null == outlineOption
          ? _value.outlineOption
          : outlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption,
      defaultColorOption: null == defaultColorOption
          ? _value.defaultColorOption
          : defaultColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      selectColorEnable: null == selectColorEnable
          ? _value.selectColorEnable
          : selectColorEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectColorOption: null == selectColorOption
          ? _value.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutlineOptionCopyWith<$Res> get outlineOption {
    return $OutlineOptionCopyWith<$Res>(_value.outlineOption, (value) {
      return _then(_value.copyWith(outlineOption: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get defaultColorOption {
    return $ColorOptionCopyWith<$Res>(_value.defaultColorOption, (value) {
      return _then(_value.copyWith(defaultColorOption: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ColorOptionCopyWith<$Res> get selectColorOption {
    return $ColorOptionCopyWith<$Res>(_value.selectColorOption, (value) {
      return _then(_value.copyWith(selectColorOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceNodeDesignPresetImplCopyWith<$Res>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory _$$ChoiceNodeDesignPresetImplCopyWith(
          _$ChoiceNodeDesignPresetImpl value,
          $Res Function(_$ChoiceNodeDesignPresetImpl) then) =
      __$$ChoiceNodeDesignPresetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool titlePosition,
      double elevation,
      double round,
      double padding,
      bool maximizingImage,
      bool hideTitle,
      int imagePosition,
      int colorTitle,
      String titleFont,
      String mainFont,
      OutlineOption outlineOption,
      ColorOption defaultColorOption,
      bool selectColorEnable,
      ColorOption selectColorOption});

  @override
  $OutlineOptionCopyWith<$Res> get outlineOption;
  @override
  $ColorOptionCopyWith<$Res> get defaultColorOption;
  @override
  $ColorOptionCopyWith<$Res> get selectColorOption;
}

/// @nodoc
class __$$ChoiceNodeDesignPresetImplCopyWithImpl<$Res>
    extends _$ChoiceNodeDesignPresetCopyWithImpl<$Res,
        _$ChoiceNodeDesignPresetImpl>
    implements _$$ChoiceNodeDesignPresetImplCopyWith<$Res> {
  __$$ChoiceNodeDesignPresetImplCopyWithImpl(
      _$ChoiceNodeDesignPresetImpl _value,
      $Res Function(_$ChoiceNodeDesignPresetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? titlePosition = null,
    Object? elevation = null,
    Object? round = null,
    Object? padding = null,
    Object? maximizingImage = null,
    Object? hideTitle = null,
    Object? imagePosition = null,
    Object? colorTitle = null,
    Object? titleFont = null,
    Object? mainFont = null,
    Object? outlineOption = null,
    Object? defaultColorOption = null,
    Object? selectColorEnable = null,
    Object? selectColorOption = null,
  }) {
    return _then(_$ChoiceNodeDesignPresetImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      titlePosition: null == titlePosition
          ? _value.titlePosition
          : titlePosition // ignore: cast_nullable_to_non_nullable
              as bool,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      round: null == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as double,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as double,
      maximizingImage: null == maximizingImage
          ? _value.maximizingImage
          : maximizingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      hideTitle: null == hideTitle
          ? _value.hideTitle
          : hideTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePosition: null == imagePosition
          ? _value.imagePosition
          : imagePosition // ignore: cast_nullable_to_non_nullable
              as int,
      colorTitle: null == colorTitle
          ? _value.colorTitle
          : colorTitle // ignore: cast_nullable_to_non_nullable
              as int,
      titleFont: null == titleFont
          ? _value.titleFont
          : titleFont // ignore: cast_nullable_to_non_nullable
              as String,
      mainFont: null == mainFont
          ? _value.mainFont
          : mainFont // ignore: cast_nullable_to_non_nullable
              as String,
      outlineOption: null == outlineOption
          ? _value.outlineOption
          : outlineOption // ignore: cast_nullable_to_non_nullable
              as OutlineOption,
      defaultColorOption: null == defaultColorOption
          ? _value.defaultColorOption
          : defaultColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
      selectColorEnable: null == selectColorEnable
          ? _value.selectColorEnable
          : selectColorEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectColorOption: null == selectColorOption
          ? _value.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as ColorOption,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChoiceNodeDesignPresetImpl implements _ChoiceNodeDesignPreset {
  const _$ChoiceNodeDesignPresetImpl(
      {required this.name,
      this.titlePosition = true,
      this.elevation = 0.0,
      this.round = 0.0,
      this.padding = 2.0,
      this.maximizingImage = false,
      this.hideTitle = false,
      this.imagePosition = 0,
      this.colorTitle = 0xFF000000,
      this.titleFont = "notoSans",
      this.mainFont = "notoSans",
      this.outlineOption = const OutlineOption(),
      this.defaultColorOption = const ColorOption(),
      this.selectColorEnable = false,
      this.selectColorOption = const ColorOption()});

  factory _$ChoiceNodeDesignPresetImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceNodeDesignPresetImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final bool titlePosition;
  @override
  @JsonKey()
  final double elevation;
  @override
  @JsonKey()
  final double round;
  @override
  @JsonKey()
  final double padding;
  @override
  @JsonKey()
  final bool maximizingImage;
//true: 80%, false: 50%
  @override
  @JsonKey()
  final bool hideTitle;
  @override
  @JsonKey()
  final int imagePosition;
//0:default, 1:image-right 2:image-left
  @override
  @JsonKey()
  final int colorTitle;
  @override
  @JsonKey()
  final String titleFont;
  @override
  @JsonKey()
  final String mainFont;
  @override
  @JsonKey()
  final OutlineOption outlineOption;
  @override
  @JsonKey()
  final ColorOption defaultColorOption;
  @override
  @JsonKey()
  final bool selectColorEnable;
  @override
  @JsonKey()
  final ColorOption selectColorOption;

  @override
  String toString() {
    return 'ChoiceNodeDesignPreset(name: $name, titlePosition: $titlePosition, elevation: $elevation, round: $round, padding: $padding, maximizingImage: $maximizingImage, hideTitle: $hideTitle, imagePosition: $imagePosition, colorTitle: $colorTitle, titleFont: $titleFont, mainFont: $mainFont, outlineOption: $outlineOption, defaultColorOption: $defaultColorOption, selectColorEnable: $selectColorEnable, selectColorOption: $selectColorOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceNodeDesignPresetImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.titlePosition, titlePosition) ||
                other.titlePosition == titlePosition) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.maximizingImage, maximizingImage) ||
                other.maximizingImage == maximizingImage) &&
            (identical(other.hideTitle, hideTitle) ||
                other.hideTitle == hideTitle) &&
            (identical(other.imagePosition, imagePosition) ||
                other.imagePosition == imagePosition) &&
            (identical(other.colorTitle, colorTitle) ||
                other.colorTitle == colorTitle) &&
            (identical(other.titleFont, titleFont) ||
                other.titleFont == titleFont) &&
            (identical(other.mainFont, mainFont) ||
                other.mainFont == mainFont) &&
            (identical(other.outlineOption, outlineOption) ||
                other.outlineOption == outlineOption) &&
            (identical(other.defaultColorOption, defaultColorOption) ||
                other.defaultColorOption == defaultColorOption) &&
            (identical(other.selectColorEnable, selectColorEnable) ||
                other.selectColorEnable == selectColorEnable) &&
            (identical(other.selectColorOption, selectColorOption) ||
                other.selectColorOption == selectColorOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      titlePosition,
      elevation,
      round,
      padding,
      maximizingImage,
      hideTitle,
      imagePosition,
      colorTitle,
      titleFont,
      mainFont,
      outlineOption,
      defaultColorOption,
      selectColorEnable,
      selectColorOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceNodeDesignPresetImplCopyWith<_$ChoiceNodeDesignPresetImpl>
      get copyWith => __$$ChoiceNodeDesignPresetImplCopyWithImpl<
          _$ChoiceNodeDesignPresetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceNodeDesignPresetImplToJson(
      this,
    );
  }
}

abstract class _ChoiceNodeDesignPreset implements ChoiceNodeDesignPreset {
  const factory _ChoiceNodeDesignPreset(
      {required final String name,
      final bool titlePosition,
      final double elevation,
      final double round,
      final double padding,
      final bool maximizingImage,
      final bool hideTitle,
      final int imagePosition,
      final int colorTitle,
      final String titleFont,
      final String mainFont,
      final OutlineOption outlineOption,
      final ColorOption defaultColorOption,
      final bool selectColorEnable,
      final ColorOption selectColorOption}) = _$ChoiceNodeDesignPresetImpl;

  factory _ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =
      _$ChoiceNodeDesignPresetImpl.fromJson;

  @override
  String get name;
  @override
  bool get titlePosition;
  @override
  double get elevation;
  @override
  double get round;
  @override
  double get padding;
  @override
  bool get maximizingImage;
  @override //true: 80%, false: 50%
  bool get hideTitle;
  @override
  int get imagePosition;
  @override //0:default, 1:image-right 2:image-left
  int get colorTitle;
  @override
  String get titleFont;
  @override
  String get mainFont;
  @override
  OutlineOption get outlineOption;
  @override
  ColorOption get defaultColorOption;
  @override
  bool get selectColorEnable;
  @override
  ColorOption get selectColorOption;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceNodeDesignPresetImplCopyWith<_$ChoiceNodeDesignPresetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
