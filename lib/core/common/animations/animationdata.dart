import 'package:flutter/widgets.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';

class Animationdata {
  Animationdata._internal();
  static Animationdata instance = Animationdata._internal();

  Animation<double>? _spContainerWidth;

  get spContainerWidth => _spContainerWidth;

  Animation<double>? _spTextSize;

  get spTextSize => _spTextSize;

  Animation<double>? _spiconSize;

  get spiconSize => _spiconSize;

  Animation<double>? _fadeCircleAvatar;

  get fadeCircleAvatar => _fadeCircleAvatar;

  Animation<Offset>? _hiMarinaOffset;

  get hiMarinaOffset => _hiMarinaOffset;

  Animation<Offset>? _letsSelectYourPlaceOffset;

  get letsSelectYourPlaceOffset => _letsSelectYourPlaceOffset;

  Animation<double>? _orangeCircle;

  get orangeCircle => _orangeCircle;

  Animation<double>? _orangeCircleBuy;

  get orangeCircleBuy => _orangeCircleBuy;

  Animation<double>? _orangeCircleCount;

  get orangeCircleCount => _orangeCircleCount;

  Animation<double>? _orangeCircleOffers;

  get orangeCircleOffers => _orangeCircleOffers;

  Animation<double>? _whiteCircle;

  get whiteCircle => _whiteCircle;

  Animation<double>? _whiteCircleRent;

  get whiteCircleRent => _whiteCircleRent;

  Animation<double>? _whiteCircleCount;

  get whiteCircleCount => _whiteCircleCount;

  Animation<double>? _whiteCircleOffers;

  get whiteCircleOffers => _whiteCircleOffers;

  Animation<double>? _orangeCircleCounter;

  get orangeCircleCounter => _orangeCircleCounter;

  Animation<double>? _whiteCircleCounter;

  get whiteCircleCounter => _whiteCircleCounter;

  ///update all data
  updateAllData(void Function()? fn) async {
    _spContainerWidth = await Managers.animationrepo.getSPwidth(fn);

    _spTextSize = await Managers.animationrepo.getSPTextSize(fn);

    _spiconSize = await Managers.animationrepo.getSPTextSize(fn);

    _fadeCircleAvatar = await Managers.animationrepo.getFadeCircleAvatar();

    _hiMarinaOffset = await Managers.animationrepo.getHiMarinaOffset();

    _letsSelectYourPlaceOffset = await Managers.animationrepo.getLetsSelectYourPlace();

    _orangeCircle = await Managers.animationrepo.getOrangeCircleSize(fn);

    _orangeCircleBuy = await Managers.animationrepo.getOrangeCircleBuy(fn);

    _orangeCircle = await Managers.animationrepo.getOrangeCircleSize(fn);

    _orangeCircleCount = await Managers.animationrepo.getOrangeCircleCount(fn);

    _orangeCircleOffers = await Managers.animationrepo.getOrangeCircleOffers(fn);

    _whiteCircle = await Managers.animationrepo.getWhiteCircleSize(fn);

    _whiteCircleRent = await Managers.animationrepo.getWhiteCircleBuy(fn);

    _whiteCircleCount = await Managers.animationrepo.getWhiteCircleCount(fn);

    _whiteCircleOffers = await Managers.animationrepo.getWhiteCircleOffers(fn);

    _orangeCircleCounter = await Managers.animationrepo.getOrangeAnimatedCount(fn);

    _whiteCircleCounter = await Managers.animationrepo.getWhiteAnimatedCount(fn);
  }
}
