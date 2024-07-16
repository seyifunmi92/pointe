import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';

class AppTheme {
  AppTheme._internal();

  static AppTheme instance = AppTheme._internal();

  ThemeMode get mode => ThemeMode.system;

  ///returns light themedata
  ThemeData get appLightTheme => ThemeData(primaryColor: ColorHelper.black, scaffoldBackgroundColor: ColorHelper.white, colorScheme: ColorScheme.light(primary: ColorHelper.white, secondary: ColorHelper.white, onPrimary: ColorHelper.backgroundLight1, onSecondary: ColorHelper.backgroundLight2, onTertiary: ColorHelper.backgroundLight3, primaryContainer: ColorHelper.whitecontainer1, secondaryContainer: ColorHelper.whitecontainer2, tertiaryContainer: ColorHelper.whitecontainer3, primaryFixed: ColorHelper.blackcontainer1, primaryFixedDim: ColorHelper.blackcontainer3, onSecondaryFixed: ColorHelper.white), appBarTheme: const AppBarTheme(color: ColorHelper.appBarLight));

  ///returns dark themdata
  ThemeData get appDarkTheme => ThemeData(primaryColor: ColorHelper.white, scaffoldBackgroundColor: ColorHelper.black, primaryColorLight: ColorHelper.blackcontainer1, colorScheme: ColorScheme.dark(primary: ColorHelper.black, secondary: ColorHelper.white2, onPrimary: ColorHelper.black, onSecondary: ColorHelper.blackcontainer1, onTertiary: ColorHelper.black, primaryContainer: ColorHelper.blackcontainer1, secondaryContainer: ColorHelper.blackcontainer2, tertiaryContainer: ColorHelper.blackcontainer3, primaryFixed: ColorHelper.white, primaryFixedDim: ColorHelper.backgroundLight2, onSecondaryFixed: ColorHelper.blackcontainer3), appBarTheme: const AppBarTheme(color: ColorHelper.appBarDark));
}
