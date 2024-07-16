import 'package:flutter/widgets.dart';
// ignore_for_file: must_be_immutable


class FadeTransitionCustom extends StatelessWidget {
  late Animation<double>? fade;
  Widget child;
  FadeTransitionCustom({super.key, required this.fade, required this.child});

  @override
  Widget build(BuildContext context) => FadeTransition(
        opacity: fade!,
        child: child,
      );
}
