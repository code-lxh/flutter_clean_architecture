import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/build_app/build_config.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  HomePageController get controller => HomePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home ${BuildConfig.envName}"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              Scaffold(
                appBar: AppBar(
                  title: const Text('title'),
                ),
                body: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      print("${TextTheme()}");
                    },
                    child: Text('hello'),
                  ),
                ),
              ),
            );
          },
          child: Text('hello'),
        ),
      ),
    );
  }
}
