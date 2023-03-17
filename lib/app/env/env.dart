import 'package:config_flavor/app/flavors/base_flavor.dart';
import 'package:config_flavor/app/flavors/dev_flavor.dart';
import 'package:config_flavor/app/flavors/prod_flavor.dart';

class Environment {
  static final Environment _env = Environment._internal();
  factory Environment() => _env;
  Environment._internal();

  static const String dev = 'development';
  static const String prod = 'production';
  BaseFlavor? flavor;

  void initialize(String env) => flavor = _getFlavor(env);
  BaseFlavor _getFlavor(String env) {
    switch (env) {
      case Environment.prod:
        return ProdFlavor();

      default:
        return DevFlavor();
    }
  }
}
