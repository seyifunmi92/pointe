import 'package:flutter/widgets.dart';
// ignore_for_file: must_be_immutable


class AnimatedBuilderCustom extends StatelessWidget {
  Widget? child;
  Animation<double> turns;

  AnimatedBuilderCustom({super.key, this.child, required this.turns});

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: turns,
        builder: (context, child) => child ?? Container(),
      );
}
