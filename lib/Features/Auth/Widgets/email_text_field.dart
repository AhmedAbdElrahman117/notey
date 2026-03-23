import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_text_field.dart';
import 'package:notey/Core/constants.dart';
import 'package:notey/generated/l10n.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: emailController,
      hintText: S.of(context).enterYourEmail,
      labelText: S.of(context).email,
      icon: Icons.email,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).emailRequired;
        } else if (!kEmailRegExp.hasMatch(value)) {
          return S.of(context).invalidEmail;
        } else {
          return null;
        }
      },
    );
  }
}
