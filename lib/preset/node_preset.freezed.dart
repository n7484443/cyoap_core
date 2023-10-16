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
  int get outlineSelectColor => throw _privateConstructorUsedError;
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
      int outlineSelectColor,
      double outlinePadding,
      double outlineWidth});
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
    Object? outlineSelectColor = null,
    Object? outlinePadding = null,
    Object? outlineWidth = null,
  }) {
    return _then(_value.copyWith(
      outlineType: null == outlineType
          ? _value.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineSelectColor: null == outlineSelectColor
          ? _value.outlineSelectColor
          : outlineSelectColor // ignore: cast_nullable_to_non_nullable
              as int,
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
}

/// @nodoc
abstract class _$$_OutlineOptionCopyWith<$Res>
    implements $OutlineOptionCopyWith<$Res> {
  factory _$$_OutlineOptionCopyWith(
          _$_OutlineOption value, $Res Function(_$_OutlineOption) then) =
      __$$_OutlineOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OutlineType outlineType,
      int outlineSelectColor,
      double outlinePadding,
      double outlineWidth});
}

/// @nodoc
class __$$_OutlineOptionCopyWithImpl<$Res>
    extends _$OutlineOptionCopyWithImpl<$Res, _$_OutlineOption>
    implements _$$_OutlineOptionCopyWith<$Res> {
  __$$_OutlineOptionCopyWithImpl(
      _$_OutlineOption _value, $Res Function(_$_OutlineOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outlineType = null,
    Object? outlineSelectColor = null,
    Object? outlinePadding = null,
    Object? outlineWidth = null,
  }) {
    return _then(_$_OutlineOption(
      outlineType: null == outlineType
          ? _value.outlineType
          : outlineType // ignore: cast_nullable_to_non_nullable
              as OutlineType,
      outlineSelectColor: null == outlineSelectColor
          ? _value.outlineSelectColor
          : outlineSelectColor // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_OutlineOption implements _OutlineOption {
  const _$_OutlineOption(
      {this.outlineType = OutlineType.solid,
      this.outlineSelectColor = 0xFF40C4FF,
      this.outlinePadding = 4.0,
      this.outlineWidth = 2.0});

  factory _$_OutlineOption.fromJson(Map<String, dynamic> json) =>
      _$$_OutlineOptionFromJson(json);

  @override
  @JsonKey()
  final OutlineType outlineType;
  @override
  @JsonKey()
  final int outlineSelectColor;
  @override
  @JsonKey()
  final double outlinePadding;
  @override
  @JsonKey()
  final double outlineWidth;

  @override
  String toString() {
    return 'OutlineOption(outlineType: $outlineType, outlineSelectColor: $outlineSelectColor, outlinePadding: $outlinePadding, outlineWidth: $outlineWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OutlineOption &&
            (identical(other.outlineType, outlineType) ||
                other.outlineType == outlineType) &&
            (identical(other.outlineSelectColor, outlineSelectColor) ||
                other.outlineSelectColor == outlineSelectColor) &&
            (identical(other.outlinePadding, outlinePadding) ||
                other.outlinePadding == outlinePadding) &&
            (identical(other.outlineWidth, outlineWidth) ||
                other.outlineWidth == outlineWidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, outlineType, outlineSelectColor,
      outlinePadding, outlineWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutlineOptionCopyWith<_$_OutlineOption> get copyWith =>
      __$$_OutlineOptionCopyWithImpl<_$_OutlineOption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutlineOptionToJson(
      this,
    );
  }
}

abstract class _OutlineOption implements OutlineOption {
  const factory _OutlineOption(
      {final OutlineType outlineType,
      final int outlineSelectColor,
      final double outlinePadding,
      final double outlineWidth}) = _$_OutlineOption;

  factory _OutlineOption.fromJson(Map<String, dynamic> json) =
      _$_OutlineOption.fromJson;

  @override
  OutlineType get outlineType;
  @override
  int get outlineSelectColor;
  @override
  double get outlinePadding;
  @override
  double get outlineWidth;
  @override
  @JsonKey(ignore: true)
  _$$_OutlineOptionCopyWith<_$_OutlineOption> get copyWith =>
      throw _privateConstructorUsedError;
}

GradientData _$GradientDataFromJson(Map<String, dynamic> json) {
  return _GradientData.fromJson(json);
}

/// @nodoc
mixin _$GradientData {
  (double, double) get gradientPos => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;

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
  $Res call({(double, double) gradientPos, int? color});
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
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      gradientPos: null == gradientPos
          ? _value.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GradientDataCopyWith<$Res>
    implements $GradientDataCopyWith<$Res> {
  factory _$$_GradientDataCopyWith(
          _$_GradientData value, $Res Function(_$_GradientData) then) =
      __$$_GradientDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({(double, double) gradientPos, int? color});
}

/// @nodoc
class __$$_GradientDataCopyWithImpl<$Res>
    extends _$GradientDataCopyWithImpl<$Res, _$_GradientData>
    implements _$$_GradientDataCopyWith<$Res> {
  __$$_GradientDataCopyWithImpl(
      _$_GradientData _value, $Res Function(_$_GradientData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradientPos = null,
    Object? color = freezed,
  }) {
    return _then(_$_GradientData(
      gradientPos: null == gradientPos
          ? _value.gradientPos
          : gradientPos // ignore: cast_nullable_to_non_nullable
              as (double, double),
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GradientData implements _GradientData {
  const _$_GradientData({this.gradientPos = const (0, 0), this.color = null});

  factory _$_GradientData.fromJson(Map<String, dynamic> json) =>
      _$$_GradientDataFromJson(json);

  @override
  @JsonKey()
  final (double, double) gradientPos;
  @override
  @JsonKey()
  final int? color;

  @override
  String toString() {
    return 'GradientData(gradientPos: $gradientPos, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GradientData &&
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
  _$$_GradientDataCopyWith<_$_GradientData> get copyWith =>
      __$$_GradientDataCopyWithImpl<_$_GradientData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GradientDataToJson(
      this,
    );
  }
}

abstract class _GradientData implements GradientData {
  const factory _GradientData(
      {final (double, double) gradientPos, final int? color}) = _$_GradientData;

  factory _GradientData.fromJson(Map<String, dynamic> json) =
      _$_GradientData.fromJson;

  @override
  (double, double) get gradientPos;
  @override
  int? get color;
  @override
  @JsonKey(ignore: true)
  _$$_GradientDataCopyWith<_$_GradientData> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectColorOption _$SelectColorOptionFromJson(Map<String, dynamic> json) {
  return _SelectColorOption.fromJson(json);
}

/// @nodoc
mixin _$SelectColorOption {
  bool get enable => throw _privateConstructorUsedError;
  SelectColorType get selectColorType => throw _privateConstructorUsedError;
  int? get selectColor => throw _privateConstructorUsedError;
  GradientType get gradientType => throw _privateConstructorUsedError;
  List<GradientData> get gradientData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectColorOptionCopyWith<SelectColorOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectColorOptionCopyWith<$Res> {
  factory $SelectColorOptionCopyWith(
          SelectColorOption value, $Res Function(SelectColorOption) then) =
      _$SelectColorOptionCopyWithImpl<$Res, SelectColorOption>;
  @useResult
  $Res call(
      {bool enable,
      SelectColorType selectColorType,
      int? selectColor,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class _$SelectColorOptionCopyWithImpl<$Res, $Val extends SelectColorOption>
    implements $SelectColorOptionCopyWith<$Res> {
  _$SelectColorOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? selectColorType = null,
    Object? selectColor = freezed,
    Object? gradientType = null,
    Object? gradientData = null,
  }) {
    return _then(_value.copyWith(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectColorType: null == selectColorType
          ? _value.selectColorType
          : selectColorType // ignore: cast_nullable_to_non_nullable
              as SelectColorType,
      selectColor: freezed == selectColor
          ? _value.selectColor
          : selectColor // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_SelectColorOptionCopyWith<$Res>
    implements $SelectColorOptionCopyWith<$Res> {
  factory _$$_SelectColorOptionCopyWith(_$_SelectColorOption value,
          $Res Function(_$_SelectColorOption) then) =
      __$$_SelectColorOptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enable,
      SelectColorType selectColorType,
      int? selectColor,
      GradientType gradientType,
      List<GradientData> gradientData});
}

/// @nodoc
class __$$_SelectColorOptionCopyWithImpl<$Res>
    extends _$SelectColorOptionCopyWithImpl<$Res, _$_SelectColorOption>
    implements _$$_SelectColorOptionCopyWith<$Res> {
  __$$_SelectColorOptionCopyWithImpl(
      _$_SelectColorOption _value, $Res Function(_$_SelectColorOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? selectColorType = null,
    Object? selectColor = freezed,
    Object? gradientType = null,
    Object? gradientData = null,
  }) {
    return _then(_$_SelectColorOption(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      selectColorType: null == selectColorType
          ? _value.selectColorType
          : selectColorType // ignore: cast_nullable_to_non_nullable
              as SelectColorType,
      selectColor: freezed == selectColor
          ? _value.selectColor
          : selectColor // ignore: cast_nullable_to_non_nullable
              as int?,
      gradientType: null == gradientType
          ? _value.gradientType
          : gradientType // ignore: cast_nullable_to_non_nullable
              as GradientType,
      gradientData: null == gradientData
          ? _value._gradientData
          : gradientData // ignore: cast_nullable_to_non_nullable
              as List<GradientData>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SelectColorOption implements _SelectColorOption {
  const _$_SelectColorOption(
      {this.enable = false,
      this.selectColorType = SelectColorType.solid,
      this.selectColor = 0xFF40C4FF,
      this.gradientType = GradientType.linear,
      final List<GradientData> gradientData = const [
        GradientData(gradientPos: (0, 0)),
        GradientData(gradientPos: (1, 1))
      ]})
      : _gradientData = gradientData;

  factory _$_SelectColorOption.fromJson(Map<String, dynamic> json) =>
      _$$_SelectColorOptionFromJson(json);

  @override
  @JsonKey()
  final bool enable;
  @override
  @JsonKey()
  final SelectColorType selectColorType;
  @override
  @JsonKey()
  final int? selectColor;
  @override
  @JsonKey()
  final GradientType gradientType;
  final List<GradientData> _gradientData;
  @override
  @JsonKey()
  List<GradientData> get gradientData {
    if (_gradientData is EqualUnmodifiableListView) return _gradientData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gradientData);
  }

  @override
  String toString() {
    return 'SelectColorOption(enable: $enable, selectColorType: $selectColorType, selectColor: $selectColor, gradientType: $gradientType, gradientData: $gradientData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectColorOption &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.selectColorType, selectColorType) ||
                other.selectColorType == selectColorType) &&
            (identical(other.selectColor, selectColor) ||
                other.selectColor == selectColor) &&
            (identical(other.gradientType, gradientType) ||
                other.gradientType == gradientType) &&
            const DeepCollectionEquality()
                .equals(other._gradientData, _gradientData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enable,
      selectColorType,
      selectColor,
      gradientType,
      const DeepCollectionEquality().hash(_gradientData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectColorOptionCopyWith<_$_SelectColorOption> get copyWith =>
      __$$_SelectColorOptionCopyWithImpl<_$_SelectColorOption>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectColorOptionToJson(
      this,
    );
  }
}

abstract class _SelectColorOption implements SelectColorOption {
  const factory _SelectColorOption(
      {final bool enable,
      final SelectColorType selectColorType,
      final int? selectColor,
      final GradientType gradientType,
      final List<GradientData> gradientData}) = _$_SelectColorOption;

  factory _SelectColorOption.fromJson(Map<String, dynamic> json) =
      _$_SelectColorOption.fromJson;

  @override
  bool get enable;
  @override
  SelectColorType get selectColorType;
  @override
  int? get selectColor;
  @override
  GradientType get gradientType;
  @override
  List<GradientData> get gradientData;
  @override
  @JsonKey(ignore: true)
  _$$_SelectColorOptionCopyWith<_$_SelectColorOption> get copyWith =>
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
  int get colorNode => throw _privateConstructorUsedError;
  int get colorTitle => throw _privateConstructorUsedError;
  String get titleFont => throw _privateConstructorUsedError;
  String get mainFont => throw _privateConstructorUsedError;
  OutlineOption get outlineOption => throw _privateConstructorUsedError;
  SelectColorOption get selectColorOption => throw _privateConstructorUsedError;

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
      int colorNode,
      int colorTitle,
      String titleFont,
      String mainFont,
      OutlineOption outlineOption,
      SelectColorOption selectColorOption});

  $OutlineOptionCopyWith<$Res> get outlineOption;
  $SelectColorOptionCopyWith<$Res> get selectColorOption;
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
    Object? colorNode = null,
    Object? colorTitle = null,
    Object? titleFont = null,
    Object? mainFont = null,
    Object? outlineOption = null,
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
      colorNode: null == colorNode
          ? _value.colorNode
          : colorNode // ignore: cast_nullable_to_non_nullable
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
      selectColorOption: null == selectColorOption
          ? _value.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as SelectColorOption,
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
  $SelectColorOptionCopyWith<$Res> get selectColorOption {
    return $SelectColorOptionCopyWith<$Res>(_value.selectColorOption, (value) {
      return _then(_value.copyWith(selectColorOption: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChoiceNodeDesignPresetCopyWith<$Res>
    implements $ChoiceNodeDesignPresetCopyWith<$Res> {
  factory _$$_ChoiceNodeDesignPresetCopyWith(_$_ChoiceNodeDesignPreset value,
          $Res Function(_$_ChoiceNodeDesignPreset) then) =
      __$$_ChoiceNodeDesignPresetCopyWithImpl<$Res>;
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
      int colorNode,
      int colorTitle,
      String titleFont,
      String mainFont,
      OutlineOption outlineOption,
      SelectColorOption selectColorOption});

  @override
  $OutlineOptionCopyWith<$Res> get outlineOption;
  @override
  $SelectColorOptionCopyWith<$Res> get selectColorOption;
}

/// @nodoc
class __$$_ChoiceNodeDesignPresetCopyWithImpl<$Res>
    extends _$ChoiceNodeDesignPresetCopyWithImpl<$Res,
        _$_ChoiceNodeDesignPreset>
    implements _$$_ChoiceNodeDesignPresetCopyWith<$Res> {
  __$$_ChoiceNodeDesignPresetCopyWithImpl(_$_ChoiceNodeDesignPreset _value,
      $Res Function(_$_ChoiceNodeDesignPreset) _then)
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
    Object? colorNode = null,
    Object? colorTitle = null,
    Object? titleFont = null,
    Object? mainFont = null,
    Object? outlineOption = null,
    Object? selectColorOption = null,
  }) {
    return _then(_$_ChoiceNodeDesignPreset(
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
      colorNode: null == colorNode
          ? _value.colorNode
          : colorNode // ignore: cast_nullable_to_non_nullable
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
      selectColorOption: null == selectColorOption
          ? _value.selectColorOption
          : selectColorOption // ignore: cast_nullable_to_non_nullable
              as SelectColorOption,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChoiceNodeDesignPreset implements _ChoiceNodeDesignPreset {
  const _$_ChoiceNodeDesignPreset(
      {required this.name,
      this.titlePosition = true,
      this.elevation = 0.0,
      this.round = 0.0,
      this.padding = 2.0,
      this.maximizingImage = false,
      this.hideTitle = false,
      this.imagePosition = 0,
      this.colorNode = 0xFFFFFFFF,
      this.colorTitle = 0xFF000000,
      this.titleFont = "notoSans",
      this.mainFont = "notoSans",
      this.outlineOption = const OutlineOption(),
      this.selectColorOption = const SelectColorOption()});

  factory _$_ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceNodeDesignPresetFromJson(json);

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
  final int colorNode;
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
  final SelectColorOption selectColorOption;

  @override
  String toString() {
    return 'ChoiceNodeDesignPreset(name: $name, titlePosition: $titlePosition, elevation: $elevation, round: $round, padding: $padding, maximizingImage: $maximizingImage, hideTitle: $hideTitle, imagePosition: $imagePosition, colorNode: $colorNode, colorTitle: $colorTitle, titleFont: $titleFont, mainFont: $mainFont, outlineOption: $outlineOption, selectColorOption: $selectColorOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChoiceNodeDesignPreset &&
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
            (identical(other.colorNode, colorNode) ||
                other.colorNode == colorNode) &&
            (identical(other.colorTitle, colorTitle) ||
                other.colorTitle == colorTitle) &&
            (identical(other.titleFont, titleFont) ||
                other.titleFont == titleFont) &&
            (identical(other.mainFont, mainFont) ||
                other.mainFont == mainFont) &&
            (identical(other.outlineOption, outlineOption) ||
                other.outlineOption == outlineOption) &&
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
      colorNode,
      colorTitle,
      titleFont,
      mainFont,
      outlineOption,
      selectColorOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceNodeDesignPresetCopyWith<_$_ChoiceNodeDesignPreset> get copyWith =>
      __$$_ChoiceNodeDesignPresetCopyWithImpl<_$_ChoiceNodeDesignPreset>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceNodeDesignPresetToJson(
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
      final int colorNode,
      final int colorTitle,
      final String titleFont,
      final String mainFont,
      final OutlineOption outlineOption,
      final SelectColorOption selectColorOption}) = _$_ChoiceNodeDesignPreset;

  factory _ChoiceNodeDesignPreset.fromJson(Map<String, dynamic> json) =
      _$_ChoiceNodeDesignPreset.fromJson;

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
  int get colorNode;
  @override
  int get colorTitle;
  @override
  String get titleFont;
  @override
  String get mainFont;
  @override
  OutlineOption get outlineOption;
  @override
  SelectColorOption get selectColorOption;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceNodeDesignPresetCopyWith<_$_ChoiceNodeDesignPreset> get copyWith =>
      throw _privateConstructorUsedError;
}
