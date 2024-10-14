import 'base_flavor.dart';

class DevFlavor implements BaseFlavor {
  @override
  String get envName => 'dev';

  @override
  String get baseUrl => 'https://dev.api.com';
}
