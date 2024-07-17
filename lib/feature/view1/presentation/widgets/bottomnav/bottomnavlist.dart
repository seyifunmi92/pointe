import 'package:flutter/material.dart';
import 'package:moniepointmobile/feature/view1/data/DTOs/bottomnavmodels.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';

// ignore: must_be_immutable
class BottomNavList extends StatelessWidget {
  BottomNavItems? items;
  void Function()? onTapItem;
  Color? selectedItemColor;
  bool? isSelected;
  BottomNavList({super.key, this.items, this.onTapItem, this.selectedItemColor, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.w),
      child: InkWell(
        onTap: onTapItem,
        child: Icon(
          items?.icon,
          color: selectedItemColor,
          size: 21.h,
        ),
      ),
    );
  }
}
