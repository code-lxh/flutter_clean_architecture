import 'flavor/base_flavor.dart';

class BuildConfig {
  static String envName = "";
  static String baseUrl = "";

  static init(BaseFlavor flavor) {
    BuildConfig.envName = flavor.envName;
    BuildConfig.baseUrl = flavor.baseUrl;
  }
}
