import 'package:config_flavor/app/constants.dart';
import 'package:config_flavor/app/flavors/base_flavor.dart';

class DevFlavor implements BaseFlavor {
  @override
  String get baseUrl => baseUrlDev;

  @override
  String get sentryKey => keySentryDev;
}
