import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Features/Auth/Cubit/Login%20Cubit/login_states.dart';
import 'package:notey/Features/Auth/Service/login_service.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  final LoginService _loginService = LoginService();

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());

    var res = await _loginService.loginWithEmailandPassword(
      email: email,
      password: password,
    );

    res.fold(
      (l) => emit(LoginFailed(error: l.getException())),
      (r) => emit(LoginSuccess()),
    );
  }

  Future<void> loginWithGoogle() async {
    emit(LoginLoading());
    var res = await _loginService.loginWithGoogle();
    res.fold(
      (l) => emit(LoginFailed(error: l.getException())),
      (r) => emit(LoginSuccess()),
    );
  }

  Future<void> loginWithFacebook() async {
    emit(LoginLoading());
    var res = await _loginService.loginWithFacebook();
    res.fold(
      (l) => emit(LoginFailed(error: l.getException())),
      (r) => emit(LoginSuccess()),
    );
  }
}
