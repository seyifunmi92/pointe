import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/orangetag.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/textfield.dart';
import 'package:moniepointmobile/core/common/widgets/reuseables/padding/padding.dart';
import 'package:moniepointmobile/core/managers/singleton_managers.dart/singletons.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/locationavatar.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/cosyareasdialog.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/filtercontainer.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/variantscontainer.dart';

class SecondView extends StatefulWidget {
  const SecondView._internal();

  static SecondView instance = const SecondView._internal();
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ///background map
        Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitHeight, image: AssetImage(Managers.images.map)))),

        ///scaffold
        Scaffold(
          backgroundColor: Colors.black87.withOpacity(.7),
          body: Column(
            children: [
              60.h.spaceH,

              ///appbar
              Pad(
                width: 20.w,
                child: Row(
                  children: [
                    const ITextField(),
                    5.w.spaceW,
                    const FilterContainer(),
                  ],
                ),
              ),

              60.h.spaceH,

              const OrangeTag(
                timeInmins: "10.3",
              ),

              10.h.spaceH,

              const OrangeTag(
                width: 120,
                timeInmins: "11",
              ),

              const OrangeTag(
                width: 190,
                timeInmins: "11",
              ),

              30.h.spaceH,

              const OrangeTag(
                width: 20,
                timeInmins: "11",
              ),
              30.h.spaceH,

              const OrangeTag(
                width: 200,
                timeInmins: "11",
              ),

              30.h.spaceH,

              const OrangeTag(
                width: 150,
                timeInmins: "11",
              ),

              60.h.spaceH,

              Pad(
                width: 20.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(onTap: () => Managers.utils.showAppDialog(context, child: const CosyAreaDialog()), child: const LocationAvatar()),
                    VariantsContainer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
