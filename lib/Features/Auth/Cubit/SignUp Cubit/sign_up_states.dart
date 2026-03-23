sealed class SignUpStates {}

class SignUpInitialState extends SignUpStates {}

class SignUpSuccess extends SignUpStates {}

class SignUpFailed extends SignUpStates {
  final String error;

  SignUpFailed({required this.error});
}

class SignUpLoading extends SignUpStates {}
