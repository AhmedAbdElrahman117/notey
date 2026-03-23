import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_text_field.dart';
import 'package:notey/Core/constants.dart';
import 'package:notey/generated/l10n.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({
    super.key,
    required this.userNameController,
  });

  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: userNameController,
      hintText: S.of(context).enterYourUsername,
      labelText: S.of(context).username,
      icon: Icons.person,
      validator: (value) {
        if (value!.isEmpty || value.trim().isEmpty) {
          return S.of(context).usernameRequired;
        } else if (!kUsernameRegex.hasMatch(value)) {
          return S.of(context).usernameInvalid;
        }
        return null;
      },
    );
  }
}
