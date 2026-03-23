import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/app_colors.dart';

class FontSizeSlider extends StatefulWidget {
  const FontSizeSlider({
    super.key,
    required this.controller,
    this.onChange,
  });

  final QuillController controller;
  final void Function(int size)? onChange;

  @override
  State<FontSizeSlider> createState() => _FontSizeSliderState();
}

class _FontSizeSliderState extends State<FontSizeSlider> {
  late int current;

  @override
  void initState() {
    current = 12;
    widget.controller.addListener(getCurrent);
    super.initState();
  }

  void getCurrent() {
    current = int.parse(
      widget.controller
              .getSelectionStyle()
              .attributes[Attribute.size.key]
              ?.value
              .toString() ??
          '12',
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Slider(
        value: current.toDouble(),
        min: 12,
        max: 100,
        divisions: 25,
        activeColor: AppColors.logo,
        label: '$current',
        onChanged: (value) {
          setState(() {
            current = value.toInt();
          });
          widget.onChange?.call(current);
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.controller.removeListener(getCurrent);
    super.dispose();
  }
}
