import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:notey/Core/api_keys.dart';
import 'package:notey/Features/Auth/Models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuth {
  final _auth = Supabase.instance.client.auth;

  final _edgeFunctions = Supabase.instance.client.functions;

  Future<AuthResponse> signUp({
    required UserModel user,
  }) async {
    return await _auth
        .signUp(
          email: user.email,
          password: user.password!,
          data: {
            'userName': user.userName,
            'createdAt': DateTime.now().toIso8601String(),
          },
        )
        .timeout(30.seconds);
  }

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    return await _auth
        .signInWithPassword(
          email: email,
          password: password,
        )
        .timeout(30.seconds);
  }

  Future<AuthResponse?> loginWithFacebook() async {
    var res = await FacebookAuth.instance.login();

    if (res.status == LoginStatus.success) {
      return await _auth.signInWithIdToken(
        provider: OAuthProvider.facebook,
        idToken: res.accessToken!.tokenString,
      );
    }

    return null;
  }

  Future<bool> resetPassword({
    required String uid,
    required String newPassword,
  }) async {
    var res = await _edgeFunctions.invoke(
      'update_password',
      body: {
        'uid': uid,
        'password': newPassword,
      },
    );

    return res.data['success'] as bool;
  }

  Future<AuthResponse> loginWithGoogle() async {
    final scopes = ['email', 'profile'];
    final googleSignIn = GoogleSignIn.instance;
    await googleSignIn.initialize(
      clientId: androidClientId,
      serverClientId: webClientId,
    );
    final googleUser = await googleSignIn.authenticate();

    final authorization =
        await googleUser.authorizationClient.authorizationForScopes(scopes) ??
        await googleUser.authorizationClient.authorizeScopes(scopes);
    final idToken = googleUser.authentication.idToken;
    if (idToken == null) {
      throw AuthException('No ID Token found.');
    }

    return await _auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: authorization.accessToken,
    );
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  User? isLoggedIn() {
    return _auth.currentUser;
  }
}
