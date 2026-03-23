import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
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
        elevation: 2,
        backgroundColor: AppColors.logo,
        shadowColor: ThemeHelper.shadowColor(context),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      child: Text(
        text,
        style: AppText.regular20(context).copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
