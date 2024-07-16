import 'package:moniepointmobile/core/app/app.dart';
import 'package:moniepointmobile/core/app/servicelocator.dart';
import 'package:moniepointmobile/core/utils/apputils/utils.dart';
import 'package:moniepointmobile/core/managers/routemanager/routes.dart';
import 'package:moniepointmobile/core/managers/image_manager/images.dart';
import 'package:moniepointmobile/core/common/animations/animationdata.dart';
import 'package:moniepointmobile/core/common/animations/animationclass.dart';
import 'package:moniepointmobile/core/managers/routemanager/namedroutes.dart';
import 'package:moniepointmobile/core/common/animations/animationrepository.dart';
import 'package:moniepointmobile/feature/view2/presentation/view/secondview.dart';
import 'package:moniepointmobile/feature/view1/presentation/view/initialview.dart';
import 'package:moniepointmobile/core/managers/thememanager/theme/appthemedata.dart';
import 'package:moniepointmobile/core/managers/animation_manager/initanimation.dart';

class Managers {
  static MyApp app = getIt<MyApp>();
  static InitAnimation initanimation = getIt<InitAnimation>();
  static Routes routes = getIt<Routes>();
  static AppRoutes approutes = getIt<AppRoutes>();
  static AppTheme theme = getIt<AppTheme>();
  static InitView view1 = getIt<InitView>();
  static SecondView view2 = getIt<SecondView>();
  static ImageHelper images = getIt<ImageHelper>();
  static AppUtils utils = getIt<AppUtils>();
  static Animations animations = getIt<Animations>();
  static AnimationsImpl animationsImpl = getIt<AnimationsImpl>();
  static AnimationRepo animationrepo = getIt<AnimationRepo>();
  static AnimationRepository animationrepository = getIt<AnimationRepository>();
  static Animationdata animationdata = getIt<Animationdata>();
}
