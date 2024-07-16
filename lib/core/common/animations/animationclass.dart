import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';

abstract class Animations {
  initializeAnimation({required TickerProvider vsync, Duration? duration});

  updateOffsetValues({x, y, Curve? curve, required bool isCurved, required bool isReverse});

  Future<Animation<double>> getTurnsValue({double? x, required double? y, void Function()? addListener});

  Future<Animation<double>> getFade({CurvedAnimation? c, Curve? curve});
}

class AnimationsImpl implements Animations {
  AnimationsImpl._internal();
  static AnimationsImpl instance = AnimationsImpl._internal();

  ///animation controller
  late AnimationController _icontroller;

  AnimationController get icontroller => _icontroller;

  ///offsets
  late Animation<Offset> _ioffset;

  Animation<Offset> get ioffset => _ioffset;

  ///turns
  late Animation<double> _iturns;

  Animation<double> get turns => _iturns;

  ///fade transition
  late Animation<double> _fade;

  Animation<double> get fade => _fade;

  ///curve
  Curve? _curve;

  Curve get curve => _curve!;

  @override

  ///initializze animation controller
  initializeAnimation({
    required TickerProvider vsync,
    Duration? duration,
  }) {
    ///intitialize controller
    _icontroller = AnimationController(vsync: vsync, duration: duration ?? const Duration(seconds: 2));

    ///tickerfuture set to forward
    _icontroller.forward();

    ///add listener to controller
    _icontroller.addListener(() => _icontroller.status == AnimationStatus.completed ? _icontroller.stop() : null);
  }

  @override

  ///update Offset values
  Future<Animation<Offset>> updateOffsetValues({x, y, Curve? curve, required bool isCurved, required bool isReverse}) async => Tween<Offset>(begin: isCurved ? Offset(x, y) : Offset.zero, end: isCurved ? Offset.zero : Offset(x, y)).animate(isCurved == true ? CurvedAnimation(parent: _icontroller, curve: curve ?? _curve!) : ReverseAnimation(_icontroller));

  @override
  Future<Animation<double>> getTurnsValue({double? x, required double? y, void Function()? addListener}) async {
    Animation<double> t = Tween(begin: x ?? 0.0, end: y).animate(_icontroller)
      ..addListener(addListener!)
      ..addStatusListener((status) {});
    icontroller.forward();

    return t;
  }

  @override

  ///create fade transition
  Future<Animation<double>> getFade({CurvedAnimation? c, Curve? curve}) async => c ?? CurvedAnimation(parent: _icontroller, curve: curve ?? Curves.bounceInOut);

  ///implement animated counter
  Future<Animation<double>> implementAnimatedCounter(void Function()? fn, maxvalue) async {
    double value = 0.0;
    Random rnd = Random();
    value += rnd.nextInt(maxvalue) + 2;
    Animation<double> t = Tween<double>(
      begin: 0,
      end: value,
    ).animate(CurvedAnimation(parent: _icontroller, curve: Curves.fastOutSlowIn));
    _icontroller.forward();

    return t;
  }
}
