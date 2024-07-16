import 'package:flutter/material.dart';
import 'package:moniepointmobile/core/managers/thememanager/colors/colorhelpers.dart';

class LocationAvatar extends StatelessWidget {
  const LocationAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white.withOpacity(.3),
      radius: 30,
      child: const Center(
        child: Icon(
          Icons.location_on,
          color: ColorHelper.white,
        ),
      ),
    );
  }
}
