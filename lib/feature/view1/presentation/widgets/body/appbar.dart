import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/image_handler/imager.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';
// ignore_for_file: must_be_immutable

class Bar extends StatefulWidget {
  double width;
  double fontSize;
  double iconSize;
  Animation<double> fade;
  Bar({super.key, required this.width, required this.fontSize, required this.iconSize, required this.fade});

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40.h,
                width: widget.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: context.primarycontainer,
                ),
                child: Pad(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: widget.iconSize,
                        color: context.textsecondary.withOpacity(.7),
                      ),
                      IText(
                        value: "Saint Petersburg",
                        fontSize: widget.fontSize,
                        fontColor: context.textsecondary.withOpacity(.7),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          FadeTransition(
          opacity: widget.fade,
            child: ImageLoader(
              radius: 30,
              imagePath: Managers.images.headshot,
              isCircleAvatar: true,
            ),
          ),
        ],
      );
}
