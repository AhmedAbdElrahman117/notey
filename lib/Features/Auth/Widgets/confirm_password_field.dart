import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_text_field.dart';
import 'package:notey/generated/l10n.dart';

class ConfirmPasswordField extends StatelessWidget {
  const ConfirmPasswordField({
    super.key,
    required this.confirmPasswordController,
    required this.passwordController,
    this.onChanged,
  });

  final TextEditingController confirmPasswordController;
  final TextEditingController passwordController;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: confirmPasswordController,
      hintText: S.of(context).confirmYourPassword,
      labelText: S.of(context).confirmPassword,
      icon: Icons.lock,
      keyboardType: TextInputType.visiblePassword,
      showPasswordButton: true,
      obscureText: true,
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).passwordConfirmationRequired;
        } else if (passwordController.text != value) {
          return S.of(context).passwordsDoNotMatch;
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
