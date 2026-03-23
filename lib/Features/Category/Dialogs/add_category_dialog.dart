// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/View%20Model/category_provider.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class AddCategoryDialog extends StatefulWidget {
  const AddCategoryDialog({
    super.key,
    this.category,
    this.parent,
  });

  final CategoryModel? category;
  final BuildContext? parent;

  @override
  State<AddCategoryDialog> createState() => _AddCategoryDialogState();
}

class _AddCategoryDialogState extends State<AddCategoryDialog> {
  late final TextEditingController categoryController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool enable = false;

  late final BuildContext parent;

  @override
  void initState() {
    categoryController = TextEditingController(
      text: widget.category != null ? widget.category!.name : '',
    );
    parent = widget.parent ?? context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: CustomDialog(
        image: widget.category != null ? Assets.edit : Assets.addCategory,
        title: widget.category != null
            ? S.of(context).editCategory
            : S.of(context).addCategory,
        description: widget.category != null
            ? S.of(context).changeCategoryName
            : S.of(context).createCategoryDescription,
        confirmButtonColor: AppColors.logo,
        confirmButtonText: widget.category != null
            ? S.of(context).edit
            : S.of(context).add,
        confirmButtonIcon: widget.category != null ? Icons.edit : Icons.add,
        body: categoryField(),
        onConfirm: enable
            ? () async {
                if (formKey.currentState!.validate()) {
                  await parent.read<CategoryProvider>().upsertCategory(
                    CategoryModel(
                      name: categoryController.text,
                      id: widget.category?.id,
                      createdAt: widget.category?.createdAt,
                    ),
                  );
                  Navigator.of(context).pop();
                }
              }
            : null,
      ),
    );
  }

  TextFormField categoryField() {
    return TextFormField(
      controller: categoryController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.logo,
          ),
        ),
        hintText: S.of(context).categoryNameHint,
        prefixIcon: Icon(Icons.category),
      ),
      onChanged: (value) {
        log(categoryController.text);
        var current = enable;
        if (widget.category == null && value.isNotEmpty) {
          enable = true;
          if (current != enable) {
            setState(() {});
          }
        } else if (widget.category != null &&
            value.isNotEmpty &&
            value != widget.category?.name) {
          enable = true;
          if (current != enable) {
            setState(() {});
          }
        } else {
          enable = false;
          if (current != enable) {
            setState(() {});
          }
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return S.of(context).categoryNameEmpty;
        }
        return null;
      },
    );
  }
}
