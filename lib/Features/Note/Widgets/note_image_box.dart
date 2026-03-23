import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Note/Dialogs/delete_note_image_dialog.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:provider/provider.dart';

class NoteImageBox extends StatelessWidget {
  const NoteImageBox({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Material(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            log(context.read<NoteProvider>().currentNote.toString());
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: deleteImageButton(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconButton deleteImageButton(BuildContext context) {
    return IconButton.filled(
      onPressed: () {
        AppDialogs().show(
          context,
          DeleteNoteImageDialog(
            imagePath: imagePath,
            parent: context,
          ),
        );
      },
      style: IconButton.styleFrom(
        backgroundColor: ThemeHelper.buttonBackgroundColor(
          context,
        ),
        padding: const EdgeInsets.all(4),
      ),
      icon: Icon(
        Icons.close,
        color: ThemeHelper.iconColor(context),
      ),
    );
  }
}
