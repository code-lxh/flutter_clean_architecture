import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/config/routes/router_name.dart';
import 'package:flutter_clean_architecture/app/pages/widgets/default_scaffold_mixin.dart';
import 'package:flutter_clean_architecture/app/pages/widgets/foo_dialog.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> with DefaultScaffoldMixin {
  HomePage({super.key});

  @override
  String? get title => "home";

  @override
  HomeController controller = HomeController();

  @override
  Widget buildBody(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                controller.onTap();
              },
              child: const Text("Logout"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.dialog(const FooDialog());
              },
              child: const Text("Dialog"),
            ),
          ],
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
