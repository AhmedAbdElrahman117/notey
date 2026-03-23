import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/generated/l10n.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Home/Widgets/no_results_found.dart';
import 'package:notey/Features/Home/Widgets/note.dart';

class NoteSearchDelegate extends SearchDelegate<int> {
  NoteSearchDelegate({
    required this.searchItems,
    required this.categories,
  });

  final List<NoteModel> searchItems;

  final List<CategoryModel> categories;

  List<NoteModel> res = [];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeHelper.isDarkMode(context)
        ? ThemeData(
            brightness: Brightness.dark,
            inputDecorationTheme: InputDecorationTheme(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ThemeHelper.iconColor(context),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.logo,
                ),
              ),
            ),
          )
        : ThemeData(
            brightness: Brightness.light,
            inputDecorationTheme: InputDecorationTheme(
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ThemeHelper.iconColor(context),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.logo,
                ),
              ),
            ),
          );
  }

  @override
  String? get searchFieldLabel => S.current.searchNotePlaceholder;

  @override
  bool get autocorrect => false;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color: ThemeHelper.readBackgroundColor(context),
      child: res.isEmpty
          ? NoResultsFound()
          : ListView.builder(
              itemCount: res.length,
              padding: EdgeInsets.symmetric(vertical: 24),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Note(
                  categories: categories,
                  note: res[index],
                  showMenu: false,
                  showCategory: false,
                  showDate: false,
                  showSync: false,
                ),
              ),
            ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    filterSuggestions();
    return res.isEmpty
        ? NoResultsFound()
        : ListView.builder(
            itemCount: res.length,
            padding: EdgeInsets.symmetric(vertical: 24),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Note(
                categories: categories,
                note: res[index],
                showMenu: false,
                showCategory: false,
                showDate: false,
                showSync: false,
              ),
            ),
          );
  }

  void filterSuggestions() {
    res.clear();
    res.addAll(
      searchItems.where(
        (element) =>
            element.title.toLowerCase().contains(query.toLowerCase()) ||
            element.content.toPlainText().toLowerCase().contains(
              query.toLowerCase(),
            ),
      ),
    );
  }
}
