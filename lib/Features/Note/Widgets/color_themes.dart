import 'package:flutter/material.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/preview_box.dart';
import 'package:provider/provider.dart';

class ColorThemes extends StatefulWidget {
  const ColorThemes({
    super.key,
    this.onColorChanged,
    required this.currentContext,
  });

  final void Function(Color color)? onColorChanged;
  final BuildContext currentContext;

  @override
  State<ColorThemes> createState() => _ColorThemesState();
}

class _ColorThemesState extends State<ColorThemes> {
  late List<Color> colors = [
    ...Colors.accents.map(
      (e) => Color(e.toARGB32()),
    ),
    ...Colors.primaries.map(
      (e) => Color(e.toARGB32()),
    ),
  ];

  Color? current;
  late NoteModel currentNote;

  @override
  void initState() {
    currentNote = widget.currentContext.read<NoteProvider>().currentNote;
    Color currentColor = ThemeHelper.readBackgroundColor(context);
    colors.insert(0, currentColor);
    if (currentNote.colorId != null) {
      current = Color(currentNote.colorId!);
    } else {
      if (currentNote.imageBackground == null) {
        current = currentColor;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: colors.length,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return PreviewBox(
          color: colors[index],
          onTap: () {
            widget.onColorChanged?.call(colors[index]);
            setState(() {
              current = colors[index];
            });
          },
          isSelected: current == colors[index],
        );
      },
    );
  }
}
