import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
