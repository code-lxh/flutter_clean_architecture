import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/app.dart';

import '../build_config.dart';
import '../flavor/dev.dart';

void main() {
  BuildConfig.init(DevFlavor());
  runApp(const App());
}
