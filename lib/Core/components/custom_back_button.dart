import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: AppColors.logo,
      ),
      alignment: Alignment.center,
      tooltip: 'Back',
      onPressed: () => Navigator.pop(context),
    );
  }
}
