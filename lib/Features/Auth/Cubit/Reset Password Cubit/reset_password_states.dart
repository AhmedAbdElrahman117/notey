import 'package:notey/Features/Auth/Models/user_model.dart';

sealed class ResetPasswordStates {}

class ResetPasswordInitial extends ResetPasswordStates {}

class ResetPasswordLoading extends ResetPasswordStates {}

class ResetPasswordSuccess extends ResetPasswordStates {}

class ResetPasswordFailed extends ResetPasswordStates {
  final String error;

  ResetPasswordFailed({required this.error});
}

class UserNotFound extends ResetPasswordStates {
  final String error;

  UserNotFound({required this.error});
}

class UserFound extends ResetPasswordStates {
  final UserModel user;

  UserFound({required this.user});
}
