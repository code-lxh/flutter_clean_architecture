import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'config/intl/index.dart';
import 'config/routes/router_name.dart';
import 'config/routes/routes.dart';
import 'config/ui/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 844), // iPhone 6.1 inch(iPhone 12, 12 Pro)
    );

    return GetMaterialApp(
      locale: const Locale('cn'),
      supportedLocales: const [
        Locale('en'),
        Locale('zh', 'CN'),
        Locale('zh', 'TW')
      ],
      translations: AppTranslations(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      defaultTransition: Transition.rightToLeft,
      initialRoute: RouterName.home,
      getPages: appRoutes,
    );
  }
}
