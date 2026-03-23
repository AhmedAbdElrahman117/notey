import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.iconColor,
  });

  final IconData icon;
  final String title;
  final String description;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: iconColor ?? ThemeHelper.iconColor(context),
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: AppText.semiBold20(context),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: AppText.regular16(
            context,
            color: ThemeHelper.descriptionColor(context),
          ),
        ),
      ],
    );
  }
}
