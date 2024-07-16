import 'package:flutter/widgets.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';

abstract class AnimationRepo {
  Future<Animation<double>> getSPwidth(void Function()? fn);

  Future<Animation<double>> getSPTextSize(void Function()? fn);

  Future<Animation<double>> getSPIconSize(void Function()? fn);

  Future<Animation<double>> getFadeCircleAvatar();

  Future<Animation<Offset>> getHiMarinaOffset();

  Future<Animation<Offset>> getLetsSelectYourPlace();

  Future<Animation<double>> getOrangeCircleSize(void Function()? fn);

  Future<Animation<double>> getOrangeCircleBuy(void Function()? fn);

  Future<Animation<double>> getOrangeCircleCount(void Function()? fn);

  Future<Animation<double>> getOrangeCircleOffers(void Function()? fn);

  Future<Animation<double>> getWhiteCircleSize(void Function()? fn);

  Future<Animation<double>> getWhiteCircleBuy(void Function()? fn);

  Future<Animation<double>> getWhiteCircleCount(void Function()? fn);

  Future<Animation<double>> getWhiteCircleOffers(void Function()? fn);

  Future<Animation<double>> getOrangeAnimatedCount(void Function()? fn);

  Future<Animation<double>> getWhiteAnimatedCount(void Function()? fn);
}

class AnimationRepository implements AnimationRepo {
  AnimationRepository._internal();
  static AnimationRepository instance = AnimationRepository._internal();
  @override

  ///saint petersburg container
  Future<Animation<double>> getSPwidth(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 130.w, addListener: fn);

  @override
  Future<Animation<double>> getSPTextSize(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 10.f, addListener: fn);

  @override
  Future<Animation<double>> getSPIconSize(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 15.h, addListener: fn);

  @override
  Future<Animation<double>> getFadeCircleAvatar() async => await Managers.animationsImpl.getFade();

  @override
  Future<Animation<Offset>> getHiMarinaOffset() async => await Managers.animationsImpl.updateOffsetValues(isCurved: false, isReverse: true, x: 0.0, y: 2.0);

  @override
  Future<Animation<Offset>> getLetsSelectYourPlace() async => await Managers.animationsImpl.updateOffsetValues(isCurved: false, isReverse: true, x: 0.0, y: 1.0);

  @override
  Future<Animation<double>> getOrangeCircleSize(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 94, addListener: fn);

  @override
  Future<Animation<double>> getOrangeCircleBuy(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 10.f, addListener: fn);

  @override
  Future<Animation<double>> getOrangeCircleCount(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 35.f, addListener: fn);

  @override
  Future<Animation<double>> getOrangeCircleOffers(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 10.f, addListener: fn);

  @override
  Future<Animation<double>> getWhiteCircleSize(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 135.w, addListener: fn);

  @override
  Future<Animation<double>> getWhiteCircleBuy(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 10.f, addListener: fn);

  @override
  Future<Animation<double>> getWhiteCircleCount(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 35.f, addListener: fn);

  @override
  Future<Animation<double>> getWhiteCircleOffers(void Function()? fn) async => await Managers.animationsImpl.getTurnsValue(y: 10.f, addListener: fn);

  @override
  Future<Animation<double>> getOrangeAnimatedCount(void Function()? fn) async => await Managers.animationsImpl.implementAnimatedCounter(fn, 2034);

  @override
  Future<Animation<double>> getWhiteAnimatedCount(void Function()? fn) async => await Managers.animationsImpl.implementAnimatedCounter(fn, 2034);
}
