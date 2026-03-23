sealed class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginFailed extends LoginStates {
  final String error;

  LoginFailed({required this.error});
}

class LoginLoading extends LoginStates {}
