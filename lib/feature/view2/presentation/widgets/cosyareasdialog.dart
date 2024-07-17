import 'package:flutter/material.dart';
import 'package:moniepointmobile/feature/view2/data/data_source/data.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';
import 'package:moniepointmobile/feature/view2/presentation/widgets/cosyareaslist.dart';

class CosyAreaDialog extends StatelessWidget {
  const CosyAreaDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.getHeight() - 410.h,
        ),
        Row(
          children: [
            25.w.spaceW,
            InkWell(
              onTap: () => context.close,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: context.primarycontainer,
                ),
                height: 180.h,
                width: 140.w,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 5.w, top: 12.h),
                  child: Column(
                    children: [
                      ...cosy.map((e) => CosyList(e: e)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
