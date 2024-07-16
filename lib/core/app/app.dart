import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();

  static const MyApp instance = MyApp._internal();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: Managers.theme.mode,
      initialRoute: Managers.routes.initialView,
      routes: Managers.approutes.iRoutes,
      theme: Managers.theme.appLightTheme,
      darkTheme: Managers.theme.appDarkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
