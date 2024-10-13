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
  max,
  px,
  percentage
}

@freezed
class ResponsiveSize with _$ResponsiveSize {
  const factory ResponsiveSize({
    @Default(null) double? px,
    @Default(null) double? percentage,
    @Default(ResponsiveSizeOption.percentage) ResponsiveSizeOption option,
  }) = _ResponsiveSize;

  double value(double parentSize){
    assert(px != null || percentage != null);
    switch(option){
      case ResponsiveSizeOption.px:
        assert(px != null, "px is null");
        return px!;
      case ResponsiveSizeOption.percentage:
        assert(percentage != null, "percentage is null");
        return percentage! / 100.0 * parentSize;
      case ResponsiveSizeOption.min:
        return min(px!, percentage! / 100.0 * parentSize);
      case ResponsiveSizeOption.max:
        return max(px!, percentage! / 100.0 * parentSize);
    }
  }

  String valueCss(){
    assert(px != null || percentage != null);
    switch(option){
      case ResponsiveSizeOption.px:
        assert(px != null, "px is null");
        return "${px}px";
      case ResponsiveSizeOption.percentage:
        assert(percentage != null, "percentage is null");
        return "$percentage%";
      case ResponsiveSizeOption.min:
        return "min(${px}px, $percentage%)";
      case ResponsiveSizeOption.max:
        return "max(${px}px, $percentage%)";
    }
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

  const ResponsiveBox._();

  ResponsiveSize? getValue(String key) {
    switch (key) {
      case "left":
        return left;
      case "right":
        return right;
      case "top":
        return top;
      case "bottom":
        return bottom;
      case "width":
        return width;
      case "height":
        return height;
    }
    assert(false, "Invalid key in ResponsiveBox");
    return null;
  }

  factory ResponsiveBox.fromJson(Map<String, dynamic> json) =>
      _$ResponsiveBoxFromJson(json);
}

const double defaultTitleHeight = 36;

@freezed
class NodeLayoutElement with _$NodeLayoutElement{
  const factory NodeLayoutElement.title({
    @Default(ResponsiveBox(
      left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
      right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
      top: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
      height: ResponsiveSize(px: defaultTitleHeight, option: ResponsiveSizeOption.px),
    )) ResponsiveBox responsiveBox,
  }) = Title;

  const factory NodeLayoutElement.image({
    @Default(ResponsiveBox(
      left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
      right: ResponsiveSize(percentage: 50, option: ResponsiveSizeOption.percentage),
      top: ResponsiveSize(px: defaultTitleHeight, option: ResponsiveSizeOption.px),
      bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
    )) ResponsiveBox responsiveBox,
  }) = Image;

  const factory NodeLayoutElement.content({
    @Default(ResponsiveBox(
      left: ResponsiveSize(percentage: 50, option: ResponsiveSizeOption.percentage),
      right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
      top: ResponsiveSize(px: defaultTitleHeight, option: ResponsiveSizeOption.px),
      bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
    )) ResponsiveBox responsiveBox,
  }) = Content;

  const factory NodeLayoutElement.text({
    @Default(ResponsiveBox(
      left: ResponsiveSize(percentage: 0, option: ResponsiveSizeOption.percentage),
      right: ResponsiveSize(percentage: 0, option: ResponsiveSizeOption.percentage),
      top: ResponsiveSize(percentage: 45, option: ResponsiveSizeOption.percentage),
      bottom: ResponsiveSize(percentage: 55, option: ResponsiveSizeOption.percentage),
    )) ResponsiveBox responsiveBox,
    @Default("defaultValue") String quillText,
  }) = Text;

  const factory NodeLayoutElement.box({
    @Default(ResponsiveBox(
      left: ResponsiveSize(percentage: 0, option: ResponsiveSizeOption.percentage),
      right: ResponsiveSize(percentage: 0, option: ResponsiveSizeOption.percentage),
      top: ResponsiveSize(percentage: 45, option: ResponsiveSizeOption.percentage),
      bottom: ResponsiveSize(percentage: 55, option: ResponsiveSizeOption.percentage),
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