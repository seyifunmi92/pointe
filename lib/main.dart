import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/app/servicelocator.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';

void main() {
  initiateServiceLocator();

  runApp(Managers.app);
}
