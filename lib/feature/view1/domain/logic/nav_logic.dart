import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/app/app.dart';
import 'package:moniepointmobile/feature/view1/domain/enums/themes.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';

class NavigatorLogic extends ChangeNotifier {
  NavigatorLogic._internal();
  static NavigatorLogic instance = NavigatorLogic._internal();

  factory NavigatorLogic() {
    return instance;
  }

  bool? _selectInitPage;

  bool? get selectInitPage => _selectInitPage;

  bool? _select2ndPage;

  bool? get select2ndPage => _select2ndPage;

  int? _pageIndex;

  int? get pageIndex => _pageIndex;

  updatePageSelection(TickerProvider x, BuildContext context, int selectedPageIndex, void Function()? fn) {
    _pageIndex = selectedPageIndex;
    updateAction(x, context, _pageIndex!, fn);
  }

  updateAction(TickerProvider x, context, int index, void Function()? fn) {
    switch (index) {
      case 3:
        return switchTheme(context, itheme);

      case 2:
        return routeToInitView(context);

      case 1:
        return replaceTo2ndView(x, fn);
    }

    notifyListeners();
  }

  ///route replacement to init view
  routeToInitView(BuildContext context) {
    Managers.animationsImpl.icontroller.dispose();
    context.pushReplacement(Managers.routes.initialView);
  }

  ///replace view to map view
  replaceTo2ndView(TickerProvider x, fn) {
    _select2ndPage = true;
    Managers.animationsImpl.icontroller2.dispose();
    Managers.animations.initializeAnimation2(vsync: x);
    Managers.animationdata.updateAllData2((fn));
    notifyListeners();
  }

  ///switch app theme
  switchTheme(BuildContext context, ThemeEnum theme) {
    switch (theme) {
      case ThemeEnum.light:
        return setDarkMode(context);

      case ThemeEnum.dark:
        return setLightMode(context);

      case ThemeEnum.system:
        return setSystemMode(context);
    }
  }

  ///set light mode
  setLightMode(context) {
    MyApp.of(context)!.updateTheme(ThemeMode.light);
    itheme = ThemeEnum.light;
    Managers.utils.showSnackBar(context, "Switched to light mode");
  }

  ///set dark mode
  setDarkMode(context) {
    MyApp.of(context)!.updateTheme(ThemeMode.dark);
    itheme = ThemeEnum.dark;
    Managers.utils.showSnackBar(
      context,
      "Switched to dark mode",
    );
  }

  ///set system mode
  setSystemMode(context) {
    MyApp.of(context)!.updateTheme(ThemeMode.system);
    itheme = ThemeEnum.system;
  }

  disposevariables() {
    _select2ndPage = null;
    _selectInitPage = true;
    _pageIndex = 2;
  }
}
