import 'package:flutter/material.dart';
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
        title: const Text('home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              Scaffold(
                appBar: AppBar(
                  title: const Text('title'),
                ),
                body: const Center(
                  child: Text('hello'),
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
