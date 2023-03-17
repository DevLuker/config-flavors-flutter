import 'package:config_flavor/app/app.dart';
import 'package:config_flavor/app/env/env.dart';
import 'package:flutter/material.dart';

void main() {
  const env = String.fromEnvironment(
    'development',
    defaultValue: Environment.dev,
  );

  Environment().initialize(env);
  runApp(const MyApp());
}
