import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/generated/l10n.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContentTextField extends StatelessWidget {
  const ContentTextField({
    super.key,
    required this.quillController,
  });

  final QuillController quillController;

  @override
  Widget build(BuildContext context) {
    return QuillEditor.basic(
      controller: quillController,
      config: QuillEditorConfig(
        placeholder: S.of(context).noteContent,
        enableInteractiveSelection: true,
        padding: EdgeInsetsGeometry.all(8),
        onLaunchUrl: (value) async {
          await launchUrlString(value);
        },
      ),
    );
  }
}
