import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/background_themes.dart';
import 'package:notey/Features/Note/Widgets/color_themes.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class NoteThemeSheet extends StatefulWidget {
  const NoteThemeSheet({super.key, this.parentContext});

  final BuildContext? parentContext;

  @override
  State<NoteThemeSheet> createState() => _NoteThemeSheetState();
}

class _NoteThemeSheetState extends State<NoteThemeSheet> {
  late BuildContext currentContext;

  @override
  void initState() {
    currentContext = widget.parentContext ?? context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            tabBar(context),
            Expanded(
              child: TabBarView(
                children: [
                  ColorThemes(
                    currentContext: currentContext,
                    onColorChanged: (color) {
                      currentContext.read<NoteProvider>().triggerTheme(
                        color: color,
                      );
                      // widget.note.colorId = color.toARGB32();
                      // widget.note.imageBackground = null;
                      // widget.provider.updateNote(note: widget.note);
                      // widget.provider.noteThemeChanged();
                    },
                  ),
                  BackgroundThemes(
                    currentContext: currentContext,
                    onImageChanged: (image) {
                      currentContext.read<NoteProvider>().triggerTheme(
                        backround: image,
                      );
                      // widget.note.imageBackground = image;
                      // widget.note.colorId = null;
                      // widget.provider.updateNote(note: widget.note);
                      // widget.provider.noteThemeChanged();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TabBar tabBar(BuildContext context) {
    return TabBar(
      indicatorColor: AppColors.logo,
      unselectedLabelStyle: AppText.semiBold16(
        context,
      ),
      labelStyle: AppText.bold16(
        context,
        color: AppColors.logo,
      ),
      splashBorderRadius: BorderRadius.circular(8),
      overlayColor: WidgetStatePropertyAll(
        AppColors.logo.withAlpha(64),
      ),
      tabs: [
        Tab(text: S.of(context).color),
        Tab(text: S.of(context).background),
      ],
    );
  }
}
