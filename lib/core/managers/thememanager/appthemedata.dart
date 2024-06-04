import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._internal();

  static AppTheme instance = AppTheme._internal();

  ThemeMode get mode => ThemeMode.system;

  ThemeData get appLightTheme => ThemeData();

  ThemeData get appDarkTheme => ThemeData();
}
