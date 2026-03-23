import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Features/Auth/Cubit/Login%20Cubit/login_cubit.dart';
import 'package:notey/Features/Auth/Widgets/social_button.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialButton(
          svgIcon: Assets.google,
          onPressed: () async {
            await context.read<LoginCubit>().loginWithGoogle();
          },
        ),
        SocialButton(
          svgIcon: Assets.facebook,
          onPressed: () async {
            await context.read<LoginCubit>().loginWithFacebook();
          },
        ),
      ],
    );
  }
}
