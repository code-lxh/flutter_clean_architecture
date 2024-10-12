import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/ui/theme.dart';
import 'pages/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ATheme.lightTheme,
      darkTheme: ATheme.darkTheme,
      defaultTransition: Transition.rightToLeft,
      home: const HomePage(),
    );
  }
}
