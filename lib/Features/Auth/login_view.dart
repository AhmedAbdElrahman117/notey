import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/Toast.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_loading_indicator.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Auth/Cubit/Login%20Cubit/login_cubit.dart';
import 'package:notey/Features/Auth/Cubit/Login%20Cubit/login_states.dart';
import 'package:notey/Features/Auth/Widgets/clickable_text.dart';
import 'package:notey/Features/Auth/Widgets/email_text_field.dart';
import 'package:notey/Features/Auth/Widgets/reset_password_button.dart';
import 'package:notey/Features/Auth/Widgets/login_button.dart';
import 'package:notey/Features/Auth/Widgets/password_text_field.dart';
import 'package:notey/Features/Auth/Widgets/skip_login_button.dart';
import 'package:notey/Features/Auth/Widgets/social_login.dart';
import 'package:notey/Features/Auth/Widgets/social_login_text.dart';
import 'package:notey/Features/Auth/sign_up_view.dart';
import 'package:notey/Features/Home/home_view.dart';
import 'package:notey/generated/l10n.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
    this.onSuccess,
    this.onFailure,
    this.showSkipButton = true,
  });

  final void Function()? onSuccess;
  final void Function()? onFailure;
  final bool showSkipButton;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocListener<LoginCubit, LoginStates>(
        listener: listener,
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                actionsPadding: EdgeInsets.symmetric(horizontal: 24),
                actions: [
                  SkipLoginButton(isVisible: widget.showSkipButton),
                ],
              ),
              body: Center(
                child: Form(
                  key: formKey,
                  child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          S.of(context).login,
                          style: AppText.bold28(context),
                        ),
                      ),
                      SizedBox(height: 32),
                      Text(
                        S.of(context).loginDescription,
                        style: AppText.regular16(
                          context,
                          color: ThemeHelper.descriptionColor(context),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      EmailTextField(
                        emailController: emailController,
                      ),
                      SizedBox(height: 28),
                      PasswordTextField(
                        passwordController: passwordController,
                      ),
                      SizedBox(height: 20),
                      ResetPasswordButton(),
                      SizedBox(height: 28),
                      LoginButton(
                        formKey: formKey,
                        email: emailController,
                        password: passwordController,
                      ),
                      SizedBox(height: 32),
                      Align(
                        alignment: AlignmentDirectional.lerp(
                          AlignmentDirectional.centerStart,
                          AlignmentDirectional.center,
                          0.12,
                        )!,
                        child: ClickableText(
                          text: S.of(context).dontHaveAccount,
                          clickableText: S.of(context).signUp,
                          onTap: () {
                            AppTransitions().pushTo(
                              context,
                              type: AppTransitionType.fadeSlideLeft,
                              to: SignUpView(),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 36),
                      SocialLoginText(),
                      SizedBox(height: 32),
                      SocialLogin(),
                    ],
                  ),
                ),
              ),
            ),

            Builder(
              builder: (context) {
                return CustomLoadingIndicator(
                  isLoading: context.watch<LoginCubit>().state is LoginLoading,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void listener(BuildContext context, LoginStates state) {
    switch (state) {
      case LoginSuccess():
        widget.onSuccess != null
            ? widget.onSuccess?.call()
            : AppTransitions().pushTo(
                context,
                replace: true,
                to: HomeView(),
              );
        break;
      case LoginFailed():
        widget.onFailure != null
            ? widget.onFailure?.call()
            : Toast.showFailed(
                message: state.error,
              );
        break;
      default:
        break;
    }
  }
}
