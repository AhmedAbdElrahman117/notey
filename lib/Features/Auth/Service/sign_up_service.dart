import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/supabase_auth.dart';
import 'package:notey/Core/supabase_db.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpService {
  final SupabaseAuth _auth = SupabaseAuth();

  final SupabaseDB _supabaseDB = SupabaseDB();

  // To Do : Handle exceptions properly
  Future<Either<AppException, Unit>> signUp({
    required UserModel user,
  }) async {
    try {
      var signup = await _auth.signUp(user: user);

      user.uid = signup.user?.id;

      await _supabaseDB.insertUser(user: user);

      return right(unit);
    } on AuthException catch (e) {
      return left(SupabaseAuthException(message: e.message, code: e.code));
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
}
