import 'package:flutter/material.dart';
import 'package:get/get.dart';

///
/// 参考:
/// (Material theme builder)[https://material-foundation.github.io/material-theme-builder/]
/// (Material 3: Color system)[https://m3.material.io/styles/color/system/overview]
///
class AColors {
  static ColorScheme get colorScheme {
    return _isLightMode ? lightColorScheme : darkColorScheme;
  }

  static ColorScheme get lightColorScheme {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff415f91),
      onPrimary: Color(0xffd6e3ff),
      secondary: Color(0xff565f71),
      onSecondary: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff2e3036),
    );
  }

  static ColorScheme get darkColorScheme {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaac7ff),
      onPrimary: Color(0xff0a305f),
      secondary: Color(0xffbec6dc),
      onSecondary: Color(0xff283141),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      surface: Color(0xff111318),
      onSurface: Color(0xffe2e2e9),
    );
  }

  static bool get _isLightMode {
    return Get.theme.brightness == Brightness.light;
  }
}
