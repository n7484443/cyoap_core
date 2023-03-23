import 'option.dart';

extension Localization on String {
  static final _t = const {
        "en": {
          "choice" : "Choice",
          
          "fit" : "fit",
          "fill" : "fill",
          "pattern" : "pattern",
          "stretch" : "stretch",

          "none": "none",
          "solid": "solid",
          "dotted": "dotted",
        },
        "ko": {
          "choice" : "선택지",
          
          "fit" : "맞춤",
          "fill" : "채움",
          "pattern" : "패턴",
          "stretch" : "늘리기",

          "none": "없음",
          "solid": "실선",
          "dotted": "점선",
        },
      };

  String get i18n {
    Map<String, String> data;
    if(!_t.containsKey(Option().locale)){
      data = _t["en"]!;
    }else{
      data = _t[Option().locale]!;
    }

    return data[this] ?? 'error';
  }
}
