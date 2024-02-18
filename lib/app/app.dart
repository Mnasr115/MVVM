import 'package:flutter/material.dart';
import 'package:my_advanced_projects/presentation/resources/themes_manager.dart';


class MyApp extends StatefulWidget {

  const MyApp._internal();//named constructor
  static const MyApp _instance = MyApp._internal(); //singleton or single instance

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
