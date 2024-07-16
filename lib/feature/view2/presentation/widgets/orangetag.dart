import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';

class OrangeTag extends StatelessWidget {
  final String? timeInmins;
  final int? width;
  const OrangeTag({super.key, this.timeInmins, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        width!.w.spaceW,
        Container(
          height: 47.h,
          width: 70.w,
          decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
          child: Center(
            child: IText(
              value: "$timeInmins mn P",
              fontColor: ColorHelper.white,
              fontSize: 12.f,
            ),
          ),
        ),
      ],
    );
  }
}
