import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/generated/l10n.dart';

class SocialLoginText extends StatelessWidget {
  const SocialLoginText({
    super.key,
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 2,
            color: Colors.grey.shade400,
          ),
        ),
        Text(
          text ?? S.of(context).orLoginWith,
          style: AppText.regular16(context),
        ),
        Expanded(
          child: Container(
            height: 2,
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
