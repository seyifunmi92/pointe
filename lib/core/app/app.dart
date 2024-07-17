import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
// ignore_for_file: library_private_types_in_public_api

class MyApp extends StatefulWidget {
  const MyApp._internal();

  static const MyApp instance = MyApp._internal();
  static _MyAppState? of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentTheme = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: currentTheme,
      initialRoute: Managers.routes.initialView,
      routes: Managers.approutes.iRoutes,
      theme: Managers.theme.appLightTheme,
      darkTheme: Managers.theme.appDarkTheme,
      debugShowCheckedModeBanner: false,
    );
  }

  // //function to update current theme
  updateTheme(ThemeMode theme) {
    setState(() {
      currentTheme = theme;
    });

    print(currentTheme);
  }
}
