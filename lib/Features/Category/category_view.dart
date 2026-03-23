import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_back_button.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Category/Dialogs/category_filter_sheet.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/View%20Model/category_provider.dart';
import 'package:notey/Features/Category/Widgets/add_category_button.dart';
import 'package:notey/Features/Category/Widgets/category_card.dart';
import 'package:notey/Features/Home/Widgets/empty_notes_view.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      builder: (context, child) {
        var data = context.watch<CategoryProvider>().categories;
        return Scaffold(
          appBar: AppBar(
            leading: CustomBackButton(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: CustomScrollView(
              slivers: [
                header(context),
                data.isEmpty
                    ? SliverFillRemaining(
                        fillOverscroll: true,
                        hasScrollBody: false,
                        child: EmptyNotesView(
                          icon: Icons.category,
                          iconColor: AppColors.logo,
                          title: S.of(context).noCategoriesYet,
                          description: S.of(context).noCategoriesDescription,
                        ),
                      )
                    : listBody(data),
                SliverToBoxAdapter(
                  child: SafeArea(
                    child: SizedBox(height: data.isEmpty ? 0 : 75),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: AddCategoryButton(),
        );
      },
    );
  }

  SliverList listBody(List<CategoryModel> data) {
    return SliverList.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CategoryCard(
            category: data[index],
          ),
        );
      },
    );
  }

  SliverToBoxAdapter header(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).categoriesTitle,
              style: AppText.bold24(context),
            ),
            IconButton(
              onPressed: () {
                AppDialogs().showSheet(
                  context,
                  CategoryFilterSheet(
                    parentContext: context,
                  ),
                );
              },
              icon: Icon(
                Icons.filter_list,
                size: 28,
                color: ThemeHelper.iconColor(context),
              ),
            ),
          ],
        ),
        subtitle: Text(
          S.of(context).categoriesSubtitle,
          style: AppText.regular18(
            context,
            color: ThemeHelper.descriptionColor(context),
          ),
        ),
      ),
    );
  }
}
