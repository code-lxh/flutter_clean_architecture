import 'package:get/get.dart';

import 'app_language.dart';
import 'en.dart';
import 'zh_cn.dart';
import 'zh_tw.dart';

class AppTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      AppLanguage.zhHans.toTag: zh_cn,
      AppLanguage.zhHant.toTag: zh_tw,
      AppLanguage.enUS.toTag: en,
    };
  }
}
