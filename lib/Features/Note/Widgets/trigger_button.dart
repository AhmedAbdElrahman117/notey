import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Note/Model/style_model.dart';

class TriggerStyleButton extends StatefulWidget {
  const TriggerStyleButton({
    super.key,
    required this.style,
    this.onPressed,
    required this.isSelected,
  });

  final StyleModel style;
  final bool isSelected;
  final void Function()? onPressed;
  @override
  State<TriggerStyleButton> createState() => _TriggerStyleButtonState();
}

class _TriggerStyleButtonState extends State<TriggerStyleButton> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Tooltip(
        message: widget.style.tooltipMessage,
        child: IconButton(
          onPressed: widget.onPressed,
          style: IconButton.styleFrom(
            backgroundColor: widget.isSelected ? AppColors.logo : null,
            foregroundColor: widget.isSelected
                ? Colors.white
                : ThemeHelper.iconColor(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          icon: Icon(
            widget.style.icon,
            size: 24,
          ),
        ),
      ),
    );
  }

  void check() {}
}
