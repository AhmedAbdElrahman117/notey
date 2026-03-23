import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Features/Note/Data/print_service.dart';
import 'package:notey/Features/Note/Dialogs/delete_note_dialog.dart';
import 'package:notey/Features/Note/Dialogs/extract_as_dialog.dart';
import 'package:notey/Features/Note/Dialogs/note_theme_sheet.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/modal_sheet_item.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class MoreNoteUtilsSheet extends StatelessWidget {
  const MoreNoteUtilsSheet({
    super.key,
    required this.parent,
    required this.quillController,
    required this.noteTitle,
  });

  final String noteTitle;
  final BuildContext parent;
  final QuillController quillController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 0,
        bottom: 44,
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 16,
          mainAxisSize: MainAxisSize.min,
          children: [
            ModalSheetItem(
              title: S.of(context).theme,
              icon: Icons.wallpaper,
              onTap: () {
                AppDialogs().showSheet(
                  context,
                  NoteThemeSheet(parentContext: parent),
                );
              },
            ),
            ModalSheetItem(
              title: S.of(context).extractAs,
              icon: Icons.file_present,
              onTap: () {
                AppDialogs().show(
                  context,
                  ExtractAsDialog(
                    noteTitle: noteTitle,
                    quillController: quillController,
                  ),
                );
              },
            ),
            ModalSheetItem(
              title: S.of(context).print,
              icon: Icons.print,
              onTap: () async {
                await PrintService().printPdf(
                  title: noteTitle,
                  content: quillController.document.toDelta(),
                );
              },
            ),
            ModalSheetItem(
              title: S.of(context).delete,
              icon: Icons.delete,
              color: Colors.red,
              onTap: () {
                AppDialogs().show(
                  context,
                  DeleteNoteDialog(
                    onDelete: () {
                      parent.read<NoteProvider>().deleteNote();
                      AppTransitions().popToFirst(context);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
