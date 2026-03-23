import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:notey/Core/app_date_time.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/category_utils.dart';
import 'package:notey/Core/components/custom_tile.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Home/View%20Model/home_cubit.dart';
import 'package:notey/Features/Home/Widgets/favourite_button.dart';
import 'package:notey/Features/Note/Dialogs/delete_note_dialog.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/note_view.dart';
import 'package:notey/generated/l10n.dart';

class Note extends StatefulWidget {
  const Note({
    super.key,
    required this.note,
    required this.categories,
    this.showMenu = true,
    this.showCategory = true,
    this.showDate = true,
    this.showSync = true,
  });

  final NoteModel note;
  final List<CategoryModel> categories;
  final bool showMenu;
  final bool showCategory;
  final bool showDate;
  final bool showSync;

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  final GlobalKey<PopupMenuButtonState> popupMenuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.note.colorId == null
          ? ThemeHelper.noteColor(context)
          : Color(widget.note.colorId!),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          final provider = NoteProvider(
            categories: widget.categories,
            currentNote: widget.note,
          );

          AppTransitions().pushTo(
            context,
            type: AppTransitionType.fadeSlideDown,
            to: NoteView(
              note: widget.note,
              provider: provider,
            ),
          );
        },
        onLongPress: () {
          popupMenuKey.currentState?.showButtonMenu();
        },
        child: Container(
          decoration: BoxDecoration(
            image: widget.note.imageBackground != null
                ? DecorationImage(
                    image: Svg(
                      widget.note.imageBackground!,
                    ),
                    fit: BoxFit.cover,
                  )
                : null,
            borderRadius: BorderRadius.circular(16),
            border: BorderDirectional(
              start: BorderSide(color: widget.note.noteColor, width: 6),
              bottom: BorderSide(color: widget.note.noteColor, width: 1.2),
              top: BorderSide(color: widget.note.noteColor, width: 1.2),
              end: BorderSide(color: widget.note.noteColor, width: 1.2),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: noteTitle(context),
                    ),
                    Visibility(
                      visible: widget.note.isFavourite,
                      child: FavouriteButton(
                        favouriteView: widget.note.isFavourite,
                      ),
                    ),
                    noteMenu(),
                  ],
                ),
                SizedBox(height: 8),
                noteContent(context),
                Visibility(
                  visible:
                      widget.showCategory && widget.showDate && widget.showSync,
                  child: Column(
                    children: [
                      SizedBox(height: 28),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: noteCategory(context),
                          ),
                          Expanded(
                            child: noteSyncStatus(context),
                          ),
                          Expanded(
                            flex: 3,
                            child: noteDate(context),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Visibility noteMenu() {
    return Visibility(
      visible: widget.showMenu,
      child: PopupMenuButton(
        key: popupMenuKey,
        menuPadding: EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        borderRadius: BorderRadius.circular(12),
        splashRadius: 12,
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: () async {
              widget.note.isFavourite = !widget.note.isFavourite;
              await context.read<HomeCubit>().updateNote(widget.note);
            },
            child: CustomTile(
              icon: Icons.favorite,
              title: widget.note.isFavourite
                  ? S.of(context).removeFromFavourites
                  : S.of(context).addToFavorites,
            ),
          ),
          PopupMenuItem(
            onTap: () {
              AppDialogs().show(
                context,
                DeleteNoteDialog(
                  onDelete: () {
                    context.read<HomeCubit>().deleteNote(widget.note);
                    Navigator.of(context).pop();
                  },
                ),
              );
            },
            child: CustomTile(
              icon: Icons.delete,
              title: S.of(context).delete,
            ),
          ),
        ],
      ),
    );
  }

  Visibility noteSyncStatus(BuildContext context) {
    return Visibility(
      visible: widget.showSync,
      child: Visibility(
        visible: widget.note.isSynced,
        replacement: Tooltip(
          message: S.of(context).notSynced,
          child: Icon(
            widget.note.isSynced ? Icons.sync : Icons.sync_disabled,
            color: ThemeHelper.iconColor(context),
          ),
        ),
        child: Tooltip(
          message: widget.note.isSynced
              ? S.of(context).synced
              : S.of(context).notSynced,
          child: Icon(
            Icons.sync,
            color: ThemeHelper.iconColor(context),
          ),
        ),
      ),
    );
  }

  Visibility noteCategory(BuildContext context) {
    return Visibility(
      visible: widget.showCategory,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 12,
        children: [
          Icon(Icons.category),
          Expanded(
            child: Text(
              CategoryUtils.getDisplayName(widget.note.category),
              textAlign: TextAlign.start,
              maxLines: 1,
              style: AppText.regular14(context),
            ),
          ),
        ],
      ),
    );
  }

  Visibility noteDate(BuildContext context) {
    return Visibility(
      visible: widget.showDate,
      child: Text(
        widget.note.createdAt!.timeAgo(),
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.end,
        maxLines: 1,
        style: AppText.regular14(context),
      ),
    );
  }

  Text noteContent(BuildContext context) {
    String content = widget.note.content.toPlainText().trim();
    return Text(
      content.isEmpty ? S.of(context).noContent : content,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: AppText.regular18(context),
    );
  }

  Text noteTitle(BuildContext context) {
    return Text(
      widget.note.title.isEmpty ? S.of(context).untitled : widget.note.title,
      maxLines: 1,
      textAlign: TextAlign.start,
      overflow: TextOverflow.ellipsis,
      style: AppText.bold20(context),
    );
  }
}
