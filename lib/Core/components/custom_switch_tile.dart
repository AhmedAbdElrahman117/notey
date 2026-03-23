import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class CustomSwitchTile extends StatelessWidget {
  const CustomSwitchTile({
    super.key,
    required this.value,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onChanged,
  });

  final bool value;
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function(bool value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: value,
      activeThumbColor: AppColors.logo,
      secondary: Icon(
        icon,
        color: isEnable(ThemeHelper.iconColor(context)),
      ),
      title: Text(
        title,
        style: AppText.semiBold18(context).copyWith(color: isEnable()),
      ),
      subtitle: Text(
        subtitle,
        style: AppText.regular16(context, color: isEnable(Colors.grey)),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onChanged: onChanged,
    );
  }

  Color? isEnable([Color? color]) {
    if (onChanged == null) {
      return Colors.grey.shade400;
    } else {
      return color;
    }
  }
}
