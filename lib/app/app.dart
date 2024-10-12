import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/routes/index.dart';
import 'config/routes/router_name.dart';
import 'config/ui/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      defaultTransition: Transition.rightToLeft,
      initialRoute: RouterName.home,
      getPages: appRoutes,
    );
  }
}
