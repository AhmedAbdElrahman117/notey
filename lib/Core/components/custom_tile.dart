import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    this.subtitle,
    this.tileColor,
    this.trailingIcon,
  });

  final IconData icon;
  final IconData? trailingIcon;
  final String title;
  final VoidCallback? onTap;
  final String? subtitle;
  final Color? tileColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: tileColor != null
            ? Colors.white
            : ThemeHelper.iconColor(context),
      ),
      title: Text(
        title,
        style: AppText.semiBold18(
          context,
          color: tileColor != null ? Colors.white : null,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: AppText.regular16(
                context,
                color: tileColor != null ? Colors.white : null,
              ),
            )
          : null,
      trailing: Icon(
        trailingIcon ?? Icons.chevron_right,
        color: tileColor != null
            ? Colors.white
            : ThemeHelper.iconColor(context),
      ),
      tileColor: tileColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      onTap: onTap,
    );
  }
}
