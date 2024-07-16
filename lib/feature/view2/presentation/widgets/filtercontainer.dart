import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';

class FilterContainer extends StatelessWidget {
  const FilterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: Center(
        child: Icon(
          Icons.filter_alt,
          size: 30,
          color: ColorHelper.textColorLight,
        ),
      ),
    );
  }
}
