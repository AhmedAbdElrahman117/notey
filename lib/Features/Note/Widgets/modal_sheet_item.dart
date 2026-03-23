import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class ModalSheetItem extends StatelessWidget {
  const ModalSheetItem({
    super.key,
    required this.title,
    required this.icon,
    this.color,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: color != null ? Colors.white : null,
      ),
      title: Text(
        title,
        style: AppText.regular18(
          context,
          color: color != null ? Colors.white : null,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: color != null ? Colors.white : ThemeHelper.iconColor(context),
      ),
      tileColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      onTap: onTap,
    );
  }
}
