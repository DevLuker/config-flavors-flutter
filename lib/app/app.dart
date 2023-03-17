import 'package:config_flavor/app/env/env.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final flavor = Environment().flavor?.baseUrl ?? 'not found';
    return MaterialApp(
      title: 'Flavor Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(flavor),
          ),
        ),
      ),
    );
  }
}
