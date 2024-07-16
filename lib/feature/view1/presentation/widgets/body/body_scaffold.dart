import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';

class BodyScaffold extends StatelessWidget {
  final Widget? child;

  const BodyScaffold({super.key, this.child});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.transparent,
        body: child ?? 0.h.spaceH,
      );
}
