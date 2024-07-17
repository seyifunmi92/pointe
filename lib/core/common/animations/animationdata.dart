import 'dart:developer';
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

  Animation<double>? _imageslide1;

  get imageslide1 => _imageslide1;

  Animation<double>? _imageslideText1;

  get imageslideText1 => _imageslideText1;

  Animation<double>? _imageslide2;

  get imageslide2 => _imageslide2;

  Animation<double>? _imageslide3;

  Animation<double>? _labelRadius;

  get labelRadius => _labelRadius;

  get imageslide3 => _imageslide3;

  Animation<Offset>? _bottomnavoffset;

  get bottomnavoffset => _bottomnavoffset;

  ///orange containers

  Animation<double>? _oContainer1;

  get oContainer1 => _oContainer1;

  Animation<double>? _oContainer2;

  get oContainer2 => _oContainer2;

  Animation<double>? _oContainer3;

  get oContainer3 => _oContainer3;

  Animation<double>? _oContainer4;

  get oContainer4 => _oContainer4;

  Animation<double>? _oContainer5;

  get oContainer5 => _oContainer5;

  Animation<double>? _oContainer6;

  get oContainer6 => _oContainer6;

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

  updateAllData2(void Function()? fn) async {
    _imageslide1 = await Managers.animationrepo.getImage1labelsize(fn);

    _imageslideText1 = await Managers.animationrepo.getImageSizeText1(fn);

    _imageslide2 = await Managers.animationrepo.getImage2labelsize(fn);

    _imageslide3 = await Managers.animationrepo.getImage3labelsize(fn);

    _bottomnavoffset = await Managers.animationrepo.getBottomNavOffset();

    _labelRadius = await Managers.animationrepo.getLabelRadius(fn);

    _oContainer1 = await Managers.animationrepo.getOC1(fn);
  }

  updateAllData3(void Function()? fn) async {
    _oContainer1 = await Managers.animationrepo.getOC1(fn);
  }

  ///updateData after few seconds\
  updateData3again(void Function()? fn)async{

  _oContainer1 = await Managers.animationrepository.getOC2(fn);
  
  
  }
}
