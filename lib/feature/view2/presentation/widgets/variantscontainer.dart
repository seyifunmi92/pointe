import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';
// ignore_for_file: must_be_immutable

class VariantsContainer extends StatelessWidget {
  IconData? icon;
  String? label;
  VariantsContainer({super.key, this.icon = Icons.menu_sharp, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 120.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white.withOpacity(.3),
      ),
      child: Pad(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: ColorHelper.white,
              size: 20.h,
            ),
            IText(
              value: "List of variants",
              fontColor: ColorHelper.white,
              fontSize: 11.f,
            ),
          ],
        ),
      ),
    );
  }
}
