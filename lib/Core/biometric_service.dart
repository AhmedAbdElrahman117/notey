import 'package:dartz/dartz.dart';
import 'package:local_auth/local_auth.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/generated/l10n.dart';

class BiometricService {
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> canAuth() async => await _auth.canCheckBiometrics;

  Future<List<BiometricType>> availableBiometrics() async =>
      await _auth.getAvailableBiometrics();

  Future<bool> hasEnrolledBiometrics() async {
    List<BiometricType> biometrics = await availableBiometrics();
    return biometrics.isNotEmpty;
  }

  Future<bool> _authenticate(String reason) async {
    return await _auth.authenticate(
      localizedReason: reason,
      persistAcrossBackgrounding: true,
      biometricOnly: false,
    );
  }

  Future<Either<AppException, bool>> auth({required String reason}) async {
    try {
      if (await canAuth()) {
        var res = await _authenticate(reason);
        return right(res);
      }
      return left(
        UnknownException(
          message: S.current.biometricNotAvailable,
        ),
      );
    } on LocalAuthException catch (e) {
      return left(
        BiometricAuthException(
          code: e.code.name,
          message: e.description ?? S.current.biometricAuthError,
        ),
      );
    } catch (e) {
      return left(
        UnknownException(message: S.current.biometricAuthFailed(e.toString())),
      );
    }
  }
}
