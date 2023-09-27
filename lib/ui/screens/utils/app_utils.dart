import 'package:flutter/material.dart';

class AppUtils {
  static void showCustomModalBottomSheet(BuildContext context, Widget child,
      {Color? bgColor}) {
    showModalBottomSheet(
      context: context,
      backgroundColor: bgColor ?? Theme.of(context).cardTheme.color,

      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      enableDrag: true,

      constraints:
      BoxConstraints(maxHeight: getDeviceSize(context).height * 0.8),
      builder: (context) => child,
    );
  }
  static Size getDeviceSize(BuildContext context) =>
      MediaQuery.of(context).size;
}