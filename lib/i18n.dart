import 'option.dart';

extension Localization on String {
  static final _t = const {
        "en": {
          "choice" : "Choice",
          
          "fit" : "fit",
          "fill" : "fill",
          "pattern" : "pattern",
          "stretch" : "stretch",
        },
        "ko": {
          "choice" : "선택지",
          
          "fit" : "맞춤",
          "fill" : "채움",
          "pattern" : "패턴",
          "stretch" : "늘리기",
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
