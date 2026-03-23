import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Auth/Cubit/OTP%20Cubit/otp_cubit.dart';
import 'package:notey/generated/l10n.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatefulWidget {
  const OtpInput({
    super.key,
    required this.otpController,
    required this.onVerified,
  });

  final TextEditingController otpController;
  final Future<void> Function() onVerified;

  @override
  State<OtpInput> createState() => _OtpInputState();
}

class _OtpInputState extends State<OtpInput> {
  late PinTheme pinTheme;

  @override
  Widget build(BuildContext context) {
    pinTheme = ThemeHelper.pinTheme(context);
    return Pinput(
      length: 4,
      controller: widget.otpController,
      defaultPinTheme: pinTheme,
      focusedPinTheme: pinTheme.copyBorderWith(
        border: Border.all(
          color: AppColors.logo,
          width: 2,
        ),
      ),
      errorPinTheme: pinTheme.copyBorderWith(
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
      submittedPinTheme: pinTheme.copyBorderWith(
        border: Border.all(
          color: Colors.green,
          width: 2,
        ),
      ),
      hapticFeedbackType: HapticFeedbackType.mediumImpact,
      keyboardType: TextInputType.number,
      onClipboardFound: (value) {
        widget.otpController.text = value;
      },
      onCompleted: (value) async {
        if (value == EmailOTP.getOTP()) {
          context.read<OtpCubit>().setLoading();
          await widget.onVerified.call();
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          return S.of(context).enterOtp;
        } else if (value != EmailOTP.getOTP()) {
          return S.of(context).invalidOtp;
        }
        return null;
      },
    );
  }
}
