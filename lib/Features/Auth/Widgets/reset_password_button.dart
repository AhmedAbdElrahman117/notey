import 'package:flutter/material.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Features/Auth/Widgets/clickable_text.dart';
import 'package:notey/Features/Auth/reset_password_view.dart';
import 'package:notey/generated/l10n.dart';

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.lerp(
        AlignmentDirectional.centerStart,
        AlignmentDirectional.center,
        0.12,
      )!,
      child: ClickableText(
        onTap: () async {
          AppTransitions().pushTo(
            context,
            type: AppTransitionType.fadeSlideRight,
            to: ResetPasswordView(),
          );
        },
        clickableText: S.of(context).forgotPassword,
      ),
    );
  }
}
