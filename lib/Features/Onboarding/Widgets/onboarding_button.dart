import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.logo,
        foregroundColor: Colors.white,
      ),
      child: Text(
        text,
        style: AppText.regular16(context).copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
