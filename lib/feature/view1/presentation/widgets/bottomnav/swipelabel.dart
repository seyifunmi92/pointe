import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/fonts_manager/fonts.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';

class SwipeOnImage extends StatelessWidget {
  final String? label;
  final double? width;
  final int? height;
  const SwipeOnImage({super.key, this.label, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        height!.h.spaceH,
        Pad(
          child: Container(
            width: width ?? context.getWidth(),
            height: 40.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(60), color: Colors.white.withOpacity(.5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                0.h.spaceH,
                IText(
                  value: label ?? "",
                  fontFamily: IFonts.nunito,
                  fontSize: 10.f,
                  fontWeight: FontWeight.w500,
                  fontColor: ColorHelper.black,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: context.container,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: context.textprimary.withOpacity(.5),
                    size: 15.h,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
