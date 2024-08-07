import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/routemanager/routes.dart';
import 'package:moniepointmobile/feature/view2/presentation/view/secondview.dart';
import 'package:moniepointmobile/feature/view1/presentation/view/initialview.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext)> get iRoutes => {
        Routes.instance.initialView: (context) => const InitView(),
        Routes.instance.secondView: (context) => const SecondView(),
      };
}
