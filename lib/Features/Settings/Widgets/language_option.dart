import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';

class SwitchOption<T> extends StatelessWidget {
  const SwitchOption({
    super.key,
    required this.value,
    required this.title,
    this.flag,
  });

  final T value;
  final String title;
  final String? flag;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<T>(
      value: value,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      activeColor: AppColors.logo,
      title: Text(
        title,
        style: AppText.regular16(context),
      ),
      secondary: flag != null
          ? Image.asset(
              flag!,
              width: 32,
              height: 32,
            )
          : null,
    );
  }
}
