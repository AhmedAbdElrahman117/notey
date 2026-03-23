import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:email_otp/email_otp.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/generated/l10n.dart';

class OTPService {
  Future<Either<AppException, Unit>> sendOTP({
    required String email,
  }) async {
    var result = await EmailOTP.sendOTP(email: email);
    log(EmailOTP.getOTP() ?? 'No OTP');
    if (result) {
      return right(unit);
    } else {
      return left(
        UnknownException(
          message: S.current.failedToSendOtp,
        ),
      );
    }
  }
}
