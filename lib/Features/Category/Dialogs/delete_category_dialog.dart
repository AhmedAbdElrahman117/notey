// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/View%20Model/category_provider.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class DeleteCategoryDialog extends StatelessWidget {
  const DeleteCategoryDialog({
    super.key,
    required this.category,
    required this.parent,
  });

  final CategoryModel category;
  final BuildContext parent;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      image: Assets.deleteImage,
      title: S.of(context).deleteCategory,
      description: S.of(context).deleteCategoryConfirmation,
      confirmButtonColor: Colors.red,
      confirmButtonText: S.of(context).delete,
      confirmButtonIcon: Icons.delete,
      onConfirm: () async {
        await parent.read<CategoryProvider>().deleteCategory(category);
        Navigator.of(context).pop();
      },
    );
  }
}
