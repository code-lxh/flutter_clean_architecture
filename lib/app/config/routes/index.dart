import 'package:flutter_clean_architecture/app/config/routes/router_name.dart';
import 'package:get/get.dart';

import '../../pages/home/home_page.dart';

List<GetPage> appRoutes = [
  GetPage(
    name: RouterName.home,
    page: () => HomePage(),
  ),
  GetPage(
    name: RouterName.homePage,
    page: () => HomePage(),
  ),
];
