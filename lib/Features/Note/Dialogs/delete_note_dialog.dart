import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/generated/l10n.dart';

class DeleteNoteDialog extends StatelessWidget {
  const DeleteNoteDialog({
    super.key,
    this.onDelete,
    this.onCancel,
  });

  final void Function()? onDelete;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      image: Assets.deleteNote,
      title: S.of(context).deleteNote,
      description: S.of(context).deleteNoteConfirmation,
      confirmButtonColor: Colors.red,
      confirmButtonText: S.of(context).delete,
      confirmButtonIcon: Icons.delete,
      onConfirm: onDelete,
    );
  }
}
