import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/fonts_manager/fonts.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/body/appbar.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
import 'package:moniepointmobile/core/common/widgets/animatedwidgets/animatedbuilder.dart';
import 'package:moniepointmobile/core/common/widgets/animatedwidgets/slidetransition.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/body/body_scaffold.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/bottomnav/bottomnav.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/scaffold_bkgnd/bkgrnd.dart';

class InitView extends StatefulWidget {
  const InitView._internal();

  static InitView instance = const InitView._internal();
  const InitView({super.key});

  @override
  State<InitView> createState() => _InitViewState();
}

class _InitViewState extends State<InitView> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Managers.animationsImpl.initializeAnimation(vsync: this);
    Managers.animationdata.updateAllData(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    // Managers.animationsImpl.icontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          ///background widget
          const Bkgnd(),

          ///scaffold returns app body
          BodyScaffold(
            child: Pad(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  60.h.spaceH,
                  Bar(
                    width: Managers.animationdata.spContainerWidth.value,
                    fontSize: Managers.animationdata.spTextSize.value,
                    iconSize: Managers.animationdata.spiconSize.value,
                    fade: Managers.animationdata.fadeCircleAvatar,
                  ),
                  20.h.spaceH,
                  SlideTransitionCustom(
                    offset: Managers.animationdata.hiMarinaOffset,
                    child: IText(
                      value: "Hi, Marina",
                      fontSize: 20.f,
                      fontColor: context.textsecondary.withOpacity(.8),
                    ),
                  ),
                  7.h.spaceH,
                  SlideTransitionCustom(
                    offset: Managers.animationdata.letsSelectYourPlaceOffset,
                    child: IText(
                      value: "Let's select your\nperfect place",
                      fontSize: 27.f,
                      fontColor: context.textprimary,
                      fontFamily: IFonts.nunito,
                      align: TextAlign.start,
                    ),
                  ),

                  25.h.spaceH,

                  ///row widget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///orange circle
                      CircleAvatar(
                        radius: Managers.animationdata.orangeCircle.value,
                        backgroundColor: Colors.orange,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            13.h.spaceH,
                            IText(
                              value: "BUY",
                              fontColor: ColorHelper.white,
                              fontFamily: IFonts.nunito,
                              fontWeight: FontWeight.w800,
                              fontSize: Managers.animationdata.orangeCircleBuy.value,
                            ),
                            20.h.spaceH,
                            IText(
                              value: Managers.animationdata.orangeCircleCounter.value.toStringAsFixed(0),
                              fontColor: ColorHelper.white,
                              fontFamily: IFonts.nunito,
                              fontSize: Managers.animationdata.orangeCircleCount.value,
                              fontWeight: FontWeight.bold,
                            ),
                            0.h.spaceH,
                            IText(
                              value: "Offers",
                              fontColor: ColorHelper.white,
                              fontFamily: IFonts.nunito,
                              fontSize: Managers.animationdata.orangeCircleOffers.value,
                            ),
                          ],
                        ),
                      ),

                      ///white container
                      Container(
                        height: Managers.animationdata.whiteCircle.value,
                        width: Managers.animationdata.whiteCircle.value,
                        decoration: BoxDecoration(color: context.primarycontainer, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            13.h.spaceH,
                            IText(
                              value: "RENT",
                              fontColor: context.textsecondary.withOpacity(.8),
                              fontFamily: IFonts.nunito,
                              fontWeight: FontWeight.w800,
                              fontSize: Managers.animationdata.whiteCircleRent.value,
                            ),
                            20.h.spaceH,
                            IText(
                              value: Managers.animationdata.whiteCircleCounter.value.toStringAsFixed(0),
                              fontColor: context.textsecondary.withOpacity(.8),
                              fontFamily: IFonts.nunito,
                              fontSize: Managers.animationdata.whiteCircleCount.value,
                              fontWeight: FontWeight.bold,
                            ),
                            0.h.spaceH,
                            InkWell(
                              onTap: () => Managers.utils.showCupertino(context, child: const BNav()),
                              child: IText(
                                value: "Offers",
                                fontColor: context.textsecondary.withOpacity(.8),
                                fontFamily: IFonts.nunito,
                                fontSize: Managers.animationdata.whiteCircleOffers.value,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  10.h.spaceH,

                  ///swipe label container
                ],
              ),
            ),
          ),
        ],
      );
}
