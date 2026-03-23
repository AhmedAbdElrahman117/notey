import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Features/Auth/Widgets/password_text_field.dart';
import 'package:notey/generated/l10n.dart';

class FilePasswordDialog extends StatefulWidget {
  const FilePasswordDialog({super.key});

  @override
  State<FilePasswordDialog> createState() => _FilePasswordDialogState();
}

class _FilePasswordDialogState extends State<FilePasswordDialog> {
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      title: S.of(context).enterPassword,
      description: S.of(context).enterPasswordDescription,
      body: Form(
        key: _formKey,
        child: PasswordTextField(passwordController: passwordController),
      ),
      onConfirm: () {
        if (_formKey.currentState!.validate()) {
          Navigator.of(context).pop(passwordController.text);
        }
      },
    );
  }
}
