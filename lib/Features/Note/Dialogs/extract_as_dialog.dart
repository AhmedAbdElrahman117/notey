import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_tile.dart';
import 'package:notey/Features/Note/View%20Model/extract_provider.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class ExtractAsDialog extends StatelessWidget {
  const ExtractAsDialog({
    super.key,
    required this.noteTitle,
    required this.quillController,
  });

  final String noteTitle;
  final QuillController quillController;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExtractProvider(),
      builder: (context, child) => Stack(
        children: [
          Dialog(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    S.of(context).extractAs,
                    style: AppText.bold28(context),
                  ),
                  const SizedBox(height: 32),
                  CustomTile(
                    icon: Icons.text_snippet,
                    title: S.of(context).textFileTxt,
                    onTap: () async {
                      await context.read<ExtractProvider>().saveAsText(
                        '$noteTitle\n\n${quillController.document.toPlainText()}',
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  CustomTile(
                    icon: Icons.picture_as_pdf,
                    title: S.of(context).pdfFilePdf,
                    onTap: () async {
                      await context.read<ExtractProvider>().saveAsPdf(
                        noteTitle,
                        quillController.document.toDelta(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          loadingIndicator(context),
        ],
      ),
    );
  }

  Visibility loadingIndicator(BuildContext context) {
    return Visibility(
      visible: context.watch<ExtractProvider>().isLoading,
      child: Container(
        color: Colors.black.withValues(alpha: 0.7),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: CircularProgressIndicator(
            color: AppColors.logo,
          ),
        ),
      ),
    );
  }
}
