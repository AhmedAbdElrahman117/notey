import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/Toast.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_loading_indicator.dart';
import 'package:notey/Core/otp_type.dart';
import 'package:notey/Core/password_checker.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Auth/Cubit/SignUp%20Cubit/sign_up_cubit.dart';
import 'package:notey/Features/Auth/Cubit/SignUp%20Cubit/sign_up_states.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:notey/Features/Auth/Widgets/confirm_password_field.dart';
import 'package:notey/Features/Auth/Widgets/custom_auth_button.dart';
import 'package:notey/Features/Auth/Widgets/email_text_field.dart';
import 'package:notey/Features/Auth/Widgets/password_constraint_widget.dart';
import 'package:notey/Features/Auth/Widgets/password_text_field.dart';
import 'package:notey/Features/Auth/Widgets/username_text_field.dart';
import 'package:notey/Features/Auth/otp_verification_view.dart';
import 'package:notey/generated/l10n.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final PasswordChecker checker = PasswordChecker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocListener<SignUpCubit, SignUpStates>(
        listener: listener,
        child: Builder(
          builder: (context) {
            return Stack(
              children: [
                Scaffold(
                  appBar: AppBar(),
                  body: Form(
                    key: formKey,
                    child: ListView(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            S.of(context).signUp,
                            style: AppText.bold28(context),
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          S.of(context).signUpDescription,
                          style: AppText.regular16(
                            context,
                            color: ThemeHelper.descriptionColor(context),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        UsernameTextField(
                          userNameController: userNameController,
                        ),
                        SizedBox(height: 28),
                        EmailTextField(
                          emailController: emailController,
                        ),
                        SizedBox(height: 28),
                        PasswordTextField(
                          passwordController: passwordController,
                          onChanged: (value) {
                            checker.checkAll(value);
                          },
                        ),
                        SizedBox(height: 28),
                        ConfirmPasswordField(
                          confirmPasswordController: confirmPasswordController,
                          passwordController: passwordController,
                        ),
                        SizedBox(height: 16),
                        PasswordConstraintWidget(
                          constraints: checker.constraints,
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: CustomAuthButton(
                            text: S.of(context).createAccount,
                            onPressed: () async {
                              if (formKey.currentState!.validate() &&
                                  checker.allValid()) {
                                UserModel user = UserModel(
                                  userName: userNameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                                AppTransitions().pushTo(
                                  context,
                                  type: AppTransitionType.fadeSlideDown,
                                  to: OtpVerificationView(
                                    user: user,
                                    type: OTP.signUpOTP,
                                    onVerified: () async {
                                      await context.read<SignUpCubit>().signUp(
                                        user: user,
                                      );

                                      // ignore: use_build_context_synchronously
                                      AppTransitions().popToFirst(context);
                                    },
                                  ),
                                );
                              } else {
                                Toast.showFailed(
                                  message: S
                                      .of(context)
                                      .followPasswordConstraints,
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                CustomLoadingIndicator(
                  isLoading:
                      context.watch<SignUpCubit>().state is SignUpLoading,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void listener(BuildContext context, SignUpStates state) {
    if (state is SignUpSuccess) {
      Toast.showSuccess(message: S.of(context).accountCreatedSuccessfully);
    } else if (state is SignUpFailed) {
      Toast.showFailed(message: state.error);
    }
  }
}
