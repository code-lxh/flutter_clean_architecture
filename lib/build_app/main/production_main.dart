import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';

import '../build_config.dart';
import '../flavor/production.dart';

void main() {
  BuildConfig.init(ProductionFlavor());
  runApp(const App());
}
