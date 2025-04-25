import 'package:flutter_clean_architecture/app/app_runner.dart';

import '../flavor/dev.dart';

Future<void> main() async {
  appRunner(DevFlavor());
}
