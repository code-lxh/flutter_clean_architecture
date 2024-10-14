import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';
import 'package:flutter_clean_architecture/run_app/build_config.dart';
import 'package:flutter_clean_architecture/run_app/flavor/production.dart';

void main() {
  BuildConfig.init(ProductionFlavor());
  runApp(const App());
}
