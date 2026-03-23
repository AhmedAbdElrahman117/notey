import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/otp_type.dart';
import 'package:notey/Features/Auth/Cubit/OTP%20Cubit/otp_states.dart';
import 'package:notey/Features/Auth/Service/otp_service.dart';

class OtpCubit extends Cubit<OtpStates> {
  OtpCubit({required OTP type, required String email}) : super(OtpInitial()) {
    sendOTP(type: type, email: email);
  }

  Timer? delay;

  Future<void> sendOTP({required OTP type, required String email}) async {
    emit(OtpLoading());
    var res = await OTPService().sendOTP(email: email);

    res.fold(
      (l) => emit(OtpFailed(error: l.getException())),
      (r) {
        setDelay();
        emit(OTPTimer(isRunning: true));
      },
    );
  }

  void setDelay() {
    delay = Timer.periodic(
      1.seconds,
      (timer) {
        if (timer.tick <= 30) {
          emit(OTPTimer(isRunning: true, seconds: 30 - timer.tick));
        } else {
          emit(OTPTimer(isRunning: false, seconds: 0));
          timer.cancel();
        }
      },
    );
  }

  void setLoading() {
    emit(OtpLoading());
  }

  @override
  Future<void> close() {
    delay?.cancel();
    return super.close();
  }
}
