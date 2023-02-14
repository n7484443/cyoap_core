import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byLocale("en_us") +
      const {
        "en_us": {
          "choice" : "Choice",
          
          "fit" : "fit",
          "fill" : "fill",
          "pattern" : "pattern",
          "stretch" : "stretch",
        },
        "ko_kr": {
          "choice" : "선택지",
          
          "fit" : "맞춤",
          "fill" : "채움",
          "pattern" : "패턴",
          "stretch" : "늘리기",
        },
      };

  String get i18n {
    return localize(this, _t);
  }

  String fill(List<Object> params) => localizeFill(this, params);
}
