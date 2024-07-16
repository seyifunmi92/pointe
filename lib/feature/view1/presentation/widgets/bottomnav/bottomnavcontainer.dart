import 'package:flutter/material.dart';
import 'package:moniepointmobile/feature/view1/data/data_source/data.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/bottomnav/bottomnavlist.dart';

class PositionedBottomNav extends StatelessWidget {
  const PositionedBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Container(
        height: 55.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: ColorHelper.blackcontainer2),
        child: Pad(
          child: Row(
            children: [
              ...bottomNavItems.map((e) => Pad(
                    child: BottomNavList(
                      items: e,
                      onTapItem: () => print(e.item),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
