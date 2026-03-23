import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/components/custom_loading_indicator.dart';
import 'package:notey/Core/otp_type.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Auth/Cubit/Reset%20Password%20Cubit/reset_password_cubit.dart';
import 'package:notey/Features/Auth/Cubit/Reset%20Password%20Cubit/reset_password_states.dart';
import 'package:notey/Features/Auth/Widgets/custom_auth_button.dart';
import 'package:notey/Features/Auth/Widgets/email_text_field.dart';
import 'package:notey/Features/Auth/change_password_view.dart';
import 'package:notey/Features/Auth/otp_verification_view.dart';
import 'package:notey/generated/l10n.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final ResetPasswordCubit cubit = ResetPasswordCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: BlocListener<ResetPasswordCubit, ResetPasswordStates>(
        bloc: cubit,
        listener: listener,
        child: Stack(
          children: [
            Scaffold(
              appBar: AppBar(),
              body: Form(
                key: formKey,
                child: Center(
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    shrinkWrap: true,
                    children: [
                      Text(
                        S.of(context).forgotYourPassword,
                        style: AppText.bold28(context),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Text(
                        S.of(context).resetPasswordDescription,
                        style: AppText.regular16(
                          context,
                          color: ThemeHelper.descriptionColor(context),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      EmailTextField(emailController: emailController),
                      SizedBox(height: 40),
                      Center(
                        child: CustomAuthButton(
                          text: S.of(context).sendOtp,
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              await cubit.getUser(
                                email: emailController.text,
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Builder(
              builder: (context) {
                return CustomLoadingIndicator(
                  isLoading:
                      context.watch<ResetPasswordCubit>().state
                          is ResetPasswordLoading,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void listener(BuildContext context, ResetPasswordStates state) {
    if (state is UserFound) {
      AppTransitions().pushTo(
        context,
        to: OtpVerificationView(
          onVerified: () async {
            AppTransitions().pushTo(
              context,
              to: ChangePasswordView(cubit: cubit),
            );
          },
          type: OTP.resetPasswordOTP,
          user: state.user,
        ),
      );
    } else if (state is UserNotFound) {
      Toast.showFailed(message: state.error);
    } else if (state is ResetPasswordSuccess) {
      Toast.showSuccess(message: S.of(context).passwordChangedSuccessfully);
      AppTransitions().popToFirst(context);
    } else if (state is ResetPasswordFailed) {
      Toast.showFailed(message: state.error);
    }
  }

  @override
  void dispose() {
    cubit.close();
    emailController.dispose();
    super.dispose();
  }
}
