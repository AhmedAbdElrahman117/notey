import 'package:flutter/material.dart';
import 'package:notey/Core/theme_helper.dart';

class CustomNoteTextField extends StatefulWidget {
  const CustomNoteTextField({
    super.key,
    required this.controller,
    this.style,
    this.textAlignVertical,
    this.maxLines = 1,
    required this.hintText,
    this.onChanged,
    this.focusNode,
    this.hintStyle,
  });

  final TextEditingController controller;
  final TextStyle? style;
  final TextAlignVertical? textAlignVertical;
  final int? maxLines;
  final String hintText;
  final void Function(String value)? onChanged;
  final FocusNode? focusNode;
  final TextStyle? hintStyle;

  @override
  State<CustomNoteTextField> createState() => _CustomNoteTextFieldState();
}

class _CustomNoteTextFieldState extends State<CustomNoteTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      controller: widget.controller,
      autofocus: false,
      style: widget.style,
      textAlignVertical: widget.textAlignVertical,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        border: InputBorder.none,
        hintText: widget.hintText,
        alignLabelWithHint: true,
        hintStyle: widget.hintStyle?.copyWith(
          color: ThemeHelper.hintColor(context),
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}
