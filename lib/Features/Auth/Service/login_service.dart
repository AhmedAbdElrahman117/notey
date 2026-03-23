import 'dart:async';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/supabase_auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginService {
  final SupabaseAuth _auth = SupabaseAuth();

  Future<Either<AppException, Unit>> loginWithEmailandPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.login(
        email: email,
        password: password,
      );

      return right(unit);
    } on AuthException catch (e) {
      return left(
        SupabaseAuthException(message: e.message, code: e.code),
      );
    } on SocketException catch (e) {
      return left(
        NetworkException(message: e.message),
      );
    } on TimeoutException {
      return left(Timeout());
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, Unit>> loginWithGoogle() async {
    try {
      await _auth.loginWithGoogle();
      return right(unit);
    } on GoogleSignInException catch (e) {
      return left(
        GoogleSignInAuthException(googleCode: e.code, message: e.code.name),
      );
    } on AuthException catch (e) {
      return left(SupabaseAuthException(message: e.message, code: e.code));
    } on SocketException catch (e) {
      return left(NetworkException(message: e.message));
    } on TimeoutException {
      return left(Timeout());
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, Unit>> loginWithFacebook() async {
    try {
      var res = await _auth.loginWithFacebook();

      if (res != null) {
        return right(unit);
      } else {
        // To Do: Replace with Unknown error after fixing the exception conflicts
        return left(
          SupabaseAuthException(message: res.toString()),
        );
      }
    } on AuthException catch (e) {
      return left(SupabaseAuthException(message: e.message, code: e.code));
    } on SocketException catch (e) {
      return left(NetworkException(message: e.message));
    } on TimeoutException {
      return left(Timeout());
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }
}
