import 'package:flutter_clean_architecture/app/config/routes/router_name.dart';
import 'package:flutter_clean_architecture/app/pages/login/login_page.dart';
import 'package:get/get.dart';

import '../../pages/home/home_page.dart';

List<GetPage> appRoutes = [
  GetPage(
    name: RouterName.login,
    page: () => LoginPage(),
  ),
  GetPage(
    name: RouterName.homePage,
    page: () => const HomePage(),
  ),
];
