import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class NoteCategoryMenuList extends StatefulWidget {
  const NoteCategoryMenuList({
    super.key,
    required this.categoryController,
  });

  final TextEditingController categoryController;

  @override
  State<NoteCategoryMenuList> createState() => _NoteCategoryMenuListState();
}

class _NoteCategoryMenuListState extends State<NoteCategoryMenuList> {
  late String selectedCategory;

  @override
  Widget build(BuildContext context) {
    var data = context.watch<NoteProvider>().categories;

    var categories = [
      S.of(context).uncategorized,
      ...data.map((e) => e.name),
    ];

    selectedCategory = widget.categoryController.text.isNotEmpty
        ? widget.categoryController.text
        : categories[0];
    return DropdownMenuFormField(
      controller: widget.categoryController,
      initialSelection: selectedCategory,
      leadingIcon: Icon(
        Icons.category,
        color: ThemeHelper.iconColor(context),
      ),
      inputDecorationTheme: InputDecorationTheme(
        activeIndicatorBorder: BorderSide.none,
        border: InputBorder.none,
      ),
      textStyle: AppText.regular16(context),
      hintText: S.of(context).selectCategory,
      width: double.infinity,
      menuStyle: MenuStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.all(14)),
        maximumSize: WidgetStatePropertyAll(Size(double.infinity, 250)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
      ),
      onSelected: (value) {
        setState(() {
          selectedCategory = value!;
        });
      },
      dropdownMenuEntries: categories
          .map(
            (category) => DropdownMenuEntry(
              value: category,
              label: category,

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              labelWidget: Text(
                category,
                style: AppText.regular16(context),
              ),
              enabled: true,
              leadingIcon: Icon(
                Icons.category,
                size: 20,
                color: ThemeHelper.iconColor(context),
              ),
              trailingIcon: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: ThemeHelper.iconColor(context),
              ),
            ),
          )
          .toList(),
    );
  }
}
