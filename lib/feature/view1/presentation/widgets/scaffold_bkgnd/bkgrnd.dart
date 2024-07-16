import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';

class Bkgnd extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const Bkgnd({super.key, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight(),
      width: context.getWidth(),
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
        context.onPrimary,
        context.onSecondary.withOpacity(.8),
      ])),
      child: child ?? 0.h.spaceH,
    );
  }
}
