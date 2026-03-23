import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class NoteUtilButton extends StatelessWidget {
  const NoteUtilButton({
    super.key,
    required this.icon,
    required this.label,
    this.onPressed,
  });

  final IconData icon;
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        onPressed: onPressed,
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        icon: Column(
          spacing: 4,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 30,
              color: onPressed == null
                  ? ThemeHelper.descriptionColor(context)
                  : ThemeHelper.iconColor(context),
            ),
            Text(
              label,
              style: AppText.regular14(context),
            ),
          ],
        ),
      ),
    );
  }
}
