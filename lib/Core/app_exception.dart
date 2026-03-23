import 'package:google_sign_in/google_sign_in.dart';
import 'package:notey/generated/l10n.dart';
import 'package:sqflite/sqflite.dart';

abstract class AppException {
  final String? message;
  final String? code;

  AppException({this.message, this.code});

  String getException();
}

class LocalDatabaseException extends AppException {
  final DatabaseException dbException;
  LocalDatabaseException({
    required this.dbException,
    super.message,
    super.code,
  });

  @override
  String getException() {
    if (dbException.isUniqueConstraintError()) {
      return S.current.dbUniqueConstraintError(dbException.result.toString());
    } else if (dbException.isSyntaxError()) {
      return S.current.dbSyntaxError(dbException.result.toString());
    } else if (dbException.isDatabaseClosedError()) {
      return S.current.dbClosedError(dbException.result.toString());
    } else if (dbException.isDatabaseClosedError()) {
      return S.current.dbClosedError(dbException.result.toString());
    } else if (dbException.isDuplicateColumnError()) {
      return S.current.dbDuplicateColumnError(dbException.result.toString());
    } else if (dbException.isNoSuchTableError()) {
      return S.current.dbNoSuchTableError(dbException.result.toString());
    } else if (dbException.isOpenFailedError()) {
      return S.current.dbOpenFailedError(dbException.result.toString());
    } else {
      return S.current.dbGenericException(dbException.result.toString());
    }
  }
}

class PathException extends AppException {
  PathException({super.message, super.code});

  @override
  String getException() {
    return message ?? S.current.pathException;
  }
}

class FileException extends AppException {
  FileException({super.message, super.code});

  @override
  String getException() {
    return message ?? S.current.fileException;
  }
}

class SupabaseAuthException extends AppException {
  SupabaseAuthException({
    required super.message,
    super.code,
  });

  @override
  String getException() => switch (code) {
    // 📝 SIGN UP
    'email_exists' => S.current.authEmailExists,
    'user_already_exists' => S.current.authUserAlreadyExists,
    'phone_exists' => S.current.authPhoneExists,
    'weak_password' => S.current.authWeakPassword,
    'email_address_invalid' => S.current.authEmailInvalid,
    'email_address_not_authorized' => S.current.authEmailNotAuthorized,
    'signup_disabled' => S.current.authSignupDisabled,
    'provider_disabled' => S.current.authProviderDisabled,
    'captcha_failed' => S.current.authCaptchaFailed,
    'over_email_send_rate_limit' => S.current.authOverEmailRateLimit,
    'over_sms_send_rate_limit' => S.current.authOverSmsRateLimit,
    'validation_failed' => S.current.authValidationFailed,
    'unexpected_failure' => S.current.authUnexpectedFailure,

    // 🔑 LOGIN (Email & Password)
    'invalid_credentials' => S.current.authInvalidCredentials,
    'user_not_found' => S.current.authUserNotFound,
    'email_not_confirmed' => S.current.authEmailNotConfirmed,
    'user_banned' => S.current.authUserBanned,
    'session_expired' => S.current.authSessionExpired,
    'session_not_found' => S.current.authSessionNotFound,
    'refresh_token_not_found' => S.current.authRefreshTokenNotFound,
    'bad_jwt' => S.current.authBadJwt,
    'reauthentication_needed' => S.current.authReauthenticationNeeded,
    'over_request_rate_limit' => S.current.authOverRequestRateLimit,

    // 🌍 LOGIN (Google / OAuth)
    'oauth_provider_not_supported' => S.current.authOauthProviderNotSupported,
    'bad_oauth_callback' => S.current.authBadOauthCallback,
    'bad_oauth_state' => S.current.authBadOauthState,
    'provider_email_needs_verification' =>
      S.current.authProviderEmailNeedsVerification,
    'identity_already_exists' => S.current.authIdentityAlreadyExists,
    'manual_linking_disabled' => S.current.authManualLinkingDisabled,

    // Default
    _ => S.current.authDefaultError,
  };
}

class GoogleSignInAuthException extends AppException {
  GoogleSignInAuthException({
    required super.message,
    required this.googleCode,
    super.code,
  });

  final GoogleSignInExceptionCode googleCode;

  @override
  String getException() => switch (googleCode) {
    GoogleSignInExceptionCode.unknownError =>
      S.current.googleSignInUnknownError,
    GoogleSignInExceptionCode.canceled => S.current.googleSignInCanceled,
    GoogleSignInExceptionCode.interrupted => S.current.googleSignInInterrupted,
    GoogleSignInExceptionCode.clientConfigurationError =>
      S.current.googleSignInClientConfigError,
    GoogleSignInExceptionCode.providerConfigurationError =>
      S.current.googleSignInProviderConfigError,
    GoogleSignInExceptionCode.uiUnavailable =>
      S.current.googleSignInUiUnavailable,
    GoogleSignInExceptionCode.userMismatch =>
      S.current.googleSignInUserMismatch,
  };
}

class SupabaseFunctionsException extends AppException {
  SupabaseFunctionsException({
    super.message,
    required super.code,
  });

  @override
  String getException() => switch (code) {
    '400' => S.current.functionsInvalidInput,
    '401' => S.current.functionsNotLoggedIn,
    '403' => S.current.functionsNoPermission,
    '404' => S.current.functionsEndpointNotFound,
    '429' => S.current.functionsTooManyRequests,
    '500' => S.current.functionsServerError,
    '504' => S.current.functionsTimeout,
    // Default
    _ => S.current.functionsDefaultError,
  };
}

class SupabaseDBException extends AppException {
  SupabaseDBException({
    required super.message,
    required super.code,
  });

  @override
  String getException() => switch (code) {
    // 🔑 Authentication / Permission
    '42501' => S.current.supabaseDbNoPermission,
    'PGRST301' => S.current.supabaseDbRlsBlocked,
    '401' => S.current.supabaseDbNotAuthorized,
    '403' => S.current.supabaseDbNoAccess,

    // 📦 Resource / Existence
    '42P01' => S.current.supabaseDbTableNotExist,
    '42703' => S.current.supabaseDbColumnNotExist,
    '42883' => S.current.supabaseDbFunctionNotExist,
    '404' => S.current.supabaseDbNotFound,

    // 🔑 Constraints
    '23505' => S.current.supabaseDbDuplicateKey,
    '23503' => S.current.supabaseDbForeignKeyViolation,
    '23502' => S.current.supabaseDbRequiredFieldMissing,
    '23514' => S.current.supabaseDbCheckConstraint,

    // 📝 Data Types
    '22001' => S.current.supabaseDbInputTooLong,
    '22007' => S.current.supabaseDbInvalidDateFormat,
    '22P02' => S.current.supabaseDbInvalidInputType,

    // ⚡ Performance / Connection
    '53300' => S.current.supabaseDbTooManyConnections,
    '57014' => S.current.supabaseDbRequestCanceled,
    '500' => S.current.supabaseDbInternalError,
    '520' => S.current.supabaseDbUnexpectedError,

    // 🔄 Conflict / Duplicate
    '409' => S.current.supabaseDbConflict,

    // 🛑 Syntax / Query
    '42601' => S.current.supabaseDbSyntaxError,
    '400' => S.current.supabaseDbInvalidRequest,

    // Default
    _ => S.current.supabaseDbDefaultError,
  };
}

class BiometricAuthException extends AppException {
  BiometricAuthException({
    super.message,
    required super.code,
  });

  @override
  String getException() => switch (code) {
    // 🔒 Security Lockouts
    'LockedOut' => S.current.biometricLockedOut,
    'PermanentlyLockedOut' => S.current.biometricPermanentlyLockedOut,

    // ⚙️ Hardware/Setup Issues
    'NotAvailable' => S.current.biometricNotAvailableDevice,
    'NotEnrolled' => S.current.biometricNotEnrolled,
    'PasscodeNotSet' => S.current.biometricPasscodeNotSet,

    // 💻 System Issues
    'OtherOperatingSystem' => S.current.biometricOtherOS,

    // Default (Fallthrough)
    _ => message ?? S.current.biometricUnknownError,
  };
}

class NetworkException extends AppException {
  NetworkException({required super.message, super.code});

  @override
  String getException() => '${S.current.networkError}\n$message';
}

class Timeout extends AppException {
  Timeout({super.message, super.code});

  @override
  String getException() {
    return message ?? S.current.timeoutError;
  }
}

class UnknownException extends AppException {
  UnknownException({super.message, super.code});

  @override
  String getException() {
    return message ?? S.current.unknownError;
  }
}
