import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class DeleteNoteImageDialog extends StatelessWidget {
  const DeleteNoteImageDialog({
    super.key,
    required this.imagePath,
    required this.parent,
  });

  final String imagePath;
  final BuildContext parent;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      image: Assets.deleteImage,
      title: S.of(context).removeImage,
      description: S.of(context).removeImageConfirmation,
      confirmButtonColor: Colors.red,
      confirmButtonText: S.of(context).remove,
      confirmButtonIcon: Icons.delete,
      onConfirm: () {
        parent.read<NoteProvider>().deleteImage(imagePath: imagePath);

        Navigator.pop(context);
      },
    );
  }
}
