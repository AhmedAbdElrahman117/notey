import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Features/Category/Dialogs/add_category_dialog.dart';
import 'package:notey/generated/l10n.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        AppDialogs().show(
          context,
          AddCategoryDialog(parent: context),
        );
      },
      label: Text(
        S.of(context).addNewCategory,
        style: AppText.regular16(context).copyWith(
          color: Colors.white,
        ),
      ),
      icon: Icon(
        Icons.add,
        color: Colors.white,
      ),
      backgroundColor: AppColors.logo,
      foregroundColor: Colors.white,
      elevation: 12,
    );
  }
}
