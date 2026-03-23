import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Features/Auth/Cubit/SignUp%20Cubit/sign_up_states.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:notey/Features/Auth/Service/sign_up_service.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit() : super(SignUpInitialState());

  final SignUpService _signUpService = SignUpService();

  Future<void> signUp({required UserModel user}) async {
    emit(SignUpLoading());
    var res = await _signUpService.signUp(user: user);
    res.fold(
      (l) => emit(SignUpFailed(error: l.getException())),
      (r) => emit(SignUpSuccess()),
    );
  }
}
