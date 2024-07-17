import 'package:get_it/get_it.dart';
import '../managers/routemanager/routes.dart';
import 'package:moniepointmobile/core/app/app.dart';
import 'package:moniepointmobile/core/utils/apputils/utils.dart';
import 'package:moniepointmobile/core/managers/image_manager/images.dart';
import 'package:moniepointmobile/feature/view1/domain/logic/nav_logic.dart';
import 'package:moniepointmobile/core/common/animations/animationdata.dart';
import 'package:moniepointmobile/core/common/animations/animationclass.dart';
import 'package:moniepointmobile/core/managers/routemanager/namedroutes.dart';
import 'package:moniepointmobile/core/common/animations/animationrepository.dart';
import 'package:moniepointmobile/feature/view2/presentation/view/secondview.dart';
import 'package:moniepointmobile/feature/view1/presentation/view/initialview.dart';
import 'package:moniepointmobile/core/managers/thememanager/theme/appthemedata.dart';
import 'package:moniepointmobile/core/managers/animation_manager/initanimation.dart';

final getIt = GetIt.instance;

void initiateServiceLocator() {
  getIt

    ///app instance
    ..registerSingleton<MyApp>(MyApp.instance)

    ///intialize animation
    ..registerFactory<InitAnimation>(() => InitAnimation())

    ///routes
    ..registerSingleton<Routes>(Routes.instance)
    ..registerLazySingleton<AppRoutes>(() => AppRoutes())

    ///theme
    ..registerSingleton<AppTheme>(AppTheme.instance)

    ///views
    ..registerSingleton<InitView>(InitView.instance)
    ..registerSingleton<SecondView>(SecondView.instance)

    ///assets
    ..registerSingleton<ImageHelper>(ImageHelper.instance)

    ///utils
    ..registerSingleton<AppUtils>(AppUtils.instance)

    ///animations
    ..registerSingleton<Animations>(AnimationsImpl.instance)
    ..registerSingleton<AnimationsImpl>(AnimationsImpl.instance)
    ..registerSingleton<AnimationRepo>(AnimationRepository.instance)
    ..registerSingleton<AnimationRepository>(AnimationRepository.instance)
    ..registerSingleton<Animationdata>(Animationdata.instance)


    ///logic
    ..registerSingleton<NavigatorLogic>(NavigatorLogic.instance);
}
