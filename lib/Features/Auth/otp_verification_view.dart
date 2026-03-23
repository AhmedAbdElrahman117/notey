import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_loading_indicator.dart';
import 'package:notey/Core/otp_type.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Auth/Cubit/OTP%20Cubit/otp_cubit.dart';
import 'package:notey/Features/Auth/Cubit/OTP%20Cubit/otp_states.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:notey/Features/Auth/Widgets/otp_input.dart';
import 'package:notey/generated/l10n.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({
    super.key,
    required this.onVerified,
    required this.type,
    required this.user,
  });

  final Future<void> Function() onVerified;
  final OTP type;
  final UserModel user;

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  late final TextEditingController otpController;

  @override
  void initState() {
    otpController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(
        email: widget.user.email,
        type: widget.type,
      ),
      child: Builder(
        builder: (context) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(),
                body: Center(
                  child: ListView(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Text(
                        S.of(context).verifyYourEmail,
                        style: AppText.bold28(context),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      descriptionText(),
                      SizedBox(height: 32),
                      OtpInput(
                        otpController: otpController,
                        onVerified: widget.onVerified,
                      ),
                      SizedBox(height: 40),
                      Text(
                        S.of(context).didntReceiveCode,
                        style: AppText.regular16(context),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                      Center(
                        child: resendOtpButton(),
                      ),
                    ],
                  ),
                ),
              ),
              // LoadingWidget<OtpCubit, OtpStates>(
              //   isLoading: (state) => state is OtpLoading,
              // ),
              CustomLoadingIndicator(
                isLoading: context.watch<OtpCubit>().state is OtpLoading,
              ),
            ],
          );
        },
      ),
    );
  }

  dynamic resendOtpButton() {
    return BlocSelector<OtpCubit, OtpStates, bool>(
      selector: (state) {
        if (state is OTPTimer) {
          return state.isRunning;
        } else {
          return false;
        }
      },
      builder: (context, state) {
        return TextButton(
          onPressed: state
              ? null
              : () async {
                  await context.read<OtpCubit>().sendOTP(
                    type: widget.type,
                    email: widget.user.email,
                  );
                },
          style: TextButton.styleFrom(
            backgroundColor: AppColors.logo,
            disabledBackgroundColor: Colors.transparent,
          ),
          child: Text(
            state
                ? S
                      .of(context)
                      .availableInSeconds(
                        30 - (context.watch<OtpCubit>().delay?.tick ?? 30),
                      )
                : S.of(context).resendCode,
            style: AppText.regular16(context).copyWith(
              color: state ? null : Colors.white,
            ),
          ),
        );
      },
    );
  }

  // BlocSelector<OtpCubit, OtpStates, bool>(
  //     selector: (state) {
  //       if (state is StartTimer) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     },
  //     builder: (context, state) {
  //       return Visibility(
  //         visible: state,
  //         replacement: ClickableText(
  //           onTap: () async {
  //             await context.read<OtpCubit>().sendOTP(
  //               type: widget.type,
  //               email: widget.user.email,
  //             );
  //           },
  //           text: 'Resend Code',
  //         ),
  //         child: Text(
  //           'Availabale in ${context.watch<OtpCubit>().delay?.tick ?? 30}',
  //           style: AppText.semiBold18(context),
  //         ),
  //       );
  //     },
  //   );

  Text descriptionText() {
    return Text.rich(
      style: AppText.regular18(
        context,
        color: ThemeHelper.descriptionColor(context),
      ),
      textAlign: TextAlign.center,
      TextSpan(
        text: S.of(context).otpSentTo,
        children: [
          TextSpan(
            text: widget.user.email,
            style: AppText.semiBold18(
              context,
              color: ThemeHelper.highlightText(context),
            ),
          ),
          TextSpan(
            text: S.of(context).checkInboxAndSpam,
          ),
        ],
      ),
    );
  }
}
