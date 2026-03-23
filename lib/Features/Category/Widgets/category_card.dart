import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notey/Core/app_date_time.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Category/Dialogs/delete_category_dialog.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/Dialogs/add_category_dialog.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ThemeHelper.noteColor(context),
      elevation: 4,
      shadowColor: ThemeHelper.shadowColor(context),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: BorderDirectional(
            start: BorderSide(color: category.cardColor, width: 6),
            bottom: BorderSide(color: category.cardColor, width: 1.2),
            end: BorderSide(color: category.cardColor, width: 1.2),
            top: BorderSide(color: category.cardColor, width: 1.2),
          ),
        ),
        child: Column(
          spacing: 8,
          children: [
            Row(
              children: [
                Icon(
                  Icons.category,
                  color: ThemeHelper.iconColor(context),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    category.name,
                    style: AppText.semiBold18(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    AppDialogs().show(
                      context,
                      AddCategoryDialog(
                        category: category,
                        parent: context,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: category.cardColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    AppDialogs().show(
                      context,
                      DeleteCategoryDialog(
                        category: category,
                        parent: context,
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Row(
              spacing: 12,
              children: [
                Icon(
                  FontAwesomeIcons.clock,
                  size: 20,
                  color: ThemeHelper.iconColor(context),
                ),
                Expanded(
                  child: Text(
                    category.createdAt?.timeAgo() ?? "",
                    style: AppText.bold14(
                      context,
                      color: ThemeHelper.descriptionColor(context),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
