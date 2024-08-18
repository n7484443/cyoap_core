import 'option.dart';

extension Localization on String {
  static final _t = const {
    "en": {
      "choice": "Choice",
      "fit": "fit",
      "fill": "fill",
      "pattern": "pattern",
      "stretch": "stretch",
      "none": "none",
      "solid": "solid",
      "dotted": "dotted",
      "dashed": "dashed",

      "gradient": "gradient",
      "linear": "linear",
      "radial": "radial",
      "sweep": "sweep",

      "left": "left",
      "center": "center",
      "right": "right",

      "int": "Integer",
      "double": "Double",
      "String": "String",
      "bool": "Boolean(true, false)",
      "array": "Array",

      "circle": "Circle",
      "thinRectangle": "Thin Rectangle",
    },
    "ko": {
      "choice": "선택지",
      "fit": "맞춤",
      "fill": "채움",
      "pattern": "패턴",
      "stretch": "늘리기",
      "none": "없음",
      "solid": "실선",
      "dotted": "점선",
      "dashed": "파선",

      "gradient": "그라데이션",
      "linear": "선형",
      "radial": "방사형",
      "sweep": "극좌표형",

      "left": "왼쪽 정렬",
      "center": "중앙 정렬",
      "right": "오른쪽 정렬",

      "int": "int(정수)",
      "double": "double(소수)",
      "String": "String(문자열)",
      "bool": "bool(true|참, false|거짓)",
      "array": "array(배열)",
      
      "circle": "원형",
      "thinRectangle": "얇은 직사각형",
    }
  };

  String get i18n {
    Map<String, String> data;
    if (!_t.containsKey(Option().locale)) {
      data = _t["en"]!;
    } else {
      data = _t[Option().locale]!;
    }

    return data[this] ?? 'error';
  }
}
