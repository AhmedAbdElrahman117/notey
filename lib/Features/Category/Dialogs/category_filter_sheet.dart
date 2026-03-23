import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Category/View%20Model/category_provider.dart';
import 'package:notey/Features/Settings/Widgets/language_option.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class CategoryFilterSheet extends StatefulWidget {
  const CategoryFilterSheet({
    super.key,
    this.parentContext,
  });

  final BuildContext? parentContext;

  @override
  State<CategoryFilterSheet> createState() => _CategoryFilterSheetState();
}

class _CategoryFilterSheetState extends State<CategoryFilterSheet> {
  late String filter;
  late String ascending;
  late BuildContext currentContext;

  @override
  void initState() {
    filter = LocalPreferences.instance.getString("category_filter") ?? 'name';
    ascending =
        LocalPreferences.instance.getString("category_ascending") ?? 'asc';

    currentContext = widget.parentContext ?? context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).filterCategories,
            style: AppText.bold20(context),
          ),
          const SizedBox(height: 12),
          Text(
            S.of(context).filterCategoriesDescription,
            style: AppText.regular16(
              context,
              color: ThemeHelper.descriptionColor(context),
            ),
          ),
          const SizedBox(height: 20),

          RadioGroup(
            groupValue: filter,
            onChanged: (value) async {
              LocalPreferences.instance.setString(
                "category_filter",
                value ?? filter,
              );
              setState(() {
                filter = value ?? filter;
              });
              currentContext.read<CategoryProvider>().orderCategories();
            },
            child: Column(
              children: [
                SwitchOption(value: 'name', title: S.of(context).filterName),
                SwitchOption(
                  value: 'createdAt',
                  title: S.of(context).filterCreatedAtOption,
                ),
              ],
            ),
          ),
          Divider(height: 24),
          RadioGroup(
            groupValue: ascending,
            onChanged: (value) {
              LocalPreferences.instance.setString(
                "category_ascending",
                value ?? ascending,
              );
              setState(() {
                ascending = value ?? ascending;
              });
              currentContext.read<CategoryProvider>().orderCategories();
            },
            child: Column(
              children: [
                SwitchOption(value: 'asc', title: S.of(context).ascending),
                SwitchOption(value: 'desc', title: S.of(context).descending),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
