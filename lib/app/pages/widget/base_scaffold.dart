import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseScaffold<T> extends GetView<T> {
  const BaseScaffold({super.key});

  String? get appBarTitle => null;

  Color? get scaffoldBackgroundColor => null;

  Widget? buildBody(BuildContext context);

  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: appBarTitle == null ? null : Text(appBarTitle ?? ''),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(context),
      backgroundColor: scaffoldBackgroundColor,
    );
  }
}
