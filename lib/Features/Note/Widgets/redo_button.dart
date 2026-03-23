import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/theme_helper.dart';

class RedoButton extends StatelessWidget {
  const RedoButton({
    super.key,
    required this.quillController,
  });

  final QuillController quillController;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: quillController.hasRedo
          ? () {
              quillController.redo();
            }
          : null,
      style: IconButton.styleFrom(
        foregroundColor: ThemeHelper.iconColor(context),
      ),
      icon: Icon(Icons.redo),
    );
  }
}
