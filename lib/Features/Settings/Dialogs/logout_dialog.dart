import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/generated/l10n.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key, this.onConfirm});

  final void Function()? onConfirm;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      image: Assets.logout,
      title: S.of(context).logout,
      description: S.of(context).logoutConfirmation,
      confirmButtonColor: Colors.red,
      confirmButtonText: S.of(context).logout,
      confirmButtonIcon: Icons.logout,
      onConfirm: onConfirm,
      buttonType: ButtonType.both,
    );
  }
}
