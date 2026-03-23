import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/theme_helper.dart';

class UndoButton extends StatelessWidget {
  const UndoButton({
    super.key,
    required this.quillController,
  });

  final QuillController quillController;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: quillController.hasUndo
          ? () {
              quillController.undo();
            }
          : null,
      style: IconButton.styleFrom(
        foregroundColor: ThemeHelper.iconColor(context),
      ),
      icon: Icon(Icons.undo),
    );
  }
}
