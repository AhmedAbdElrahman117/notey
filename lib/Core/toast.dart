import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:notey/generated/l10n.dart';
import 'package:toastification/toastification.dart';

class Toast {
  static void showSuccess({String? title, required String message}) {
    toastification.show(
      applyBlurEffect: true,
      autoCloseDuration: 2500.milliseconds,
      type: ToastificationType.success,
      showIcon: true,
      closeOnClick: true,
      showProgressBar: true,
      title: Text(title ?? S.current.success),
      description: Text(message),
      style: ToastificationStyle.flatColored,
      foregroundColor: Colors.black,
    );
  }

  static void showFailed({String? title, required String message}) {
    toastification.show(
      applyBlurEffect: true,
      autoCloseDuration: 2500.milliseconds,
      type: ToastificationType.error,
      closeOnClick: true,
      showProgressBar: true,
      showIcon: true,
      title: Text(title ?? S.current.error),
      description: Text(message),
      style: ToastificationStyle.flatColored,
      foregroundColor: Colors.black,
    );
  }
}
