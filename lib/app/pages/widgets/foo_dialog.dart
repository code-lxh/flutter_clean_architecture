import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/config/ui/shapes.dart';

class FooDialog extends StatelessWidget {
  const FooDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: kDialogShape,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: const Text("some foo message"),
      ),
    );
  }
}
