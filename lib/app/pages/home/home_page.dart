import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/config/routes/router_name.dart';
import 'package:flutter_clean_architecture/app/pages/widget/base_scaffold.dart';
import 'package:get/get.dart';

class HomePage extends BaseScaffold<HomeController> {
  const HomePage({super.key});

  @override
  String? get appBarTitle => "home";

  @override
  HomeController get controller => Get.put(HomeController());

  @override
  Widget buildBody(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            controller.onTap();
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}

class HomeController extends GetxController {
  void onTap() {
    Get.offAllNamed(RouterName.login);
  }
}
