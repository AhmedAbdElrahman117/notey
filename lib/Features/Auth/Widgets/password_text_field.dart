import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_text_field.dart';
import 'package:notey/generated/l10n.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.passwordController,
    this.onChanged,
  });

  final TextEditingController passwordController;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: passwordController,
      hintText: S.of(context).enterYourPassword,
      labelText: S.of(context).password,
      icon: Icons.lock,
      keyboardType: TextInputType.visiblePassword,
      showPasswordButton: true,
      obscureText: true,
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).passwordRequired;
        } else if (value.contains(' ')) {
          return S.of(context).passwordNoSpaces;
        } else if (value.trim().length < 6) {
          return S.of(context).passwordMinLength;
        } else {
          return null;
        }
      },
    );
  }
}
