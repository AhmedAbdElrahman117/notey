import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/generated/l10n.dart';

class StyleModel {
  final IconData icon;
  final String Function() getTooltipMessage;
  final Attribute attribute;

  const StyleModel({
    required this.icon,
    required this.getTooltipMessage,
    required this.attribute,
  });

  String get tooltipMessage => getTooltipMessage();

  void triggerFormat(bool isSelected, QuillController textController) {
    if (isSelected) {
      textController.formatSelection(attribute);
    } else {
      textController.formatSelection(
        Attribute.clone(attribute, null),
      );
    }
  }

  static List<StyleModel> styles = [
    StyleModel(
      icon: Icons.format_bold,
      getTooltipMessage: () => S.current.bold,
      attribute: Attribute.bold,
    ),
    StyleModel(
      icon: Icons.format_italic,
      getTooltipMessage: () => S.current.italic,
      attribute: Attribute.italic,
    ),
    StyleModel(
      icon: Icons.format_underline,
      getTooltipMessage: () => S.current.underline,
      attribute: Attribute.underline,
    ),
    StyleModel(
      icon: Icons.format_strikethrough,
      getTooltipMessage: () => S.current.strikethrough,
      attribute: Attribute.strikeThrough,
    ),
    StyleModel(
      icon: Icons.format_size,
      getTooltipMessage: () => S.current.fontSize,
      attribute:
          Attribute.size, // You can customize this or create a placeholder
    ),
    StyleModel(
      icon: Icons.colorize,
      getTooltipMessage: () => S.current.fontColor,
      attribute:
          Attribute.color, // Placeholder if you plan to handle color manually
    ),
    StyleModel(
      icon: Icons.format_list_bulleted,
      getTooltipMessage: () => S.current.bulletList,
      attribute: Attribute.ul,
    ),
    StyleModel(
      icon: Icons.format_list_numbered,
      getTooltipMessage: () => S.current.numberedList,
      attribute: Attribute.ol,
    ),
    StyleModel(
      icon: Icons.check_box,
      getTooltipMessage: () => S.current.checklist,
      attribute: Attribute.checked,
    ),
    StyleModel(
      icon: Icons.subscript,
      getTooltipMessage: () => S.current.subscript,
      attribute: Attribute.subscript,
    ),
    StyleModel(
      icon: Icons.superscript,
      getTooltipMessage: () => S.current.superscript,
      attribute: Attribute.superscript,
    ),
    StyleModel(
      icon: Icons.code,
      getTooltipMessage: () => S.current.codeBlock,
      attribute: Attribute.codeBlock,
    ),
  ];
}
