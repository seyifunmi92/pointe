import 'package:flutter/widgets.dart';
import 'package:moniepointmobile/core/managers/fonts_manager/fonts.dart';
import 'package:moniepointmobile/feature/view2/data/DTOs/cosyareasmodel.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/customtext/customtext.dart';

// ignore: must_be_immutable
class CosyList extends StatelessWidget {
  CosyAreas e;
  CosyList({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            e.icon,
            size: 23.h,
            color: context.textsecondary.withOpacity(.7),
          ),
          5.w.spaceW,
          IText(
            value: e.label,
            fontFamily: IFonts.nunito,
            fontColor: context.textsecondary.withOpacity(.8),

            fontSize: 9.f,
          ),
        ],
      ),
    );
  }
}
