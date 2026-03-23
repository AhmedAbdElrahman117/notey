import 'package:flutter/material.dart';
import 'package:notey/Core/note_search_delegate.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Home/Repo/note_repo.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showSearch(
          context: context,
          delegate: NoteSearchDelegate(
            searchItems: NoteRepo().cache,
            categories: categories,
          ),
        );
      },
      icon: Icon(Icons.search),
      color: ThemeHelper.iconColor(context),
    );
  }
}
