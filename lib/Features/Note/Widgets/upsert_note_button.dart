import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:provider/provider.dart';

class UpsertNoteButton extends StatelessWidget {
  const UpsertNoteButton({
    super.key,
    required this.quillController,
    required this.titleController,
    required this.categoryController,
  });

  final QuillController quillController;
  final TextEditingController titleController;
  final TextEditingController categoryController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: IconButton(
        onPressed: context.watch<NoteProvider>().isAddButtonEnabled
            ? () async {
                await context.read<NoteProvider>().upsertNote(
                  title: titleController.text,
                  content: quillController.document,
                  category: categoryController.text,
                );
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
              }
            : null,
        iconSize: 32,
        icon: Icon(Icons.check),
      ),
    );
  }
}
