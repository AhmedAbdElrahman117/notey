import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:provider/provider.dart';

class NoteSearchButton extends StatelessWidget {
  const NoteSearchButton({
    super.key,
    required this.searchAnimation,
    required this.quillController,
  });

  final AnimationController searchAnimation;
  final QuillController quillController;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (context.read<NoteProvider>().showSearchBar == false) {
          context.read<NoteProvider>().triggerSearchBar();
          searchAnimation.forward(from: 0);
        } else {
          await searchAnimation.reverse();
          // ignore: use_build_context_synchronously
          context.read<NoteProvider>().triggerSearchBar();
          clearHighlights();
        }
      },
      icon: Icon(
        context.watch<NoteProvider>().showSearchBar
            ? Icons.close
            : Icons.search,
        color: ThemeHelper.iconColor(context),
      ),
    );
  }

  void clearHighlights() {
    final docLen = quillController.document.length;
    quillController.formatText(
      0,
      docLen,
      Attribute.clone(Attribute.background, null),
    );
  }
}
