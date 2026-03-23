import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/supabase_auth.dart';
import 'package:notey/Core/supabase_db.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:notey/generated/l10n.dart';

class ResetPasswordService {
  final SupabaseDB _supabaseDB = SupabaseDB();

  final SupabaseAuth _auth = SupabaseAuth();

  Future<Either<AppException, UserModel>> getUserInfo({
    required String email,
  }) async {
    try {
      var user = await _supabaseDB.getUser(email: email);
      return right(user);
    } on PostgrestException catch (e) {
      return left(SupabaseDBException(message: e.message, code: e.code));
    } on SocketException catch (e) {
      return left(NetworkException(message: e.message));
    } on TimeoutException {
      return left(Timeout());
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, Unit>> changePassword({
    required String newPassword,
    required String uid,
  }) async {
    try {
      var res = await _auth.resetPassword(
        newPassword: newPassword,
        uid: uid,
      );

      if (res) {
        return Right(unit);
      } else {
        return Left(
          UnknownException(
            message: S.current.failedToResetPassword,
          ),
        );
      }
    } on FunctionException catch (e) {
      return Left(
        SupabaseFunctionsException(
          code: e.status.toString(),
          message: e.reasonPhrase,
        ),
      );
    } on SocketException catch (e) {
      return Left(NetworkException(message: e.message));
    } on TimeoutException {
      return left(Timeout());
    } catch (e) {
      return Left(UnknownException(message: e.toString()));
    }
  }
}
