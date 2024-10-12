import 'dart:math';

import 'package:cyoap_core/i18n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'layout.freezed.dart';
part 'layout.g.dart';



enum ColorType {
  solid,
  gradient;

  @override
  String toString() => name.i18n;

  const ColorType();
}

enum GradientType {
  linear,
  radial,
  sweep;

  @override
  String toString() => name.i18n;
}

@freezed
class GradientData with _$GradientData {
  const factory GradientData({
    @Default((0.5, 0.5)) (double, double) gradientPos,
    @Default(0xFFFFFFFF) int color,
  }) = _GradientData;

  factory GradientData.fromJson(Map<String, dynamic> json) =>
      _$GradientDataFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class ColorOption with _$ColorOption {
  const factory ColorOption({
    @Default(ColorType.solid) ColorType colorType,
    @Default(0xFF40C4FF) int color,
    @Default(GradientType.linear) GradientType gradientType,
    @Default(
        [GradientData(gradientPos: (0, 0)), GradientData(gradientPos: (1, 1))])
    List<GradientData> gradientData,
  }) = _ColorOption;

  factory ColorOption.fromJson(Map<String, dynamic> json) =>
      _$ColorOptionFromJson(json);
}

enum ResponsiveSizeOption{
  min,
  max
}

@freezed
class ResponsiveSize with _$ResponsiveSize {
  const factory ResponsiveSize({
    @Default(null) double? px,
    @Default(null) double? percentage,
    @Default(null) ResponsiveSizeOption? option,
  }) = _ResponsiveSize;

  double value(double parentSize){
    assert(px != null || percentage != null);
    if(option == null){
      return px ?? (percentage! / 100.0 * parentSize);
    }
    if(option == ResponsiveSizeOption.min){
      return min(px!, percentage! / 100.0 * parentSize);
    }
    if(option == ResponsiveSizeOption.max){
      return max(px!, percentage! / 100.0 * parentSize);
    }
    return 0;
  }

  String valueCss(){
    assert(px != null || percentage != null);
    if(option == null){
      if(px != null){
        return "${px}px";
      }
      return "$percentage%";
    }
    if(option == ResponsiveSizeOption.min){
      return "min(${px}px, $percentage%)";
    }
    if(option == ResponsiveSizeOption.max){
      return "max(${px}px, $percentage%)";
    }
    return '';
  }

  const ResponsiveSize._();

  factory ResponsiveSize.fromJson(Map<String, dynamic> json) =>
      _$ResponsiveSizeFromJson(json);
}

@freezed
class ResponsiveBox with _$ResponsiveBox {
  const factory ResponsiveBox({
    @Default(null) ResponsiveSize? left,
    @Default(null) ResponsiveSize? right,
    @Default(null) ResponsiveSize? top,
    @Default(null) ResponsiveSize? bottom,

    @Default(null) ResponsiveSize? width,
    @Default(null) ResponsiveSize? height,
  }) = _ResponsiveBox;

  factory ResponsiveBox.fromJson(Map<String, dynamic> json) =>
      _$ResponsiveBoxFromJson(json);
}

const double defaultTitleHeight = 36;

@freezed
class NodeLayoutElement with _$NodeLayoutElement{
  const factory NodeLayoutElement.title({
    @Default(ResponsiveBox(
      left: ResponsiveSize(px: 0),
      right: ResponsiveSize(px: 0),
      top: ResponsiveSize(px: 0),
      height: ResponsiveSize(px: defaultTitleHeight),
    )) ResponsiveBox responsiveBox,
  }) = Title;

  const factory NodeLayoutElement.image({
    @Default(ResponsiveBox(
      left: ResponsiveSize(px: 0),
      right: ResponsiveSize(percentage: 50),
      top: ResponsiveSize(px: defaultTitleHeight),
      bottom: ResponsiveSize(px: 0),
    )) ResponsiveBox responsiveBox,
  }) = Image;

  const factory NodeLayoutElement.content({
    @Default(ResponsiveBox(
      left: ResponsiveSize(percentage: 50),
      right: ResponsiveSize(px: 0),
      top: ResponsiveSize(px: defaultTitleHeight),
      bottom: ResponsiveSize(px: 0),
    )) ResponsiveBox responsiveBox,
  }) = Content;

  const factory NodeLayoutElement.text({
    @Default(ResponsiveBox(
      left: ResponsiveSize(percentage: 0),
      right: ResponsiveSize(percentage: 0),
      top: ResponsiveSize(percentage: 45),
      bottom: ResponsiveSize(percentage: 55),
    )) ResponsiveBox responsiveBox,
    @Default("defaultValue") String quillText,
  }) = Text;

  const factory NodeLayoutElement.box({
    @Default(ResponsiveBox(
      left: ResponsiveSize(percentage: 0),
      right: ResponsiveSize(percentage: 0),
      top: ResponsiveSize(percentage: 45),
      bottom: ResponsiveSize(percentage: 55),
    )) ResponsiveBox responsiveBox,
    @Default(ColorOption()) ColorOption boxColor,
  }) = Box;

  const NodeLayoutElement._();

  double getIntrinsicWidth(double parentWidth){
    if(responsiveBox.width != null){
      return responsiveBox.width!.value(parentWidth);
    }
    var left = responsiveBox.left?.value(parentWidth) ?? 0;
    var right = responsiveBox.right?.value(parentWidth) ?? 0;
    return parentWidth - left - right;
  }

  double getIntrinsicHeight(double parentHeight){
    if(responsiveBox.height != null){
      return responsiveBox.height!.value(parentHeight);
    }
    var top = responsiveBox.left?.value(parentHeight) ?? 0;
    var bottom = responsiveBox.right?.value(parentHeight) ?? 0;
    return parentHeight - top - bottom;
  }

  factory NodeLayoutElement.fromJson(Map<String, dynamic> json) =>
      _$NodeLayoutElementFromJson(json);
}

@freezed
class NodeLayout with _$NodeLayout{
  const factory NodeLayout({
    @Default([NodeLayoutElement.title(), NodeLayoutElement.image(), NodeLayoutElement.content()]) List<NodeLayoutElement> nodeLayoutElements,
  }) = _NodeLayout;

  factory NodeLayout.fromJson(Map<String, dynamic> json) =>
      _$NodeLayoutFromJson(json);
}