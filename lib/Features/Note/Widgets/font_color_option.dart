import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';

class FontColorOption extends StatelessWidget {
  const FontColorOption({
    super.key,
    required this.color,
    required this.isSelected,
    this.onTap,
  });

  final Color color;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 50),
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(
                  color: AppColors.logo,
                  width: 4,
                )
              : null,
          shape: BoxShape.circle,
        ),
        child: Badge(
          label: Icon(
            Icons.check,
            size: 20,
            color: Colors.white,
          ),
          backgroundColor: AppColors.logo,
          isLabelVisible: isSelected,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
}
