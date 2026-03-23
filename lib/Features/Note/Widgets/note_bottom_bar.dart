import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Features/Note/Data/note_utils.dart';
import 'package:notey/Features/Note/Dialogs/more_note_utils_sheet.dart';
import 'package:notey/Features/Note/Dialogs/note_theme_sheet.dart';
import 'package:notey/Features/Note/Helper/overlay_helper.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/note_util_button.dart';
import 'package:notey/Features/Note/Widgets/style_options_overlay.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class NoteBottomBar extends StatefulWidget {
  const NoteBottomBar({
    super.key,
    required this.titleController,
    required this.contentController,
  });

  final TextEditingController titleController;
  final QuillController contentController;

  @override
  State<NoteBottomBar> createState() => _NoteBottomBarState();
}

class _NoteBottomBarState extends State<NoteBottomBar>
    with SingleTickerProviderStateMixin {
  late final OverlayHelper overlayHelper;

  @override
  void initState() {
    overlayHelper = OverlayHelper(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: NoteUtilButton(
              icon: Icons.share,
              label: S.of(context).share,
              onPressed:
                  widget.titleController.text.isEmpty &&
                      widget.contentController.document.isEmpty()
                  ? null
                  : () async {
                      await NoteUtils().share(
                        context: context,
                        title: widget.titleController.text,
                        content: widget.contentController.document
                            .toPlainText(),
                      );
                    },
            ),
          ),
          ValueListenableBuilder(
            valueListenable: overlayHelper.buttonPosition,
            builder: (context, value, child) {
              return StyleOptionsOverlay(
                overlayController: overlayHelper.overlayController,
                buttonPosition: value,
                animationController: overlayHelper.animationController,
                textController: widget.contentController,
              );
            },
          ),
          Expanded(
            child: NoteUtilButton(
              icon: Icons.palette,
              label: S.of(context).style,
              onPressed: () {
                overlayHelper.triggerOverlay(context);
              },
            ),
          ),
          Expanded(
            child: NoteUtilButton(
              icon: Icons.image,
              label: S.of(context).image,
              onPressed: () async {
                context.read<NoteProvider>().pickImages();
              },
            ),
          ),
          // Expanded(
          //   child: NoteUtilButton(
          //     icon: Icons.record_voice_over,
          //     label: 'Record',
          //     onPressed: () async {},
          //   ),
          // ),
          Expanded(
            child: Visibility(
              visible: context.read<NoteProvider>().currentNote.id != null,
              replacement: NoteUtilButton(
                icon: Icons.wallpaper,
                label: S.of(context).theme,
                onPressed: () {
                  AppDialogs().showSheet(
                    context,
                    NoteThemeSheet(parentContext: context),
                  );
                },
              ),
              child: NoteUtilButton(
                icon: Icons.more_vert,
                label: S.of(context).more,
                onPressed: () {
                  AppDialogs().showSheet(
                    context,
                    MoreNoteUtilsSheet(
                      parent: context,
                      noteTitle: widget.titleController.text,
                      quillController: widget.contentController,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
