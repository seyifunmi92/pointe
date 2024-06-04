import 'package:flutter/material.dart';
import '../managers/routemanager/routes.dart';
import 'package:moniepointmobile/core/app/servicelocator.dart';
import 'package:moniepointmobile/core/managers/routemanager/namedroutes.dart';
import 'package:moniepointmobile/core/managers/thememanager/appthemedata.dart';

class MyApp extends StatelessWidget {
  const MyApp._internal();

  static const MyApp instance = MyApp._internal();
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: getIt<AppTheme>().mode,
      initialRoute: getIt<Routes>().initialView,
      routes: getIt<AppRoutes>().iRoutes,
      theme: getIt<AppTheme>().appLightTheme,
      darkTheme: getIt<AppTheme>().appDarkTheme,
    );
  }
}
