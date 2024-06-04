import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
//navigations
  Future<void> pushNamed(String route, {dynamic arguments}) async => await Navigator.of(this).pushNamed(route, arguments: arguments);

  Future<void> pushReplacement(String route, {dynamic arguments}) async => await Navigator.of(this).pushReplacementNamed(route, arguments: arguments);

  Future<void> pop() async => Navigator.of(this).pop();
}
