import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Features/Auth/Cubit/Reset%20Password%20Cubit/reset_password_states.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:notey/Features/Auth/Service/reset_password_service.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates> {
  ResetPasswordCubit() : super(ResetPasswordInitial());

  UserModel? user;

  final ResetPasswordService _resetPasswordService = ResetPasswordService();

  Future<void> getUser({required String email}) async {
    emit(ResetPasswordLoading());
    var res = await _resetPasswordService.getUserInfo(email: email);
    res.fold(
      (l) => emit(UserNotFound(error: l.getException())),
      (r) {
        user = r;
        emit(UserFound(user: r));
      },
    );
  }

  Future<void> changeUserPassword({required String newPassword}) async {
    emit(ResetPasswordLoading());

    var res = await _resetPasswordService.changePassword(
      newPassword: newPassword,
      uid: user!.uid!,
    );

    res.fold(
      (l) => emit(
        ResetPasswordFailed(error: l.getException()),
      ),
      (r) {
        user = null;
        emit(ResetPasswordSuccess());
      },
    );
  }
}
