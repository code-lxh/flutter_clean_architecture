import 'dart:ui';

class AppLanguage {
  /// 繁體中文
  static Locale get zhHant {
    return const Locale.fromSubtags(
      languageCode: "zh",
      countryCode: "TW",
    );
  }

  /// English
  static Locale get enUS {
    return const Locale.fromSubtags(
      languageCode: "en",
      countryCode: "US",
    );
  }

  /// 簡體中文
  static Locale get zhHans {
    return const Locale.fromSubtags(
      languageCode: "zh",
      countryCode: "CN",
    );
  }
}

extension LocaleExt on Locale {
  String get toTag {
    return "${languageCode}_${countryCode}";
  }
}
