import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/app/servicelocator.dart';

import 'core/app/app.dart';

void main() {
  initiateServiceLocator();

  runApp(getIt<MyApp>());
}
