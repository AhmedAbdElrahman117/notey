import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_date_time.dart';
import 'package:notey/Features/Note/Widgets/custom_overlay.dart';
import 'package:notey/Features/Note/Widgets/font_color_option.dart';

class FontColorListOverlay extends StatefulWidget {
  const FontColorListOverlay({
    super.key,
    required this.colorList,
    required this.colorController,
    required this.colorAnimationController,
    required this.onSelect,
    required this.quillController,
    required this.topPosition,
  });

  final List<Color> colorList;
  final OverlayPortalController colorController;
  final AnimationController colorAnimationController;
  final void Function(Color selected) onSelect;
  final QuillController quillController;
  final Offset topPosition;

  @override
  State<FontColorListOverlay> createState() => _FontColorListOverlayState();
}

class _FontColorListOverlayState extends State<FontColorListOverlay> {
  late Color current;

  @override
  void initState() {
    current = widget.colorList.first;
    widget.quillController.addListener(getCurrent);

    super.initState();
  }

  void getCurrent() {
    current = Color(
      int.parse(
        (widget.quillController
                    .getSelectionStyle()
                    .attributes[Attribute.color.key]
                    ?.value ??
                widget.colorList.first.toHex())
            .substring(1),
        radix: 16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomOverlay(
      animationController: widget.colorAnimationController,
      controller: widget.colorController,
      topPosition: widget.topPosition,
      horizontalMargin: 40,
      borderRadius: 16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: Colors.accents.length + Colors.primaries.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: FontColorOption(
              color: widget.colorList.elementAt(index),
              isSelected: widget.colorList.elementAt(index) == current,
              onTap: () {
                setState(() {
                  current = widget.colorList.elementAt(index);
                });
                widget.onSelect.call(current);
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.quillController.removeListener(getCurrent);
    super.dispose();
  }
}
