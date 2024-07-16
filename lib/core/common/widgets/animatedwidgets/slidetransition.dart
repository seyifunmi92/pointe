import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class SlideTransitionCustom extends StatelessWidget {
  Animation<Offset> offset;
  Widget child;
  SlideTransitionCustom({super.key, required this.offset, required this.child});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: child,
    );
  }
}
