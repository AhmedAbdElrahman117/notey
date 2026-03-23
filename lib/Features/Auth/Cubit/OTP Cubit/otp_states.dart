sealed class OtpStates {}

class OtpInitial extends OtpStates {}

class OtpLoading extends OtpStates {}

class OtpSent extends OtpStates {}

class OtpFailed extends OtpStates {
  final String error;

  OtpFailed({required this.error});
}

class OTPTimer extends OtpStates {
  bool isRunning;
  int seconds;

  OTPTimer({this.isRunning = false, this.seconds = 30});
}
