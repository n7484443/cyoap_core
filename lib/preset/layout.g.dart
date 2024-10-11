// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GradientDataImpl _$$GradientDataImplFromJson(Map<String, dynamic> json) =>
    _$GradientDataImpl(
      gradientPos: _$recordConvert(
            json['gradientPos'],
            ($jsonValue) => (
              ($jsonValue[r'$1'] as num).toDouble(),
              ($jsonValue[r'$2'] as num).toDouble(),
            ),
          ) ??
          (0.5, 0.5),
      color: (json['color'] as num?)?.toInt() ?? 0xFFFFFFFF,
    );

Map<String, dynamic> _$$GradientDataImplToJson(_$GradientDataImpl instance) =>
    <String, dynamic>{
      'gradientPos': <String, dynamic>{
        r'$1': instance.gradientPos.$1,
        r'$2': instance.gradientPos.$2,
      },
      'color': instance.color,
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

_$ColorOptionImpl _$$ColorOptionImplFromJson(Map<String, dynamic> json) =>
    _$ColorOptionImpl(
      colorType: $enumDecodeNullable(_$ColorTypeEnumMap, json['colorType']) ??
          ColorType.solid,
      color: (json['color'] as num?)?.toInt() ?? 0xFF40C4FF,
      gradientType:
          $enumDecodeNullable(_$GradientTypeEnumMap, json['gradientType']) ??
              GradientType.linear,
      gradientData: (json['gradientData'] as List<dynamic>?)
              ?.map((e) => GradientData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            GradientData(gradientPos: (0, 0)),
            GradientData(gradientPos: (1, 1))
          ],
    );

Map<String, dynamic> _$$ColorOptionImplToJson(_$ColorOptionImpl instance) =>
    <String, dynamic>{
      'colorType': _$ColorTypeEnumMap[instance.colorType]!,
      'color': instance.color,
      'gradientType': _$GradientTypeEnumMap[instance.gradientType]!,
      'gradientData': instance.gradientData.map((e) => e.toJson()).toList(),
    };

const _$ColorTypeEnumMap = {
  ColorType.solid: 'solid',
  ColorType.gradient: 'gradient',
};

const _$GradientTypeEnumMap = {
  GradientType.linear: 'linear',
  GradientType.radial: 'radial',
  GradientType.sweep: 'sweep',
};

_$ResponsiveSizeImpl _$$ResponsiveSizeImplFromJson(Map<String, dynamic> json) =>
    _$ResponsiveSizeImpl(
      position: $enumDecodeNullable(
              _$ResponsivePositionOptionEnumMap, json['position']) ??
          ResponsivePositionOption.absolute,
      anchor: json['anchor'] == null
          ? null
          : ResponsiveSize.fromJson(json['anchor'] as Map<String, dynamic>),
      px: (json['px'] as num?)?.toDouble() ?? 0.0,
      percentage: (json['percentage'] as num?)?.toDouble() ?? 0.0,
      option:
          $enumDecodeNullable(_$ResponsiveSizeOptionEnumMap, json['option']) ??
              ResponsiveSizeOption.percentage,
    );

Map<String, dynamic> _$$ResponsiveSizeImplToJson(
        _$ResponsiveSizeImpl instance) =>
    <String, dynamic>{
      'position': _$ResponsivePositionOptionEnumMap[instance.position]!,
      'anchor': instance.anchor?.toJson(),
      'px': instance.px,
      'percentage': instance.percentage,
      'option': _$ResponsiveSizeOptionEnumMap[instance.option]!,
    };

const _$ResponsivePositionOptionEnumMap = {
  ResponsivePositionOption.relative: 'relative',
  ResponsivePositionOption.absolute: 'absolute',
};

const _$ResponsiveSizeOptionEnumMap = {
  ResponsiveSizeOption.min: 'min',
  ResponsiveSizeOption.max: 'max',
  ResponsiveSizeOption.px: 'px',
  ResponsiveSizeOption.percentage: 'percentage',
};

_$ResponsiveBoxImpl _$$ResponsiveBoxImplFromJson(Map<String, dynamic> json) =>
    _$ResponsiveBoxImpl(
      left: json['left'] == null
          ? null
          : ResponsiveSize.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : ResponsiveSize.fromJson(json['right'] as Map<String, dynamic>),
      top: json['top'] == null
          ? null
          : ResponsiveSize.fromJson(json['top'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? null
          : ResponsiveSize.fromJson(json['bottom'] as Map<String, dynamic>),
      width: json['width'] == null
          ? null
          : ResponsiveSize.fromJson(json['width'] as Map<String, dynamic>),
      height: json['height'] == null
          ? null
          : ResponsiveSize.fromJson(json['height'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponsiveBoxImplToJson(_$ResponsiveBoxImpl instance) =>
    <String, dynamic>{
      'left': instance.left?.toJson(),
      'right': instance.right?.toJson(),
      'top': instance.top?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'width': instance.width?.toJson(),
      'height': instance.height?.toJson(),
    };

_$TitleImpl _$$TitleImplFromJson(Map<String, dynamic> json) => _$TitleImpl(
      responsiveBox: json['responsiveBox'] == null
          ? const ResponsiveBox(
              left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
              right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
              top: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
              height: ResponsiveSize(
                  px: defaultTitleHeight, option: ResponsiveSizeOption.px))
          : ResponsiveBox.fromJson(
              json['responsiveBox'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TitleImplToJson(_$TitleImpl instance) =>
    <String, dynamic>{
      'responsiveBox': instance.responsiveBox.toJson(),
      'runtimeType': instance.$type,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      responsiveBox: json['responsiveBox'] == null
          ? const ResponsiveBox(
              left: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
              right: ResponsiveSize(
                  percentage: 50, option: ResponsiveSizeOption.percentage),
              top: ResponsiveSize(
                  px: defaultTitleHeight, option: ResponsiveSizeOption.px),
              bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px))
          : ResponsiveBox.fromJson(
              json['responsiveBox'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'responsiveBox': instance.responsiveBox.toJson(),
      'runtimeType': instance.$type,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      responsiveBox: json['responsiveBox'] == null
          ? const ResponsiveBox(
              left: ResponsiveSize(
                  percentage: 50, option: ResponsiveSizeOption.percentage),
              right: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
              top: ResponsiveSize(
                  px: defaultTitleHeight, option: ResponsiveSizeOption.px),
              bottom: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px))
          : ResponsiveBox.fromJson(
              json['responsiveBox'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'responsiveBox': instance.responsiveBox.toJson(),
      'runtimeType': instance.$type,
    };

_$TextImpl _$$TextImplFromJson(Map<String, dynamic> json) => _$TextImpl(
      responsiveBox: json['responsiveBox'] == null
          ? const ResponsiveBox(
              left: ResponsiveSize(
                  percentage: 0, option: ResponsiveSizeOption.percentage),
              right: ResponsiveSize(
                  percentage: 0, option: ResponsiveSizeOption.percentage),
              top: ResponsiveSize(
                  percentage: 45, option: ResponsiveSizeOption.percentage),
              bottom: ResponsiveSize(
                  percentage: 55, option: ResponsiveSizeOption.percentage))
          : ResponsiveBox.fromJson(
              json['responsiveBox'] as Map<String, dynamic>),
      quillText: json['quillText'] as String? ?? "defaultValue",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextImplToJson(_$TextImpl instance) =>
    <String, dynamic>{
      'responsiveBox': instance.responsiveBox.toJson(),
      'quillText': instance.quillText,
      'runtimeType': instance.$type,
    };

_$BoxImpl _$$BoxImplFromJson(Map<String, dynamic> json) => _$BoxImpl(
      responsiveBox: json['responsiveBox'] == null
          ? const ResponsiveBox(
              left: ResponsiveSize(
                  percentage: 0, option: ResponsiveSizeOption.percentage),
              right: ResponsiveSize(
                  percentage: 0, option: ResponsiveSizeOption.percentage),
              top: ResponsiveSize(
                  percentage: 45, option: ResponsiveSizeOption.percentage),
              bottom: ResponsiveSize(
                  percentage: 55, option: ResponsiveSizeOption.percentage))
          : ResponsiveBox.fromJson(
              json['responsiveBox'] as Map<String, dynamic>),
      boxColor: json['boxColor'] == null
          ? const ColorOption()
          : ColorOption.fromJson(json['boxColor'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BoxImplToJson(_$BoxImpl instance) => <String, dynamic>{
      'responsiveBox': instance.responsiveBox.toJson(),
      'boxColor': instance.boxColor.toJson(),
      'runtimeType': instance.$type,
    };

_$NodeLayoutImpl _$$NodeLayoutImplFromJson(Map<String, dynamic> json) =>
    _$NodeLayoutImpl(
      nodeLayoutElements: (json['nodeLayoutElements'] as List<dynamic>?)
              ?.map(
                  (e) => NodeLayoutElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            NodeLayoutElement.title(),
            NodeLayoutElement.image(),
            NodeLayoutElement.content()
          ],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NodeLayoutImplToJson(_$NodeLayoutImpl instance) =>
    <String, dynamic>{
      'nodeLayoutElements':
          instance.nodeLayoutElements.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$NodeLayoutUpTitleImpl _$$NodeLayoutUpTitleImplFromJson(
        Map<String, dynamic> json) =>
    _$NodeLayoutUpTitleImpl(
      nodeLayoutElements: (json['nodeLayoutElements'] as List<dynamic>?)
              ?.map(
                  (e) => NodeLayoutElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            NodeLayoutElement.title(
                responsiveBox: ResponsiveBox(
                    left:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    right:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    top: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px),
                    height: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px))),
            NodeLayoutElement.image(
                responsiveBox: ResponsiveBox(
                    left:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    right:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    top: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px),
                    height: ResponsiveSize(
                        px: 400,
                        percentage: 50,
                        option: ResponsiveSizeOption.min))),
            NodeLayoutElement.content(
                responsiveBox: ResponsiveBox(
                    left:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    right:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    top: ResponsiveSize(
                        anchor: ResponsiveSize(
                            px: 400,
                            percentage: 50,
                            option: ResponsiveSizeOption.min),
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px,
                        position: ResponsivePositionOption.relative),
                    bottom:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
          ],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NodeLayoutUpTitleImplToJson(
        _$NodeLayoutUpTitleImpl instance) =>
    <String, dynamic>{
      'nodeLayoutElements':
          instance.nodeLayoutElements.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$NodeLayoutDownTitleImpl _$$NodeLayoutDownTitleImplFromJson(
        Map<String, dynamic> json) =>
    _$NodeLayoutDownTitleImpl(
      nodeLayoutElements: (json['nodeLayoutElements'] as List<dynamic>?)
              ?.map(
                  (e) => NodeLayoutElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            NodeLayoutElement.image(
                responsiveBox: ResponsiveBox(
                    left:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    right:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    top: ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    height: ResponsiveSize(
                        px: 400,
                        percentage: 50,
                        option: ResponsiveSizeOption.min))),
            NodeLayoutElement.title(
                responsiveBox: ResponsiveBox(
                    left:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    right:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    top: ResponsiveSize(
                        px: 400,
                        percentage: 50,
                        option: ResponsiveSizeOption.min),
                    height: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px))),
            NodeLayoutElement.content(
                responsiveBox: ResponsiveBox(
                    left:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    right:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px),
                    top: ResponsiveSize(
                        anchor: ResponsiveSize(
                            px: 400,
                            percentage: 50,
                            option: ResponsiveSizeOption.min),
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px,
                        position: ResponsivePositionOption.relative),
                    bottom:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
          ],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NodeLayoutDownTitleImplToJson(
        _$NodeLayoutDownTitleImpl instance) =>
    <String, dynamic>{
      'nodeLayoutElements':
          instance.nodeLayoutElements.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$NodeLayoutLeftImageImpl _$$NodeLayoutLeftImageImplFromJson(
        Map<String, dynamic> json) =>
    _$NodeLayoutLeftImageImpl(
      nodeLayoutElements: (json['nodeLayoutElements'] as List<dynamic>?)
              ?.map(
                  (e) => NodeLayoutElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            NodeLayoutElement.title(),
            NodeLayoutElement.image(
                responsiveBox: ResponsiveBox(
                    left: ResponsiveSize(
                        percentage: 0, option: ResponsiveSizeOption.percentage),
                    width: ResponsiveSize(
                        percentage: 50,
                        option: ResponsiveSizeOption.percentage),
                    top: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px),
                    bottom: ResponsiveSize(
                        px: 0, option: ResponsiveSizeOption.px))),
            NodeLayoutElement.content(
                responsiveBox: ResponsiveBox(
                    right: ResponsiveSize(
                        percentage: 0, option: ResponsiveSizeOption.percentage),
                    width: ResponsiveSize(
                        percentage: 50,
                        option: ResponsiveSizeOption.percentage),
                    top: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px),
                    bottom:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
          ],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NodeLayoutLeftImageImplToJson(
        _$NodeLayoutLeftImageImpl instance) =>
    <String, dynamic>{
      'nodeLayoutElements':
          instance.nodeLayoutElements.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$NodeLayoutRightImageImpl _$$NodeLayoutRightImageImplFromJson(
        Map<String, dynamic> json) =>
    _$NodeLayoutRightImageImpl(
      nodeLayoutElements: (json['nodeLayoutElements'] as List<dynamic>?)
              ?.map(
                  (e) => NodeLayoutElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [
            NodeLayoutElement.title(),
            NodeLayoutElement.image(
                responsiveBox: ResponsiveBox(
                    left: ResponsiveSize(
                        percentage: 50,
                        option: ResponsiveSizeOption.percentage),
                    right: ResponsiveSize(
                        percentage: 0, option: ResponsiveSizeOption.percentage),
                    top: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px),
                    bottom: ResponsiveSize(
                        px: 0, option: ResponsiveSizeOption.px))),
            NodeLayoutElement.content(
                responsiveBox: ResponsiveBox(
                    left: ResponsiveSize(
                        percentage: 0, option: ResponsiveSizeOption.percentage),
                    right: ResponsiveSize(
                        percentage: 50,
                        option: ResponsiveSizeOption.percentage),
                    top: ResponsiveSize(
                        px: defaultTitleHeight,
                        option: ResponsiveSizeOption.px),
                    bottom:
                        ResponsiveSize(px: 0, option: ResponsiveSizeOption.px)))
          ],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NodeLayoutRightImageImplToJson(
        _$NodeLayoutRightImageImpl instance) =>
    <String, dynamic>{
      'nodeLayoutElements':
          instance.nodeLayoutElements.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };
