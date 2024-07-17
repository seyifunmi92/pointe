import 'dart:math';
import 'package:flutter/widgets.dart';

abstract class Animations {
  initializeAnimation({required TickerProvider vsync, Duration? duration});

  initializeAnimation2({required TickerProvider vsync, Duration? duration});

  initializeAnimation3({required TickerProvider vsync, Duration? duration});

  updateOffsetValues({x, y, Curve? curve, required bool isCurved, required bool isReverse});

  updateOffsetValues2({x, y, Curve? curve, required bool isCurved, required bool isReverse});

  updateOffsetValues3({x, y, Curve? curve, required bool isCurved, required bool isReverse});

  Future<Animation<double>> getTurnsValue({double? x, required double? y, void Function()? addListener});

  Future<Animation<double>> getTurnsValue2({double? x, required double? y, void Function()? addListener});

  Future<Animation<double>> getTurnsValue3({double? x, required double? y, void Function()? addListener});

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

  ///animation controller
  late AnimationController _icontroller2;

  AnimationController get icontroller2 => _icontroller2;

  ///animation controller
  late AnimationController _icontroller3;

  AnimationController get icontroller3 => _icontroller3;

  @override

  ///initializze animation controller
  initializeAnimation({
    required TickerProvider vsync,
    Duration? duration,
  }) {
    ///intitialize controller
    _icontroller = AnimationController(vsync: vsync, duration: duration ?? const Duration(seconds: 4));

    ///tickerfuture set to forward
    _icontroller.forward();

    ///add listener to controller
    _icontroller.addListener(() => _icontroller.status == AnimationStatus.completed ? _icontroller.stop() : null);
  }

  @override

  ///initializze animation controller
  initializeAnimation2({
    required TickerProvider vsync,
    Duration? duration,
  }) {
    ///intitialize controller
    _icontroller2 = AnimationController(vsync: vsync, duration: duration ?? const Duration(seconds: 4));

    ///tickerfuture set to forward
    _icontroller2.forward();

    ///add listener to controller
    _icontroller2.addListener(() => _icontroller2.status == AnimationStatus.completed ? _icontroller2.stop() : null);
  }

  @override

  ///initializze animation controller
  initializeAnimation3({
    required TickerProvider vsync,
    Duration? duration,
  }) {
    ///intitialize controller
    _icontroller3 = AnimationController(vsync: vsync, duration: duration ?? const Duration(seconds: 1));

    ///tickerfuture set to forward
    _icontroller3.forward();

    ///add listener to controller
    _icontroller2.addListener(() => _icontroller2.status == AnimationStatus.completed ? _icontroller2.stop() : null);
  }

  @override

  ///update Offset values
  Future<Animation<Offset>> updateOffsetValues({x, y, Curve? curve, required bool isCurved, required bool isReverse}) async => Tween<Offset>(begin: isCurved ? Offset(x, y) : Offset.zero, end: isCurved ? Offset.zero : Offset(x, y)).animate(isCurved == true ? CurvedAnimation(parent: _icontroller, curve: curve ?? _curve!) : ReverseAnimation(_icontroller));

  @override

  ///update Offset values
  Future<Animation<Offset>> updateOffsetValues2({x, y, Curve? curve, required bool isCurved, required bool isReverse}) async => Tween<Offset>(begin: isCurved ? Offset(x, y) : Offset.zero, end: isCurved ? Offset.zero : Offset(x, y)).animate(isCurved == true ? CurvedAnimation(parent: _icontroller2, curve: curve ?? _curve!) : ReverseAnimation(_icontroller2));

  @override
  Future<Animation<Offset>> updateOffsetValues3({x, y, Curve? curve, required bool isCurved, required bool isReverse}) async => Tween<Offset>(begin: isCurved ? Offset(x, y) : Offset.zero, end: isCurved ? Offset.zero : Offset(x, y)).animate(isCurved == true ? CurvedAnimation(parent: _icontroller3, curve: curve ?? _curve!) : ReverseAnimation(_icontroller3));

  @override
  Future<Animation<double>> getTurnsValue({double? x, required double? y, void Function()? addListener}) async {
    Animation<double> t = Tween(begin: x ?? 0.0, end: y).animate(_icontroller)
      ..addListener(addListener!)
      ..addStatusListener((status) {});
    icontroller.forward();

    return t;
  }

  @override
  Future<Animation<double>> getTurnsValue2({double? x, required double? y, void Function()? addListener}) async {
    Animation<double> t = Tween(begin: x ?? 0.0, end: y).animate(_icontroller2)
      ..addListener(addListener!)
      ..addStatusListener((status) {});
    icontroller2.forward();

    return t;
  }

  @override
  Future<Animation<double>> getTurnsValue3({double? x, required double? y, void Function()? addListener}) async {
    Animation<double> t = Tween(begin: x ?? 0.0, end: y).animate(_icontroller3)
      ..addListener(addListener!)
      ..addStatusListener((status) {});
    icontroller3.forward();

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
