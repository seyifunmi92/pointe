import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:moniepointmobile/core/utils/extensions/context_extensions.dart';

class AppUtils {
  AppUtils._internal();

  static AppUtils instance = AppUtils._internal();

  ///show app dialog
  Future<T?> showAppDialog<T>(
    BuildContext context, {
    Key? key,
    bool dismissible = true,
    Widget? child,
  }) async {
    return await showGeneralDialog<T>(
      context: context,
      barrierDismissible: dismissible,
      barrierLabel: 'Alert Dialog',
      pageBuilder: (context, animation, secondaryAnimation) {
        return ScaleTransition(
          scale: animation,
          child: Dialog(
            insetPadding: const EdgeInsets.symmetric(vertical: 25),
            backgroundColor: Colors.transparent,
            child: child ?? Container(),
          ),
        );
      },
    );
  }

  ///show app dialog
  Future<T?> showCupertino<T>(
    BuildContext context, {
    Widget? child,
  }) async {
    return await showCupertinoModalPopup(context: context, barrierDismissible: true, useRootNavigator: true, builder: (context) => child ?? 1.h.spaceH);
  }
}
