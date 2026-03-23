// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file: strict_top_level_inference,unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static String m0(seconds) => "${seconds}초 후 사용 가능";

  static String m1(error) => "생체 인증 실패: ${error}";

  static String m2(error) => "내부 오류: 이미지 디렉토리를 생성할 수 없습니다: ${error}";

  static String m3(dbName) =>
      "이 기기에 이미 ${dbName}이(가) 저장되어 있습니다. 가져온 파일의 데이터를 어떻게 처리하시겠습니까?";

  static String m4(dbName) => "${dbName} 충돌이 감지되었습니다";

  static String m5(count) =>
      "${Intl.plural(count, one: '1일 전', other: '${count}일 전')}";

  static String m6(result) => "데이터베이스가 닫혔습니다: ${result}";

  static String m7(result) => "데이터베이스에 중복된 열이 있습니다: ${result}";

  static String m8(result) => "데이터베이스 예외: ${result}";

  static String m9(result) => "데이터베이스 테이블이 존재하지 않습니다: ${result}";

  static String m10(result) => "데이터베이스를 열지 못했습니다: ${result}";

  static String m11(result) => "SQL 구문 오류: ${result}";

  static String m12(result) => "고유 제약 조건 오류: ${result}";

  static String m13(message) => "디렉토리 오류: ${message}";

  static String m14(message) => "파일 시스템 오류: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1시간 전', other: '${count}시간 전')}";

  static String m16(message) => "내부 오류: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1분 전', other: '${count}분 전')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1개월 전', other: '${count}개월 전')}";

  static String m19(message) => "플랫폼 오류: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1초 전', other: '${count}초 전')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("Notey 정보"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "계정이 성공적으로 생성되었습니다",
    ),
    "add": MessageLookupByLibrary.simpleMessage("추가"),
    "addCategory": MessageLookupByLibrary.simpleMessage("카테고리 추가"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage("새 카테고리 추가"),
    "addToFavorites": MessageLookupByLibrary.simpleMessage("즐겨찾기에 추가"),
    "all": MessageLookupByLibrary.simpleMessage("전체"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. 모든 권리 보유.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "지문, 얼굴, 패턴 또는 PIN을 사용하여 앱을 보호하세요.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("오름차순"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "로그인 세션이 유효하지 않습니다. 다시 로그인해 주세요.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Google에 연결할 수 없습니다. 다시 시도해 주세요.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Google 로그인 중 문제가 발생했습니다. 다시 시도해 주세요.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "확인에 실패했습니다. 보안 확인을 다시 완료해 주세요.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "오류가 발생했습니다. 다시 시도해 주세요.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "이 이메일은 이미 등록되어 있습니다. 로그인을 시도해 주세요.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "유효한 이메일 주소가 아닌 것 같습니다.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "이 이메일은 가입이 허용되지 않습니다. 다른 이메일을 사용해 주세요.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "로그인하기 전에 이메일을 확인해 주세요. 받은 편지함을 확인하세요.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "인증에 실패했습니다. 다시 시도해 주세요.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "이 Google 계정은 이미 다른 사용자에게 연결되어 있습니다.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "이메일 또는 비밀번호가 올바르지 않습니다. 다시 시도해 주세요.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "이 계정은 수동으로 연결할 수 없습니다. 주요 방법으로 로그인해 주세요.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "이 로그인 방법은 지원되지 않습니다.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "시도 횟수가 너무 많습니다. 받은 편지함을 확인하거나 나중에 다시 시도해 주세요.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "로그인 시도 횟수가 너무 많습니다. 잠시 후 다시 시도해 주세요.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "SMS 시도 횟수가 너무 많습니다. 몇 분 후에 다시 시도해 주세요.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "이 전화번호는 이미 등록되어 있습니다.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "이 가입 방법은 사용할 수 없습니다. 다른 방법을 선택해 주세요.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "로그인하기 전에 Google 이메일을 확인해 주세요.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "계속하려면 다시 로그인해 주세요.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "세션이 만료되었습니다. 다시 로그인해 주세요.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "세션이 만료되었습니다. 다시 로그인해 주세요.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "로그인 세션을 찾을 수 없습니다. 다시 로그인해 주세요.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "현재 가입이 비활성화되어 있습니다. 지원팀에 문의해 주세요.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "앱 잠금 설정을 변경하려면 인증해 주세요",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "계정 생성 중 오류가 발생했습니다. 다시 시도해 주세요.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "이 이메일 또는 전화번호로 이미 계정이 있습니다. 로그인해 주세요.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "계정이 정지되었습니다. 도움이 필요하시면 지원팀에 문의해 주세요.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "이 정보로 계정을 찾을 수 없습니다.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "입력된 일부 정보가 유효하지 않습니다. 확인하고 다시 시도해 주세요.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "비밀번호가 너무 약합니다. 문자, 숫자, 기호를 포함한 더 강력한 비밀번호를 사용하세요.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("배경"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage("생체 인증 오류"),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "앱을 열려면 인증해 주세요",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "시도 횟수가 너무 많습니다. 생체 인증이 일시적으로 잠겼습니다. 나중에 다시 시도해 주세요.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "이 기기에서는 생체 인증을 사용할 수 없습니다",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "이 기기에서는 생체 인증을 사용할 수 없습니다.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "생체 인증이 설정되지 않았습니다. 기기 설정에서 지문 또는 Face ID를 등록해 주세요.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "이 운영 체제에서는 생체 인증이 지원되지 않습니다.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "기기 암호가 설정되지 않았습니다. 기기 설정에서 보안 PIN, 패턴 또는 비밀번호를 설정해 주세요.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "시도 횟수가 너무 많습니다. 생체 인증이 비활성화되었습니다. 재설정하려면 PIN/비밀번호로 잠금 해제하세요.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "알 수 없는 오류로 인해 생체 인증에 실패했습니다.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("굵게"),
    "bulletList": MessageLookupByLibrary.simpleMessage("글머리 기호 목록"),
    "cancel": MessageLookupByLibrary.simpleMessage("취소"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("가져오기 취소"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("카테고리"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "여기에서 카테고리를 관리할 수 있습니다.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("카테고리"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("카테고리가 삭제되었습니다"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "카테고리 이름은 비워둘 수 없습니다",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("카테고리 이름"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage("카테고리가 업데이트되었습니다"),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage("카테고리 이름 변경"),
    "changePassword": MessageLookupByLibrary.simpleMessage("비밀번호 변경"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "계정 비밀번호를 다음을 포함하도록 변경",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\n받은 편지함과 스팸 폴더를 확인해 주세요.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("체크리스트"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "선호하는 언어를 선택하세요",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("코드 블록"),
    "color": MessageLookupByLibrary.simpleMessage("색상"),
    "confirm": MessageLookupByLibrary.simpleMessage("확인"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("비밀번호 확인"),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage("비밀번호 확인"),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage("최소 6자"),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage("최소 2개의 숫자"),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "최소 1개의 특수 문자",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage("최소 1개의 대문자"),
    "createAccount": MessageLookupByLibrary.simpleMessage("계정 만들기"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "메모를 정리하기 위한 새 카테고리를 만드세요.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("비밀번호 만들기"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "메모의 보안을 강화하려면 비밀번호를 만들어 주세요.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "참고: 이 비밀번호는 분실 시 복구할 수 없으므로 기억해 두어야 합니다.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("다크 모드"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("삭제"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("카테고리 삭제"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "이 카테고리를 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("메모 삭제"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "이 메모를 삭제하시겠습니까?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("내림차순"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage("코드를 받지 못하셨나요?"),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage("앱 잠금 비활성화"),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage("다크 모드 비활성화"),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("계정이 없으신가요?"),
    "edit": MessageLookupByLibrary.simpleMessage("수정"),
    "editCategory": MessageLookupByLibrary.simpleMessage("카테고리 수정"),
    "email": MessageLookupByLibrary.simpleMessage("이메일"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("이메일이 필요합니다!"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("앱 잠금 활성화"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage("다크 모드 활성화"),
    "enterOtp": MessageLookupByLibrary.simpleMessage("OTP 코드를 입력해 주세요"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("비밀번호 입력"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "이 파일에 액세스하려면 비밀번호를 입력해 주세요.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage("이메일을 입력하세요"),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage("비밀번호를 입력하세요"),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage("사용자 이름을 입력하세요"),
    "error": MessageLookupByLibrary.simpleMessage("오류"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("메모 내보내기"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "성공적으로 내보냈습니다!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("다음으로 내보내기"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "비밀번호 재설정에 실패했습니다. 다시 시도해 주세요.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "OTP 전송에 실패했습니다. 나중에 다시 시도해 주세요!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage("즐겨찾기 모드 켜짐"),
    "fileException": MessageLookupByLibrary.simpleMessage("파일 오류가 발생했습니다."),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage("카테고리 필터"),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "카테고리의 필터 옵션을 선택하세요.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("카테고리"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("생성일"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("생성일"),
    "filterName": MessageLookupByLibrary.simpleMessage("이름"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("제목"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "비밀번호 요구 사항을 따라주세요",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("글꼴 색상"),
    "fontSize": MessageLookupByLibrary.simpleMessage("글꼴 크기"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("비밀번호를 잊으셨나요?"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage("비밀번호를 잊으셨나요?"),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "서버 오류가 발생했습니다. 다시 시도해 주세요.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "서버 엔드포인트가 존재하지 않습니다.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "서버에 잘못된 입력이 전송되었습니다.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "이 작업을 수행할 권한이 없습니다.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "로그인하지 않았습니다. 인증해 주세요.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "서버 오류가 발생했습니다. 나중에 다시 시도해 주세요.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "요청 시간이 초과되었습니다. 다시 시도해 주세요.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "요청이 너무 많습니다. 속도를 줄여주세요.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("시작하기"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "로그인이 취소되었습니다. 계속하려면 다시 시도해 주세요.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "앱의 Google 로그인 구성에 문제가 있습니다. 지원팀에 문의해 주세요.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "로그인 프로세스가 중단되었습니다. 다시 시도해 주세요.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Google 로그인이 올바르게 구성되지 않았습니다. 나중에 다시 시도해 주세요.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "현재 이 기기에서 Google 로그인을 사용할 수 없습니다.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "로그인 중 오류가 발생했습니다. 다시 시도해 주세요.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "이 Google 계정은 예상 사용자와 일치하지 않습니다. 다른 계정을 시도해 주세요.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("게스트 사용자"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("이미지"),
    "images": MessageLookupByLibrary.simpleMessage("이미지"),
    "importNotes": MessageLookupByLibrary.simpleMessage("메모 가져오기"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "성공적으로 가져왔습니다!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("유효하지 않은 이메일"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("유효하지 않은 파일"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("유효하지 않은 OTP 코드"),
    "italic": MessageLookupByLibrary.simpleMessage("기울임"),
    "langArabic": MessageLookupByLibrary.simpleMessage("아랍어"),
    "langChinese": MessageLookupByLibrary.simpleMessage("중국어"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("영어"),
    "langFrench": MessageLookupByLibrary.simpleMessage("프랑스어"),
    "langGerman": MessageLookupByLibrary.simpleMessage("독일어"),
    "langIndian": MessageLookupByLibrary.simpleMessage("힌디어"),
    "langItalian": MessageLookupByLibrary.simpleMessage("이탈리아어"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("일본어"),
    "langKorean": MessageLookupByLibrary.simpleMessage("한국어"),
    "langRussian": MessageLookupByLibrary.simpleMessage("러시아어"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("스페인어"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("터키어"),
    "language": MessageLookupByLibrary.simpleMessage("언어"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage("선호하는 언어를 선택하세요"),
    "login": MessageLookupByLibrary.simpleMessage("로그인"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "로그인하여 모든 기기에서 메모를 안전하게 동기화하고 백업하세요",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "로그인하여 모든 기기에서 메모를 동기화하세요",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("로그아웃"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "정말 로그아웃하시겠습니까?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage("기존 데이터와 병합"),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("더 보기"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "인터넷 연결을 확인하고 다시 시도해 주세요.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("다음"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "메모를 더 잘 정리하려면 카테고리를 추가하세요.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage("아직 카테고리가 없습니다"),
    "noContent": MessageLookupByLibrary.simpleMessage("내용 없음"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("즐겨찾기 없음"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "아직 즐겨찾기에 메모를 추가하지 않았습니다.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage("파일이 선택되지 않았습니다."),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("아직 메모가 없습니다"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "+ 버튼을 탭하여 첫 번째 메모를 만드세요.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "출력 디렉토리가 선택되지 않았습니다",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "비밀번호가 제공되지 않았습니다.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("결과를 찾을 수 없습니다"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("사용 불가"),
    "notSynced": MessageLookupByLibrary.simpleMessage("동기화되지 않음"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("메모가 추가되었습니다"),
    "noteContent": MessageLookupByLibrary.simpleMessage("메모 내용"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("메모 제목"),
    "notes": MessageLookupByLibrary.simpleMessage("메모"),
    "numberedList": MessageLookupByLibrary.simpleMessage("번호 매기기 목록"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "오프라인에서 생각을 캡처하고 정리하고, 모든 기기에서 원활하게 동기화하세요",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "이미지, 음성 메모를 추가하고 PDF, Word 또는 텍스트로 내보내 최대한의 유연성을",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "모든 메모는 종단 간 암호화로 보호됩니다 — 오직 당신만 읽을 수 있습니다",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage("당신의 메모, 항상 함께"),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage("텍스트 그 이상"),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage("개인 정보 보호가 중요합니다"),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("또는 다음으로 로그인"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage("인증 코드를 보냈습니다: "),
    "password": MessageLookupByLibrary.simpleMessage("비밀번호"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "비밀번호가 성공적으로 변경되었습니다",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "비밀번호 확인이 필요합니다!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "비밀번호는 최소 6자 이상이어야 합니다",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "비밀번호에는 공백을 사용할 수 없습니다",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage("비밀번호가 필요합니다!"),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "비밀번호가 일치하지 않습니다",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage("경로 오류가 발생했습니다."),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF 파일 (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("언어 선택"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("잠시만 기다려 주세요..."),
    "previous": MessageLookupByLibrary.simpleMessage("이전"),
    "print": MessageLookupByLibrary.simpleMessage("인쇄"),
    "remove": MessageLookupByLibrary.simpleMessage("제거"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage("즐겨찾기에서 제거"),
    "removeImage": MessageLookupByLibrary.simpleMessage("이미지 제거"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "이 메모에서 이 이미지를 제거하시겠습니까?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage("기존 데이터 교체"),
    "resendCode": MessageLookupByLibrary.simpleMessage("코드 재전송"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "비밀번호를 재설정하기 위한 OTP 코드를 받으려면 아래에 이메일을 입력하세요",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "메모 제목 또는 내용...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("카테고리 선택"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("OTP 보내기"),
    "settings": MessageLookupByLibrary.simpleMessage("설정"),
    "share": MessageLookupByLibrary.simpleMessage("공유"),
    "shareError": MessageLookupByLibrary.simpleMessage("메모 공유 중 오류가 발생했습니다"),
    "shareFailed": MessageLookupByLibrary.simpleMessage("공유 실패"),
    "signUp": MessageLookupByLibrary.simpleMessage("회원가입"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "가입하여 어디서나 메모를 안전하게 동기화하고 백업하세요",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("건너뛰기"),
    "sortBy": MessageLookupByLibrary.simpleMessage("정렬 기준"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("취소선"),
    "style": MessageLookupByLibrary.simpleMessage("스타일"),
    "subscript": MessageLookupByLibrary.simpleMessage("아래 첨자"),
    "success": MessageLookupByLibrary.simpleMessage("성공"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "값 중 하나가 데이터베이스 규칙을 충족하지 않습니다 (검사 제약 조건).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "액세스하려는 열이 존재하지 않습니다.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "이 레코드는 이미 존재합니다. 다른 값을 사용해 주세요.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "데이터베이스 오류가 발생했습니다. 다시 시도해 주세요.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "이 값은 이미 존재합니다. 다른 값을 사용해 주세요 (중복 키).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "이 레코드는 다른 레코드에 연결되어 있어 삭제/업데이트할 수 없습니다 (외래 키 위반).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "이 함수는 데이터베이스에 존재하지 않습니다.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "입력 중 하나가 너무 깁니다. 줄여서 다시 시도해 주세요.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "데이터베이스 내부 오류가 발생했습니다. 나중에 다시 시도해 주세요.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "유효하지 않은 날짜 또는 시간 형식입니다. 올바른 형식을 사용해 주세요.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "유효하지 않은 입력 유형입니다. 데이터를 확인해 주세요.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "유효하지 않은 요청입니다. 입력한 정보를 확인해 주세요.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "이 리소스에 액세스할 수 없습니다.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "이 작업을 수행할 권한이 없습니다.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "인증되지 않았습니다. 먼저 로그인해 주세요.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "요청된 리소스를 찾을 수 없습니다.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "요청 시간이 너무 오래 걸려 취소되었습니다. 다시 시도해 주세요.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "필수 필드가 누락되었습니다. 모든 필수 정보를 입력해 주세요.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "행 수준 보안으로 인해 이 요청이 차단되었습니다.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "데이터베이스 쿼리에 문제가 있습니다 (구문 오류).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "액세스하려는 테이블이 존재하지 않습니다.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "데이터베이스에 연결이 너무 많습니다. 나중에 다시 시도해 주세요.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "예기치 않은 데이터베이스 오류입니다. 나중에 다시 시도해 주세요.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("위 첨자"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("메모 동기화"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "항상 메모를 클라우드와 동기화",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("동기화됨"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("텍스트 파일 (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("테마"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "연결 시간이 초과되었습니다. 다시 시도해 주세요!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("미분류"),
    "underline": MessageLookupByLibrary.simpleMessage("밑줄"),
    "unknownError": MessageLookupByLibrary.simpleMessage("알 수 없는 오류가 발생했습니다."),
    "untitled": MessageLookupByLibrary.simpleMessage("제목 없음"),
    "username": MessageLookupByLibrary.simpleMessage("사용자 이름"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "사용자 이름은 문자로 시작하고 문자와 숫자만 포함해야 합니다",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage("사용자 이름을 입력해 주세요"),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage("이메일 확인"),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "비밀번호가 틀리거나 데이터가 손상되었습니다.",
    ),
  };
}
