import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Features/Auth/Cubit/Login%20Cubit/login_cubit.dart';
import 'package:notey/Features/Auth/Widgets/custom_auth_button.dart';
import 'package:notey/generated/l10n.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.email,
    required this.password,
    required this.formKey,
  });

  final TextEditingController email;
  final TextEditingController password;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomAuthButton(
        text: S.of(context).login,
        onPressed: () async {
          if (formKey.currentState!.validate()) {
            log(email.text);
            log(password.text);
            await context.read<LoginCubit>().login(
              email: email.text,
              password: password.text,
            );
          }
        },
      ),
    );
  }
}
