import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
//routes
  Future<void> pushNamed(String route, {dynamic arguments}) async => await Navigator.of(this).pushNamed(route, arguments: arguments);

  Future<void> pushReplacement(String route, {dynamic arguments}) async => await Navigator.of(this).pushReplacementNamed(route, arguments: arguments);

  Future<void> pop() async => Navigator.of(this).pop();


  ///layout
  num get figmaHeight => 800;

  num get figmaWidth => 300;

  Size getAppSize() => MediaQuery.of(this).size;

  getWidth() => getAppSize().width;

  getHeight() => getAppSize().height;

  h(num value) => (getAppSize().height) / (figmaHeight / value);

  w(num value) => (getAppSize().width) / (figmaWidth / value);

  f(num value) {
    double a = getAppSize().height;
    double b = getAppSize().width;
    return a > b ? a / (figmaHeight / value) : b / (figmaWidth / value);
  }

  /// Color handler
  Color get primaryColor => Theme.of(this).primaryColor;

  Color get secondaryColor => Theme.of(this).colorScheme.secondary;

  Color get scaffold => Theme.of(this).scaffoldBackgroundColor;

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color get onTetiary => Theme.of(this).colorScheme.onTertiary;

  Color get primarycontainer => Theme.of(this).colorScheme.primaryContainer;

  Color get secondarycontainer => Theme.of(this).colorScheme.onSecondary;

  Color get tetiarycontainer => Theme.of(this).colorScheme.tertiaryContainer;

  Color get textprimary => Theme.of(this).colorScheme.primaryFixed;

  Color get textsecondary => Theme.of(this).colorScheme.primaryFixedDim;

  Color get container => Theme.of(this).colorScheme.secondaryFixed;
}

extension ISizer on int {
  MediaQueryData get mq => MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);

  num get figmaHeight => 800;

  num get figmaWidth => 300;

  num get sTATUSBAR => mq.padding.top;

  num get bOTTOMBAR => mq.padding.bottom;

  num get dEVICEHEIGHT => mq.size.height;

  num get dEVICEWIDTH => mq.size.width;

  double get h => dEVICEHEIGHT / (figmaHeight / this);

  double get w => dEVICEWIDTH / (figmaWidth / this);

  double get f => h > w ? h : w;

  double get d => toDouble();
}

extension Spacer on double {
  Widget get spaceH => SizedBox(
        height: this,
      );

  Widget get spaceW => SizedBox(
        width: this,
      );
}

extension RemoveSpaces on String {
  String get removeSpaces => replaceAll(" ", "");
}

extension Nav on BuildContext {
  Future<void> get close async => Navigator.pop(this);
}
