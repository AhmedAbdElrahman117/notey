import 'package:flutter/material.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Category/category_view.dart';
import 'package:notey/Features/Home/Dialogs/note_filter_sheet.dart';
import 'package:notey/Features/Home/View%20Model/home_cubit.dart';
import 'package:notey/Features/Home/Widgets/add_note_button.dart';
import 'package:notey/Features/Home/Widgets/favourite_button.dart';
import 'package:notey/Features/Settings/settings_view.dart';
import 'package:provider/provider.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key, required this.favouriteView});

  final bool favouriteView;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: ThemeHelper.bottomBarColor(context),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          children: [
            settingsButton(context),
            categoryButton(context),
            AddNoteButton(),
            FavouriteButton(
              favouriteView: favouriteView,
              onPressed: () {
                context.read<HomeCubit>().toggleFavouriteView();
              },
            ),
            filterButton(context),
          ],
        ),
      ),
    );
  }

  IconButton categoryButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        AppTransitions().pushTo(
          context,
          type: AppTransitionType.fadeSlideDown,
          to: CategoryView(),
        );
      },
      icon: Icon(
        Icons.category,
      ),
    );
  }

  IconButton filterButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        AppDialogs().showSheet(
          context,
          NoteFilterSheet(parentContext: context),
        );
      },
      icon: Icon(Icons.filter_list),
    );
  }

  IconButton settingsButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        AppTransitions().pushTo(
          context,
          type: AppTransitionType.fadeSlideDown,
          to: SettingsView(),
        );
      },
      icon: Icon(Icons.settings),
    );
  }
}
