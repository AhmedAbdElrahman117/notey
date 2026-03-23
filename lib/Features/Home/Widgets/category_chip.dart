import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.title,
    required this.isSelected,
    this.onSelected,
  });

  final String title;
  final bool isSelected;
  final void Function(bool value)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: isSelected,
      selectedColor: AppColors.logo,
      checkmarkColor: Colors.white,
      elevation: 8,
      pressElevation: 12,
      onSelected: onSelected,
      label: Text(
        title,
        style: AppText.regular14(
          context,
          color: isSelected ? Colors.white : null,
        ),
      ),
    );
  }
}
