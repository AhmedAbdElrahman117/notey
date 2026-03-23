// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ja';

  static String m0(seconds) => "${seconds}秒後に利用可能";

  static String m1(error) => "生体認証に失敗しました: ${error}";

  static String m2(error) => "内部エラー：画像ディレクトリを作成できません：${error}";

  static String m3(dbName) =>
      "このデバイスにはすでに${dbName}が保存されています。インポートされたファイルからのデータをどのように処理しますか？";

  static String m4(dbName) => "${dbName}の競合が検出されました";

  static String m5(count) =>
      "${Intl.plural(count, one: '1日前', other: '${count}日前')}";

  static String m6(result) => "データベースがクローズされています：${result}";

  static String m7(result) => "データベースに重複した列があります：${result}";

  static String m8(result) => "データベース例外：${result}";

  static String m9(result) => "データベーステーブルが存在しません：${result}";

  static String m10(result) => "データベースを開けませんでした：${result}";

  static String m11(result) => "SQL構文エラー：${result}";

  static String m12(result) => "一意性制約エラー：${result}";

  static String m13(message) => "ディレクトリエラー：${message}";

  static String m14(message) => "ファイルシステムエラー：${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1時間前', other: '${count}時間前')}";

  static String m16(message) => "内部エラー：${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1分前', other: '${count}分前')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1ヶ月前', other: '${count}ヶ月前')}";

  static String m19(message) => "プラットフォームエラー：${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1秒前', other: '${count}秒前')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("Noteyについて"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "アカウントが正常に作成されました",
    ),
    "add": MessageLookupByLibrary.simpleMessage("追加"),
    "addCategory": MessageLookupByLibrary.simpleMessage("カテゴリを追加"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage("新しいカテゴリを追加"),
    "addToFavorites": MessageLookupByLibrary.simpleMessage("お気に入りに追加"),
    "all": MessageLookupByLibrary.simpleMessage("すべて"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. 全著作権所有。",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "指紋、顔、パターン、またはPINを使用してアプリを保護します。",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("昇順"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "ログインセッションが無効です。もう一度ログインしてください。",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Googleに接続できませんでした。もう一度お試しください。",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Googleサインイン中に問題が発生しました。もう一度お試しください。",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "確認に失敗しました。セキュリティチェックをもう一度完了してください。",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "エラーが発生しました。もう一度お試しください。",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "このメールアドレスはすでに登録されています。ログインしてみてください。",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "有効なメールアドレスではないようです。",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "このメールアドレスは登録が許可されていません。別のメールアドレスを使用してください。",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "ログインする前にメールアドレスを確認してください。受信トレイを確認してください。",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "認証に失敗しました。もう一度お試しください。",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "このGoogleアカウントはすでに別のユーザーにリンクされています。",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "メールアドレスまたはパスワードが間違っています。もう一度お試しください。",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "このアカウントは手動でリンクできません。主要な方法でサインインしてください。",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "このログイン方法はサポートされていません。",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "試行回数が多すぎます。受信トレイを確認するか、後でもう一度お試しください。",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "ログイン試行回数が多すぎます。しばらく待ってからもう一度お試しください。",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "SMS試行回数が多すぎます。数分待ってからもう一度お試しください。",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "この電話番号はすでに登録されています。",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "この登録方法は利用できません。別の方法を選択してください。",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "サインインする前にGoogleメールを確認してください。",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "続行するにはもう一度ログインしてください。",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "セッションが期限切れになりました。もう一度ログインしてください。",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "セッションが期限切れになりました。もう一度ログインしてください。",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "ログインセッションが見つかりませんでした。もう一度ログインしてください。",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "現在、登録は無効になっています。サポートにお問い合わせください。",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "アプリロック設定を変更するには認証してください",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "アカウントの作成中にエラーが発生しました。もう一度お試しください。",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "このメールアドレスまたは電話番号でアカウントがすでに存在します。ログインしてください。",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "あなたのアカウントは停止されています。サポートにお問い合わせください。",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "これらの詳細に一致するアカウントが見つかりませんでした。",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "入力された詳細の一部が無効です。確認してもう一度お試しください。",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "パスワードが弱すぎます。文字、数字、記号を含むより強力なパスワードを使用してください。",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("背景"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage("生体認証エラー"),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "アプリを開くには認証してください",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "試行回数が多すぎます。生体認証は一時的にロックされています。後でもう一度お試しください。",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "このデバイスでは生体認証は利用できません",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "このデバイスでは生体認証を利用できません。",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "生体認証が設定されていません。デバイス設定で指紋またはFace IDを登録してください。",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "このオペレーティングシステムでは生体認証はサポートされていません。",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "デバイスのパスコードが設定されていません。デバイス設定でセキュリティPIN、パターン、またはパスワードを設定してください。",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "試行回数が多すぎます。生体認証が無効になっています。リセットするにはPIN/パスワードでロックを解除してください。",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "不明なエラーにより生体認証が失敗しました。",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("太字"),
    "bulletList": MessageLookupByLibrary.simpleMessage("箇条書き"),
    "cancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("インポートをキャンセル"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("カテゴリ"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "ここでカテゴリを管理できます。",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("カテゴリ"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("カテゴリが削除されました"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage("カテゴリ名は空にできません"),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("カテゴリ名"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage("カテゴリが更新されました"),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage("カテゴリ名を変更"),
    "changePassword": MessageLookupByLibrary.simpleMessage("パスワードを変更"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "アカウントのパスワードを以下を含むように変更",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\n受信トレイとスパムフォルダを確認してください。",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("チェックリスト"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "お好みの言語を選択してください",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("コードブロック"),
    "color": MessageLookupByLibrary.simpleMessage("色"),
    "confirm": MessageLookupByLibrary.simpleMessage("確認"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("パスワード確認"),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage("パスワードを確認"),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage("6文字以上"),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage("2つ以上の数字"),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage("1つ以上の特殊文字"),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage("1つ以上の大文字"),
    "createAccount": MessageLookupByLibrary.simpleMessage("アカウント作成"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "メモを整理するための新しいカテゴリを作成します。",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("パスワードを作成"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "メモのセキュリティを強化するため、パスワードを作成してください。",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "注意：このパスワードは忘れると復元できないため、覚えておいてください。",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("ダークモード"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("削除"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("カテゴリを削除"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "このカテゴリを削除してもよろしいですか？この操作は元に戻せません。",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("メモを削除"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "このメモを削除してもよろしいですか？",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("降順"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage("コードが届きませんでしたか？"),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage("アプリロックを無効にする"),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage("ダークモードを無効にする"),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("アカウントをお持ちでないですか？"),
    "edit": MessageLookupByLibrary.simpleMessage("編集"),
    "editCategory": MessageLookupByLibrary.simpleMessage("カテゴリを編集"),
    "email": MessageLookupByLibrary.simpleMessage("メールアドレス"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("メールアドレスが必要です！"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("アプリロックを有効にする"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage("ダークモードを有効にする"),
    "enterOtp": MessageLookupByLibrary.simpleMessage("OTPコードを入力してください"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("パスワードを入力"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "このファイルにアクセスするにはパスワードを入力してください。",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage("メールアドレスを入力"),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage("パスワードを入力"),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage("ユーザー名を入力"),
    "error": MessageLookupByLibrary.simpleMessage("エラー"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("メモをエクスポート"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "正常にエクスポートされました！",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("エクスポート形式"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "パスワードのリセットに失敗しました。もう一度お試しください。",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "OTPの送信に失敗しました。後でもう一度お試しください！",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage("お気に入りモードがオン"),
    "fileException": MessageLookupByLibrary.simpleMessage("ファイルエラーが発生しました。"),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage("カテゴリをフィルタ"),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "カテゴリのフィルタオプションを選択してください。",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("カテゴリ"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("作成日"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("作成日"),
    "filterName": MessageLookupByLibrary.simpleMessage("名前"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("タイトル"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "パスワードの要件に従ってください",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("フォントカラー"),
    "fontSize": MessageLookupByLibrary.simpleMessage("フォントサイズ"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("パスワードをお忘れですか？"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage("パスワードをお忘れですか？"),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "サーバーエラーが発生しました。もう一度お試しください。",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "サーバーエンドポイントが存在しません。",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "サーバーに送信された入力が無効です。",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "この操作を実行する権限がありません。",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "ログインしていません。認証してください。",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "サーバーエラーが発生しました。後でもう一度お試しください。",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "リクエストがタイムアウトしました。もう一度お試しください。",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "リクエストが多すぎます。速度を落としてください。",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("始めましょう"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "サインインがキャンセルされました。続行する場合はもう一度お試しください。",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "アプリのGoogleサインイン設定に問題があります。サポートにお問い合わせください。",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "サインインプロセスが中断されました。もう一度お試しください。",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Googleサインインが正しく設定されていません。後でもう一度お試しください。",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "このデバイスでは現在Googleサインインを利用できません。",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "サインイン中にエラーが発生しました。もう一度お試しください。",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "このGoogleアカウントは期待されるユーザーと一致しません。別のアカウントをお試しください。",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("ゲストユーザー"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("画像"),
    "images": MessageLookupByLibrary.simpleMessage("画像"),
    "importNotes": MessageLookupByLibrary.simpleMessage("メモをインポート"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "正常にインポートされました！",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("無効なメールアドレス"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("無効なファイル"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("無効なOTPコード"),
    "italic": MessageLookupByLibrary.simpleMessage("斜体"),
    "langArabic": MessageLookupByLibrary.simpleMessage("アラビア語"),
    "langChinese": MessageLookupByLibrary.simpleMessage("中国語"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("英語"),
    "langFrench": MessageLookupByLibrary.simpleMessage("フランス語"),
    "langGerman": MessageLookupByLibrary.simpleMessage("ドイツ語"),
    "langIndian": MessageLookupByLibrary.simpleMessage("ヒンディー語"),
    "langItalian": MessageLookupByLibrary.simpleMessage("イタリア語"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("日本語"),
    "langKorean": MessageLookupByLibrary.simpleMessage("韓国語"),
    "langRussian": MessageLookupByLibrary.simpleMessage("ロシア語"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("スペイン語"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("トルコ語"),
    "language": MessageLookupByLibrary.simpleMessage("言語"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage("お好みの言語を選択してください"),
    "login": MessageLookupByLibrary.simpleMessage("ログイン"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "ログインして、すべてのデバイス間でメモを安全に同期・バックアップ",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "ログインしてすべてのデバイス間でメモを同期",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("ログアウト"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage("本当にログアウトしますか？"),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage("既存のデータとマージ"),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("もっと見る"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "インターネット接続を確認してもう一度お試しください。",
    ),
    "next": MessageLookupByLibrary.simpleMessage("次へ"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "メモをより適切に整理するためにカテゴリを追加してください。",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage("まだカテゴリがありません"),
    "noContent": MessageLookupByLibrary.simpleMessage("コンテンツなし"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("お気に入りなし"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "まだお気に入りにメモを追加していません。",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage("ファイルが選択されていません。"),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("まだメモがありません"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "+ボタンをタップして最初のメモを作成してください。",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "出力ディレクトリが選択されていません",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "パスワードが提供されていません。",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("結果が見つかりません"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("利用できません"),
    "notSynced": MessageLookupByLibrary.simpleMessage("同期されていません"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("メモを追加しました"),
    "noteContent": MessageLookupByLibrary.simpleMessage("メモの内容"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("メモのタイトル"),
    "notes": MessageLookupByLibrary.simpleMessage("メモ"),
    "numberedList": MessageLookupByLibrary.simpleMessage("番号付きリスト"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "オフラインで思考をキャプチャして整理し、すべてのデバイス間でシームレスに同期",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "画像、音声メモを追加し、PDF、Word、テキストにエクスポートして最大限の柔軟性を",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "すべてのメモはエンドツーエンド暗号化で保護—あなただけが読めます",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage("あなたのメモ、いつでもどこでも"),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage("テキスト以上のもの"),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage("プライバシーが大切"),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("または以下でログイン"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage("確認コードを送信しました："),
    "password": MessageLookupByLibrary.simpleMessage("パスワード"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "パスワードが正常に変更されました",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "パスワード確認が必要です！",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "パスワードは6文字以上必要です",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "パスワードにスペースは使用できません",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage("パスワードが必要です！"),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage("パスワードが一致しません"),
    "pathException": MessageLookupByLibrary.simpleMessage("パスエラーが発生しました。"),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDFファイル (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("言語を選択"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("お待ちください..."),
    "previous": MessageLookupByLibrary.simpleMessage("戻る"),
    "print": MessageLookupByLibrary.simpleMessage("印刷"),
    "remove": MessageLookupByLibrary.simpleMessage("削除"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage("お気に入りから削除"),
    "removeImage": MessageLookupByLibrary.simpleMessage("画像を削除"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "このメモからこの画像を削除してもよろしいですか？",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage("既存のデータを置き換える"),
    "resendCode": MessageLookupByLibrary.simpleMessage("コードを再送信"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "パスワードをリセットするためのOTPコードを受け取るには、以下にメールアドレスを入力してください",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "メモのタイトルまたは内容...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("カテゴリを選択"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("OTPを送信"),
    "settings": MessageLookupByLibrary.simpleMessage("設定"),
    "share": MessageLookupByLibrary.simpleMessage("共有"),
    "shareError": MessageLookupByLibrary.simpleMessage("メモの共有中にエラーが発生しました"),
    "shareFailed": MessageLookupByLibrary.simpleMessage("共有に失敗しました"),
    "signUp": MessageLookupByLibrary.simpleMessage("新規登録"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "登録して、どこでもメモを安全に同期・バックアップ",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("スキップ"),
    "sortBy": MessageLookupByLibrary.simpleMessage("並べ替え"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("取り消し線"),
    "style": MessageLookupByLibrary.simpleMessage("スタイル"),
    "subscript": MessageLookupByLibrary.simpleMessage("下付き文字"),
    "success": MessageLookupByLibrary.simpleMessage("成功"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "値の1つがデータベースルールを満たしていません（チェック制約）。",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "アクセスしようとしている列が存在しません。",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "このレコードはすでに存在します。別の値を使用してください。",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "データベースエラーが発生しました。もう一度お試しください。",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "この値はすでに存在します。別の値を使用してください（重複キー）。",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "このレコードは別のレコードにリンクされており、削除/更新できません（外部キー違反）。",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "この関数はデータベースに存在しません。",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "入力の1つが長すぎます。短くしてもう一度お試しください。",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "データベース内部エラーが発生しました。後でもう一度お試しください。",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "日付または時刻の形式が無効です。正しい形式を使用してください。",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "入力タイプが無効です。データを確認してください。",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "無効なリクエスト。入力された情報を確認してください。",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "このリソースにアクセスできません。",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "この操作を実行する権限がありません。",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "認証されていません。最初にログインしてください。",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "リクエストされたリソースが見つかりませんでした。",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "リクエストに時間がかかりすぎてキャンセルされました。もう一度お試しください。",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "必須フィールドがありません。すべての必須詳細を入力してください。",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "行レベルセキュリティによりこのリクエストがブロックされました。",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "データベースクエリに問題があります（構文エラー）。",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "アクセスしようとしているテーブルが存在しません。",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "データベースへの接続が多すぎます。後でもう一度お試しください。",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "予期しないデータベースエラー。後でもう一度お試しください。",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("上付き文字"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("メモを同期"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage("常にメモをクラウドと同期"),
    "synced": MessageLookupByLibrary.simpleMessage("同期済み"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("テキストファイル (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("テーマ"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "接続がタイムアウトしました。もう一度お試しください！",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("未分類"),
    "underline": MessageLookupByLibrary.simpleMessage("下線"),
    "unknownError": MessageLookupByLibrary.simpleMessage("不明なエラーが発生しました。"),
    "untitled": MessageLookupByLibrary.simpleMessage("無題"),
    "username": MessageLookupByLibrary.simpleMessage("ユーザー名"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "ユーザー名は文字で始まり、文字と数字のみを含む必要があります",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage("ユーザー名を入力してください"),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage("メールアドレスを確認"),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "パスワードが間違っているか、データが破損しています。",
    ),
  };
}
