import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';

class ClickableText extends StatelessWidget {
  const ClickableText({
    super.key,
    required this.onTap,
    this.text,
    this.style,
    required this.clickableText,
    this.clickableStyle,
  });

  final void Function() onTap;
  final String? text;
  final TextStyle? style;
  final String clickableText;
  final TextStyle? clickableStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text != null ? "$text  " : "",
        style: style ?? AppText.regular16(context),
        children: [
          TextSpan(
            text: clickableText,
            style:
                clickableStyle ??
                AppText.semiBold16(context).copyWith(
                  decoration: TextDecoration.underline,
                ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
