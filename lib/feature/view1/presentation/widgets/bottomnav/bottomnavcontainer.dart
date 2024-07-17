import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:moniepointmobile/feature/view1/data/data_source/data.dart';
import 'package:moniepointmobile/feature/view1/domain/logic/nav_logic.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
import 'package:moniepointmobile/feature/view1/presentation/widgets/bottomnav/bottomnavlist.dart';

// ignore: must_be_immutable
class PositionedBottomNav extends StatefulWidget {

TickerProvider x;
void Function()? fn;
   PositionedBottomNav({super.key, required this.x, required this.fn});

  @override
  State<PositionedBottomNav> createState() => _PositionedBottomNavState();
}

class _PositionedBottomNavState extends State<PositionedBottomNav> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 60.h),
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: ColorHelper.blackcontainer2),
        child: Pad(
          child: Row(
            children: [
              ...bottomNavItems.map((e) => Pad(
                    child: Consumer<NavigatorLogic>(
                      builder: (context, value, child) => BottomNavList(
                          selectedItemColor: e.pageIndex == value.pageIndex ? Colors.amber : Colors.white.withOpacity(.7),
                          items: e,
                          onTapItem: () {
                            Managers.navlogic.updatePageSelection(widget.x, context, e.pageIndex!,widget.fn );
                            setState(() {});
                          }),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
