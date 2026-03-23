import 'package:flutter/material.dart';

class TypewriterText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final AnimationController controller;

  const TypewriterText({
    super.key,
    required this.text,
    required this.style,
    required this.controller,
  });

  @override
  State<TypewriterText> createState() => _TypewriterTextState();
}

class _TypewriterTextState extends State<TypewriterText>
    with SingleTickerProviderStateMixin {
  late Animation<int> _characters;

  @override
  void initState() {
    super.initState();

    _characters = StepTween(
      begin: 0,
      end: widget.text.length,
    ).animate(widget.controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _characters,
      builder: (context, child) {
        String visibleText = widget.text.substring(0, _characters.value);
        return Text(
          visibleText,
          style: widget.style,
        );
      },
    );
  }
}
