import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';

class ITextField extends StatelessWidget {
  const ITextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50.h,
        width: 200.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search_sharp,
              color: ColorHelper.textColorLight,
              size: 25.h,
            ),
            border: InputBorder.none,
            label: IText(
              value: "Saint Petersburg",
              fontSize: 11.f,
              fontColor: ColorHelper.textColorLight,
            ),
          ),
        ),
      ),
    );
  }
}
