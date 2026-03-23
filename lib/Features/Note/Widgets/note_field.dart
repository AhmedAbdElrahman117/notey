import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Note/View%20Model/note_provider.dart';
import 'package:notey/Features/Note/Widgets/custom_note_text_field.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
// ignore: implementation_imports
import 'package:linkfy_text/src/model/link.dart';

class NoteField extends StatefulWidget {
  const NoteField({
    super.key,
    required this.controller,
    this.readLinks = false,
    required this.hintText,
    required this.style,
    this.textAlignVertical,
    required this.value,
    this.onChanged,
  });

  final String hintText;
  final TextStyle style;
  final TextAlignVertical? textAlignVertical;
  final bool? readLinks;
  final TextEditingController controller;
  final String? value;
  final void Function(String value)? onChanged;

  @override
  State<NoteField> createState() => _NoteFieldState();
}

class _NoteFieldState extends State<NoteField> {
  bool isEditing = false;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    isEditing = context.read<NoteProvider>().currentNote.id == null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: CustomNoteTextField(
        focusNode: focusNode,
        controller: widget.controller,
        hintText: widget.hintText,
        style: widget.style,
        textAlignVertical: widget.textAlignVertical,
        maxLines: null,
        hintStyle: widget.style,
        onChanged: widget.onChanged,
      ),
      secondChild: GestureDetector(
        onTap: () {
          setState(() {
            isEditing = true;
            focusNode.requestFocus();
          });
        },
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          color: Colors.transparent,
          padding: EdgeInsets.all(16),
          child: widget.readLinks == true ? textLinks() : normalText(),
        ),
      ),
      crossFadeState: isEditing
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: 250.ms,
    );
  }

  LinkifySelectableText textLinks() {
    return LinkifySelectableText(
      widget.value != null && widget.value!.isNotEmpty
          ? widget.value!
          : widget.hintText,
      linkStyle: widget.style.copyWith(
        color: AppColors.logo,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.logo,
        decorationThickness: 1.5,
      ),
      textStyle: widget.style.copyWith(
        color: widget.value != null && widget.value!.isNotEmpty
            ? ThemeHelper.textColor(context)
            : ThemeHelper.hintColor(context),
      ),
      linkTypes: [LinkType.url, LinkType.email, LinkType.phone],
      onTap: (value) async {
        if (value.value != null) {
          await handleLink(value);
        }
      },
    );
  }

  Future<void> handleLink(Link value) async {
    if (value.type == LinkType.email) {
      await launchUrl(Uri(scheme: 'mailto', path: value.value));
    } else if (value.type == LinkType.phone) {
      await launchUrl(Uri(scheme: 'tel', path: value.value));
    } else if (value.type == LinkType.url) {
      await launchUrl(Uri(scheme: 'https', path: value.value));
    }
  }

  Text normalText() {
    return Text(
      widget.value != null && widget.value!.isNotEmpty
          ? widget.value!
          : widget.hintText,
      style: widget.style.copyWith(
        color: widget.value != null && widget.value!.isNotEmpty
            ? ThemeHelper.textColor(context)
            : ThemeHelper.hintColor(context),
      ),
    );
  }
}
