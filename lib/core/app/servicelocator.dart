import 'package:get_it/get_it.dart';
import '../managers/routemanager/routes.dart';
import 'package:moniepointmobile/core/app/app.dart';
import 'package:moniepointmobile/core/managers/routemanager/namedroutes.dart';
import 'package:moniepointmobile/core/managers/thememanager/appthemedata.dart';
import 'package:moniepointmobile/core/managers/animation_manager/initanimation.dart';
// ignore_for_file: avoid_single_cascade_in_expression_statements



final getIt = GetIt.instance;

void initiateServiceLocator() {
  getIt
    ..registerFactory<InitAnimation>(() => InitAnimation())
    ..registerSingleton<Routes>(Routes.instance)
    ..registerSingleton<MyApp>(MyApp.instance)
    ..registerLazySingleton<AppRoutes>(() => AppRoutes())
    ..registerSingleton<AppTheme>(AppTheme.instance);
}
