import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/image_handler/imager.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/bottomnav/swipelabel.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/bottomnav/bottomnavcontainer.dart';

class BNav extends StatelessWidget {
  const BNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: context.primarycontainer, borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          height: 550.h,
          width: context.getWidth(),
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.w, 10.h, 8.w, 10.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //   Image.asset(Managers.images.kitchen),
                  Stack(
                    children: [
                      ImageLoader(
                        imageWidth: context.getWidth(),
                        radius: 20,
                        imagePath: Managers.images.kitchen,
                      ),
                      SwipeOnImage(
                        label: "Gladkowa St., 25",
                        width: context.getWidth() / .7,
                        height: 180,
                      ),
                    ],
                  ),

                  10.h.spaceH,

                  ///2nd line for bottomnav images
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          ImageLoader(
                            radius: 20,
                            imagePath: Managers.images.flower,
                            imageHeight: 270.h,
                            fit: BoxFit.fitHeight,
                            imageWidth: (context.getWidth() - 20.w) / 2,
                          ),
                          SwipeOnImage(
                            label: "Gubina St., 11",
                            width: context.getWidth() - 380.w / 2,
                            height: 215,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              ImageLoader(
                                radius: 20,
                                imagePath: Managers.images.greenroom,
                                imageHeight: 255.h / 2,
                                fit: BoxFit.fitHeight,
                                imageWidth: (context.getWidth() - 20.w) / 2,
                              ),
                              SwipeOnImage(
                                label: "Trefoleva St., 43",
                                width: context.getWidth() - 330.w / 2,
                                height: 77,
                              ),
                            ],
                          ),
                          8.h.spaceH,
                          Stack(
                            children: [
                              ImageLoader(
                                radius: 20,
                                imagePath: Managers.images.livingroom,
                                imageHeight: 255.h / 2,
                                fit: BoxFit.fitHeight,
                                imageWidth: (context.getWidth() - 20.w) / 2,
                              ),
                              SwipeOnImage(
                                label: "Sedova St., 22",
                                width: context.getWidth() - 330.w / 2,
                                height: 77,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

      ///bottom nav bar
      const Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: PositionedBottomNav(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      )
    ]);
  }
}
