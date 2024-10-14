import 'package:get/get.dart';

import 'en.dart';
import 'zh_cn.dart';
import 'zh_tw.dart';

class AppTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'zh-cn': zh_cn,
      'zh-tw': zh_tw,
      'en': en,
    };
  }
}
