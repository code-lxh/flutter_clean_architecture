import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/internationalization/index.dart';
import 'config/routes/index.dart';
import 'config/routes/router_name.dart';
import 'config/ui/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
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
      initialRoute: RouterName.login,
      getPages: appRoutes,
    );
  }
}
