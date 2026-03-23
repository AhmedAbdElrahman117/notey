import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AppDialogs<T> {
  dynamic show(BuildContext context, Widget pageBuilder) async {
    var res = await showGeneralDialog<T>(
      context: context,
      barrierDismissible: true,
      barrierLabel: "dialog",
      transitionDuration: 300.ms,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return pageBuilder;
      },
    );

    if (res != null) {
      return res;
    }
  }

  dynamic showSheet(
    BuildContext context,
    Widget pageBuilder, [
    Color? barrierColor,
    bool? isDissmissible = true,
  ]) async {
    var res = await showModalBottomSheet<T>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      isDismissible: isDissmissible!,
      showDragHandle: true,
      barrierColor: barrierColor,
      barrierLabel: "sheet",
      elevation: 16,
      enableDrag: true,
      useSafeArea: true,
      builder: (context) {
        return SafeArea(
          child: pageBuilder,
        );
      },
    );

    if (res != null) {
      return res;
    }
  }
}
