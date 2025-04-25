import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// | name            | font size(pt) | line height(pt) | font weight |
// | --------------- | :-----------: | :-------------: | :---------: |
// | Display Large   |      57       |       64        |     400     |
// | Display Medium  |      45       |       52        |     400     |
// | Display Small   |      36       |       44        |     400     |
// | Headline Large  |      32       |       40        |     400     |
// | Headline Medium |      28       |       32        |     400     |
// | Headline Small  |      24       |       32        |     400     |
// | Title Large     |      22       |       28        |     400     |
// | Title Medium    |      16       |       24        |     500     |
// | Title Small     |      14       |       20        |     500     |
// | Body Large      |      16       |       24        |     400     |
// | Body Medium     |      14       |       20        |     400     |
// | Body Small      |      12       |       16        |     400     |
// | Label Large     |      14       |       20        |     500     |
// | Label Medium    |      12       |       16        |     500     |
// | Label Small     |      11       |       16        |     500     |
class ATextStyle {
  static TextStyle bodyLarge([Color? textColor]) {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      height: 1.5,
    );
  }

  static TextStyle bodyMedium([Color? textColor]) {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      height: 1.42,
      color: textColor,
    );
  }

  static TextStyle bodySmall([Color? textColor]) {
    return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      height: 1.33,
    );
  }

  static TextTheme get textTheme {
    return TextTheme(
      bodyLarge: bodyLarge(),
      bodyMedium: bodyMedium(),
      bodySmall: bodySmall(),
    );
  }
}
