// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(seconds) => "Доступно через ${seconds}с";

  static String m1(error) =>
      "Биометрическая аутентификация не удалась: ${error}";

  static String m2(error) =>
      "Внутренняя ошибка: Невозможно создать папку изображений: ${error}";

  static String m3(dbName) =>
      "У вас уже есть ${dbName} на этом устройстве. Как вы хотите обработать данные из импортированного файла?";

  static String m4(dbName) => "Обнаружен конфликт ${dbName}";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 день назад', few: '${count} дня назад', many: '${count} дней назад', other: '${count} дней назад')}";

  static String m6(result) => "База данных закрыта: ${result}";

  static String m7(result) =>
      "В базе данных есть дублирующийся столбец: ${result}";

  static String m8(result) => "Исключение базы данных: ${result}";

  static String m9(result) => "Таблица базы данных не существует: ${result}";

  static String m10(result) => "Не удалось открыть базу данных: ${result}";

  static String m11(result) => "Синтаксическая ошибка SQL: ${result}";

  static String m12(result) => "Ошибка уникального ограничения: ${result}";

  static String m13(message) => "Ошибка папки: ${message}";

  static String m14(message) => "Ошибка файловой системы: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1 час назад', few: '${count} часа назад', many: '${count} часов назад', other: '${count} часов назад')}";

  static String m16(message) => "Внутренняя ошибка: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1 минуту назад', few: '${count} минуты назад', many: '${count} минут назад', other: '${count} минут назад')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1 месяц назад', few: '${count} месяца назад', many: '${count} месяцев назад', other: '${count} месяцев назад')}";

  static String m19(message) => "Ошибка платформы: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1 секунду назад', few: '${count} секунды назад', many: '${count} секунд назад', other: '${count} секунд назад')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("О Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Аккаунт успешно создан",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Добавить"),
    "addCategory": MessageLookupByLibrary.simpleMessage("Добавить категорию"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage(
      "Добавить новую категорию",
    ),
    "addToFavorites": MessageLookupByLibrary.simpleMessage(
      "Добавить в избранное",
    ),
    "all": MessageLookupByLibrary.simpleMessage("Все"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. Все права защищены.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Используйте отпечаток пальца, лицо, графический ключ или PIN для защиты приложения.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("По возрастанию"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "Ваша сессия недействительна. Войдите снова.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Не удалось подключиться к Google. Попробуйте снова.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Что-то пошло не так при входе через Google. Попробуйте снова.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "Проверка не пройдена. Пройдите проверку безопасности снова.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка. Попробуйте снова.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "Этот email уже зарегистрирован. Попробуйте войти.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Это не похоже на действительный email-адрес.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Этот email не авторизован для регистрации. Используйте другой.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Подтвердите email перед входом. Проверьте входящие.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Аутентификация не удалась. Попробуйте снова.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Этот аккаунт Google уже связан с другим пользователем.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Неверный email или пароль. Попробуйте снова.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "Этот аккаунт нельзя связать вручную. Войдите основным способом.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "Этот метод входа не поддерживается.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Слишком много попыток. Проверьте почту или попробуйте позже.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Слишком много попыток входа. Подождите немного.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Слишком много SMS-попыток. Подождите несколько минут и попробуйте снова.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "Этот номер телефона уже зарегистрирован.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "Этот метод регистрации недоступен. Выберите другой.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Подтвердите email Google перед входом.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Войдите снова для продолжения.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "Ваша сессия истекла. Войдите снова.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "Ваша сессия истекла. Войдите снова.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "Сессия не найдена. Войдите снова.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Регистрация временно отключена. Обратитесь в поддержку.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Авторизуйтесь для изменения настроек блокировки",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка при создании аккаунта. Попробуйте снова.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Аккаунт с этим email или телефоном уже существует. Пожалуйста, войдите.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Ваш аккаунт заблокирован. Обратитесь в поддержку.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "Мы не смогли найти аккаунт с этими данными.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Некоторые введённые данные недействительны. Проверьте и попробуйте снова.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "Ваш пароль слишком слабый. Используйте более надёжный с буквами, цифрами и символами.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Фон"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Ошибка биометрической аутентификации",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, авторизуйтесь, чтобы открыть приложение",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Слишком много неудачных попыток. Биометрия временно заблокирована. Попробуйте позже.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "Биометрическая аутентификация недоступна на этом устройстве",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "Биометрическая аутентификация недоступна на этом устройстве.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "Биометрия не настроена. Зарегистрируйте отпечаток или Face ID в настройках устройства.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "Биометрическая аутентификация не поддерживается на этой операционной системе.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "Код устройства не установлен. Настройте PIN, графический ключ или пароль в настройках устройства.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Слишком много неудачных попыток. Биометрия отключена. Разблокируйте PIN/паролем для сброса.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "Биометрическая аутентификация не удалась из-за неизвестной ошибки.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Жирный"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Маркированный список"),
    "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("Отменить импорт"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Категории"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Здесь вы можете управлять категориями.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Категории"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage(
      "Категория удалена",
    ),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Название категории не может быть пустым",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage(
      "Название категории",
    ),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "Категория обновлена",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Изменить название категории",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("Изменить пароль"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Измените пароль аккаунта, чтобы включить",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nПожалуйста, проверьте входящие и папку спам.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Контрольный список"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Выберите предпочитаемый язык",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Блок кода"),
    "color": MessageLookupByLibrary.simpleMessage("Цвет"),
    "confirm": MessageLookupByLibrary.simpleMessage("Подтвердить"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "Подтверждение пароля",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Подтвердите пароль",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "Минимум 6 символов",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "Минимум 2 цифры",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "Минимум 1 специальный символ",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "Минимум 1 заглавная буква",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Создать аккаунт"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Создайте новую категорию для организации заметок.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("Создать пароль"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Для повышения безопасности заметок, пожалуйста, создайте пароль.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Примечание: Вы должны запомнить этот пароль, так как его нельзя восстановить при утере.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Тёмный режим"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("Удалить категорию"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "Вы уверены, что хотите удалить эту категорию? Это действие нельзя отменить.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Удалить заметку"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Вы уверены, что хотите удалить эту заметку?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("По убыванию"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Не получили код?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage(
      "Отключить блокировку приложения",
    ),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Отключить тёмный режим",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("Нет аккаунта?"),
    "edit": MessageLookupByLibrary.simpleMessage("Редактировать"),
    "editCategory": MessageLookupByLibrary.simpleMessage(
      "Редактировать категорию",
    ),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("Email обязателен!"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage(
      "Включить блокировку приложения",
    ),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Включить тёмный режим",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, введите OTP-код",
    ),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Введите пароль"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, введите пароль для доступа к этому файлу.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage("Введите ваш email"),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Введите ваш пароль",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Введите имя пользователя",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Ошибка"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Экспорт заметок"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Успешно экспортировано!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Экспортировать как"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Не удалось сбросить пароль. Пожалуйста, попробуйте снова.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "Не удалось отправить OTP. Пожалуйста, попробуйте позже!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "Режим избранного ВКЛЮЧЁН",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка файла.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Фильтр категорий",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Выберите параметр фильтрации категорий.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Категория"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("Дата создания"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage(
      "Дата создания",
    ),
    "filterName": MessageLookupByLibrary.simpleMessage("Название"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Название"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, следуйте требованиям к паролю",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Цвет шрифта"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Размер шрифта"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Забыли пароль?"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Забыли пароль?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка сервера. Попробуйте снова.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "Конечная точка сервера не существует.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "На сервер отправлены неверные данные.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "У вас нет прав для выполнения этого действия.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "Вы не вошли в систему. Авторизуйтесь.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка сервера. Попробуйте позже.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "Время запроса истекло. Попробуйте снова.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Слишком много запросов. Притормозите.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Начать"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "Вход отменён. Попробуйте снова, если хотите продолжить.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "Проблема с настройкой входа через Google. Обратитесь в поддержку.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "Процесс входа прерван. Попробуйте снова.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Вход через Google неправильно настроен. Попробуйте позже.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "Вход через Google недоступен на этом устройстве.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка при входе. Попробуйте снова.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "Этот аккаунт Google не соответствует ожидаемому пользователю. Попробуйте другой.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Гостевой пользователь"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Изображение"),
    "images": MessageLookupByLibrary.simpleMessage("Изображения"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Импорт заметок"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Успешно импортировано!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("Неверный email"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("Неверный файл"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Неверный OTP-код"),
    "italic": MessageLookupByLibrary.simpleMessage("Курсив"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Арабский"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Китайский"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("Английский"),
    "langFrench": MessageLookupByLibrary.simpleMessage("Французский"),
    "langGerman": MessageLookupByLibrary.simpleMessage("Немецкий"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Хинди"),
    "langItalian": MessageLookupByLibrary.simpleMessage("Итальянский"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Японский"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Корейский"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Русский"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("Испанский"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Турецкий"),
    "language": MessageLookupByLibrary.simpleMessage("Язык"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Выберите предпочитаемый язык",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Войти"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Войдите, чтобы безопасно синхронизировать и создавать резервные копии заметок на всех устройствах",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Войдите для синхронизации заметок на всех устройствах",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "Вы уверены, что хотите выйти?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Объединить с существующими данными",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("Ещё"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Проверьте интернет-соединение и попробуйте снова.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Далее"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Добавьте категории для лучшей организации заметок.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "Пока нет категорий",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("Нет содержимого"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("Нет избранного"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "Вы ещё не добавили заметки в избранное.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage("Файл не выбран."),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("Пока нет заметок"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "Нажмите кнопку +, чтобы создать первую заметку.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "Папка вывода не выбрана",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "Пароль не указан.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "Результаты не найдены",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Недоступно"),
    "notSynced": MessageLookupByLibrary.simpleMessage("Не синхронизировано"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Заметка добавлена"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Содержимое заметки"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Название заметки"),
    "notes": MessageLookupByLibrary.simpleMessage("Заметки"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Нумерованный список"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Записывайте и организуйте мысли офлайн, синхронизируйте на всех устройствах легко",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Добавляйте изображения, голосовые заметки и экспортируйте в PDF, Word или текст для максимальной гибкости",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "Все заметки защищены сквозным шифрованием — только вы можете их читать",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Ваши заметки всегда с вами",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "Больше, чем просто текст",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "Ваша конфиденциальность важна",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("Или войти через"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "Мы отправили код подтверждения на ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Пароль успешно изменён",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "Подтверждение пароля обязательно!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать минимум 6 символов",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "Пароль не должен содержать пробелы",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Пароль обязателен!",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Пароли не совпадают",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка пути.",
    ),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF-файл (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Выбрать язык"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, подождите...",
    ),
    "previous": MessageLookupByLibrary.simpleMessage("Назад"),
    "print": MessageLookupByLibrary.simpleMessage("Печать"),
    "remove": MessageLookupByLibrary.simpleMessage("Удалить"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Удалить из избранного",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Удалить изображение"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "Вы уверены, что хотите удалить это изображение из заметки?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Заменить существующие данные",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage(
      "Отправить код повторно",
    ),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Введите ваш email ниже, чтобы получить OTP-код для сброса пароля",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Название или содержимое заметки...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("Выбрать категорию"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("Отправить OTP"),
    "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "share": MessageLookupByLibrary.simpleMessage("Поделиться"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Ошибка при публикации заметки",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage(
      "Не удалось поделиться",
    ),
    "signUp": MessageLookupByLibrary.simpleMessage("Регистрация"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Зарегистрируйтесь, чтобы безопасно синхронизировать и создавать резервные копии заметок где угодно",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Сортировать по"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Зачёркнутый"),
    "style": MessageLookupByLibrary.simpleMessage("Стиль"),
    "subscript": MessageLookupByLibrary.simpleMessage("Подстрочный"),
    "success": MessageLookupByLibrary.simpleMessage("Успех"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "Одно из значений не соответствует правилам базы данных (ограничение проверки).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "Столбец, к которому вы обращаетесь, не существует.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "Эта запись уже существует. Используйте другие значения.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Произошла ошибка базы данных. Попробуйте снова.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "Это значение уже существует. Используйте другое (дублирующийся ключ).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "Эта запись связана с другой и не может быть удалена/обновлена (нарушение внешнего ключа).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "Эта функция не существует в базе данных.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "Один из вводов слишком длинный. Сократите и попробуйте снова.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "Произошла внутренняя ошибка базы данных. Попробуйте позже.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Неверный формат даты или времени. Используйте правильный формат.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Неверный тип ввода. Проверьте данные.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Неверный запрос. Проверьте введённую информацию.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "У вас нет доступа к этому ресурсу.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "У вас нет прав для выполнения этого действия.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Вы не авторизованы. Сначала войдите.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "Запрошенный ресурс не найден.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "Запрос занял слишком много времени и был отменён. Попробуйте снова.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "Отсутствует обязательное поле. Заполните все необходимые данные.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "Безопасность на уровне строк заблокировала этот запрос.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "Проблема с запросом к базе данных (синтаксическая ошибка).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "Таблица, к которой вы обращаетесь, не существует.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "Слишком много подключений к базе данных. Попробуйте позже.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Неожиданная ошибка базы данных. Попробуйте позже.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Надстрочный"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("Синхронизация заметок"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Всегда синхронизировать заметки с облаком",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Синхронизировано"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage(
      "Текстовый файл (.txt)",
    ),
    "theme": MessageLookupByLibrary.simpleMessage("Тема"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "Время соединения истекло. Попробуйте снова!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("Без категории"),
    "underline": MessageLookupByLibrary.simpleMessage("Подчёркнутый"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Произошла неизвестная ошибка.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Без названия"),
    "username": MessageLookupByLibrary.simpleMessage("Имя пользователя"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "Имя пользователя должно начинаться с буквы и содержать только буквы и цифры",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, введите имя пользователя",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "Подтвердите email",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Неверный пароль или повреждённые данные.",
    ),
  };
}
