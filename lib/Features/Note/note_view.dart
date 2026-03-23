import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_back_button.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/content_text_field.dart';
import 'package:notey/Features/Note/Widgets/note_bottom_bar.dart';
import 'package:notey/Features/Note/Widgets/note_category_menu_list.dart';
import 'package:notey/Features/Note/Widgets/note_field.dart';
import 'package:notey/Features/Note/Widgets/note_images_expansion_tile.dart';
import 'package:notey/Features/Note/Widgets/note_search_bar.dart';
import 'package:notey/Features/Note/Widgets/note_search_button.dart';
import 'package:notey/Features/Note/Widgets/redo_button.dart';
import 'package:notey/Features/Note/Widgets/undo_button.dart';
import 'package:notey/Features/Note/Widgets/upsert_note_button.dart';
import 'package:notey/generated/l10n.dart';
import 'package:provider/provider.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key, this.note, required this.provider});

  final NoteModel? note;
  final NoteProvider provider;

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView>
    with SingleTickerProviderStateMixin {
  late final TextEditingController titleController;

  late final TextEditingController categoryController;

  late final QuillController _quillController;

  late final AnimationController _searchAnimation;

  @override
  void initState() {
    titleController = TextEditingController(text: widget.note?.title);

    categoryController = TextEditingController(text: widget.note?.category);

    _quillController = QuillController(
      document: widget.note != null
          ? Document.fromDelta(
              widget.note!.content.toDelta(),
            )
          : Document(),
      selection: const TextSelection.collapsed(offset: 0),
    );

    _searchAnimation = AnimationController(
      vsync: this,
      duration: 300.ms,
      reverseDuration: 200.ms,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleController.addListener(check);

      categoryController.addListener(check);

      _quillController.addListener(check);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: widget.provider,
      builder: (context, child) => Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: noteViewAppbar(context),
        body: AnimatedContainer(
          duration: 400.ms,
          decoration: BoxDecoration(
            color: colorBackground(context),
            image: imageBackground(context),
          ),
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.all(12),
              physics: ClampingScrollPhysics(),
              children: [
                NoteField(
                  hintText: S.of(context).noteTitle,
                  style: AppText.semiBold28(context),
                  controller: titleController,
                  value: widget.note?.title,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: NoteCategoryMenuList(
                    categoryController: categoryController,
                  ),
                ),
                ContentTextField(
                  quillController: _quillController,
                ),
                SizedBox(height: 40),
                NoteImagesExpansionTile(
                  picked: [
                    ...context.watch<NoteProvider>().currentNote.images,
                    ...context.watch<NoteProvider>().newPickedImages,
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NoteBottomBar(
          titleController: titleController,
          contentController: _quillController,
        ),
      ),
    );
  }

  AppBar noteViewAppbar(BuildContext context) {
    return AppBar(
      leading: CustomBackButton(),
      forceMaterialTransparency: true,
      backgroundColor: Colors.transparent,
      bottom: context.watch<NoteProvider>().showSearchBar
          ? NoteSearchBar(
              quillController: _quillController,
              searchAnimation: _searchAnimation,
            )
          : null,
      actions: [
        UndoButton(
          quillController: _quillController,
        ),
        RedoButton(
          quillController: _quillController,
        ),
        SizedBox(width: 16),
        NoteSearchButton(
          quillController: _quillController,
          searchAnimation: _searchAnimation,
        ),
        UpsertNoteButton(
          quillController: _quillController,
          titleController: titleController,
          categoryController: categoryController,
        ),
      ],
    );
  }

  DecorationImage? imageBackground(BuildContext context) {
    return context.read<NoteProvider>().currentNote.imageBackground != null
        ? DecorationImage(
            image: Svg(
              context.read<NoteProvider>().currentNote.imageBackground!,
            ),
            fit: BoxFit.cover,
          )
        : null;
  }

  Color colorBackground(BuildContext context) {
    return Color(
      context.read<NoteProvider>().currentNote.colorId ??
          ThemeHelper.readBackgroundColor(context).toARGB32(),
    );
  }

  void check() {
    if ((titleController.text.trim().isNotEmpty ||
            _quillController.document.toPlainText().trim().isNotEmpty) &&
        (titleController.text.trim() != widget.note?.title.trim() ||
            _quillController.document.toDelta() !=
                widget.note?.content.toDelta() ||
            categoryController.text.trim() != widget.note?.category.trim() ||
            widget.provider.newPickedImages.isNotEmpty)) {
      widget.provider.triggerAddButton(true);
    } else {
      widget.provider.triggerAddButton(false);
    }
  }

  @override
  void dispose() {
    titleController.removeListener(check);

    categoryController.removeListener(check);

    _quillController.removeListener(check);

    categoryController.dispose();

    titleController.dispose();

    _quillController.dispose();

    widget.provider.dispose();

    super.dispose();
  }
}
