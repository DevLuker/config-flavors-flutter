import 'package:config_flavor/app/constants.dart';
import 'package:config_flavor/app/flavors/base_flavor.dart';

class ProdFlavor implements BaseFlavor {
  @override
  String get baseUrl => baseUrlProd;

  @override
  String get sentryKey => keySentryProd;
}
