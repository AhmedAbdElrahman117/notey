import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_loading_indicator.dart';
import 'package:notey/Core/password_checker.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Auth/Cubit/Reset%20Password%20Cubit/reset_password_cubit.dart';
import 'package:notey/Features/Auth/Cubit/Reset%20Password%20Cubit/reset_password_states.dart';
import 'package:notey/Features/Auth/Widgets/confirm_password_field.dart';
import 'package:notey/Features/Auth/Widgets/custom_auth_button.dart';
import 'package:notey/Features/Auth/Widgets/password_constraint_widget.dart';
import 'package:notey/Features/Auth/Widgets/password_text_field.dart';
import 'package:notey/generated/l10n.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key, required this.cubit});

  final ResetPasswordCubit cubit;

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final PasswordChecker checker = PasswordChecker();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
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
                      S.of(context).changePassword,
                      style: AppText.bold28(context),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24),
                    Text(
                      S.of(context).changePasswordDescription,
                      style: AppText.regular16(
                        context,
                        color: ThemeHelper.descriptionColor(context),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    PasswordTextField(
                      passwordController: passwordController,
                      onChanged: (value) {
                        checker.checkAll(value);
                      },
                    ),
                    SizedBox(height: 20),
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
                        text: S.of(context).changePassword,
                        onPressed: () async {
                          var allValid = checker.allValid();

                          if (formKey.currentState!.validate() && allValid) {
                            await widget.cubit.changeUserPassword(
                              newPassword: passwordController.text,
                            );
                          } else if (allValid == false) {
                            Toast.showFailed(
                              message: S.of(context).followPasswordConstraints,
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
    );
  }
}
