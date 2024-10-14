import 'base_flavor.dart';

class ProductionFlavor implements BaseFlavor {
  @override
  String get envName => 'production';

  @override
  String get baseUrl => 'https://api.github.com';
}
