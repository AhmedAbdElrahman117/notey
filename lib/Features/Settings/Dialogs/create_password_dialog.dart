import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Features/Auth/Widgets/confirm_password_field.dart';
import 'package:notey/Features/Auth/Widgets/password_text_field.dart';
import 'package:notey/generated/l10n.dart';

class CreatePasswordDialog extends StatefulWidget {
  const CreatePasswordDialog({super.key});

  @override
  State<CreatePasswordDialog> createState() => _CreatePasswordDialogState();
}

class _CreatePasswordDialogState extends State<CreatePasswordDialog> {
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: S.of(context).createPassword,
      description: S.of(context).createPasswordDescription,
      extraText: S.of(context).createPasswordNote,
      extraTextStyle: AppText.bold18(context).copyWith(color: Colors.red),
      body: Form(
        key: _formKey,
        child: Column(
          spacing: 24,
          children: [
            PasswordTextField(passwordController: passwordController),

            ConfirmPasswordField(
              confirmPasswordController: confirmPasswordController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
      onConfirm: () {
        if (_formKey.currentState!.validate()) {
          Navigator.of(context).pop(passwordController.text);
        }
      },
    );
  }
}
