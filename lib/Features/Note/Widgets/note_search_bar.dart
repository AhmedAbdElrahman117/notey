import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_date_time.dart';
import 'package:notey/Core/theme_helper.dart';

class NoteSearchBar extends StatefulWidget implements PreferredSizeWidget {
  const NoteSearchBar({
    super.key,
    required this.quillController,
    required this.searchAnimation,
  });

  final QuillController quillController;
  final AnimationController searchAnimation;

  @override
  State<NoteSearchBar> createState() => _NoteSearchBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _NoteSearchBarState extends State<NoteSearchBar> {
  final FocusNode searchFocusNode = FocusNode();
  @override
  void initState() {
    searchFocusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: SearchBar(
              leading: Icon(
                Icons.search,
                color: ThemeHelper.iconColor(context),
              ),
              focusNode: searchFocusNode,
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 20),
              ),
              surfaceTintColor: WidgetStatePropertyAll(AppColors.logo),
              shadowColor: WidgetStatePropertyAll(
                ThemeHelper.shadowColor(context),
              ),
              elevation: WidgetStatePropertyAll(12),
              onTap: () {},
              onChanged: (value) {
                highlightMatches(value);
              },
            ),
          ),
        )
        .animate(controller: widget.searchAnimation, autoPlay: false)
        .fadeIn()
        .slideY();
  }

  void _clearHighlights() {
    final docLen = widget.quillController.document.length;
    widget.quillController.formatText(
      0,
      docLen,
      Attribute.clone(Attribute.background, null),
    );
  }

  void highlightMatches(String query) {
    if (query.isEmpty) _clearHighlights();
    List<int> indices = widget.quillController.document.search(
      query.isNotEmpty ? query : ' ',
    );

    if (indices.isNotEmpty) {
      for (final start in indices) {
        widget.quillController.formatText(
          start,
          query.length,
          Attribute.clone(Attribute.background, Colors.yellow.toHex()),
        );
      }
    }
  }

  @override
  void dispose() {
    searchFocusNode.dispose();

    super.dispose();
  }
}
