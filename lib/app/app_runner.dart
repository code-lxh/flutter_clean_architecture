import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/build_app/flavor/base_flavor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../build_app/build_config.dart';
import 'app.dart';

void appRunner(BaseFlavor flavor) {
  WidgetsFlutterBinding.ensureInitialized();

  BuildConfig.init(flavor);
  ScreenUtil.ensureScreenSize();

  runApp(const App());
}
