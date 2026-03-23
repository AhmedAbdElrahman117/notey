// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(seconds) => "يمكنك إعادة الإرسال بعد ${seconds} ثانية";

  static String m1(error) => "فشلت المصادقة البيومترية. ${error}";

  static String m2(error) => "خطأ داخلي: تعذر إنشاء مجلد الصور (${error})";

  static String m3(dbName) =>
      "يوجد بالفعل ${dbName} على هذا الجهاز. كيف تود التعامل مع البيانات المستوردة؟";

  static String m4(dbName) => "تم اكتشاف تعارض في ${dbName}";

  static String m5(count) =>
      "${Intl.plural(count, one: 'منذ يوم واحد', other: 'منذ ${count} يوم')}";

  static String m6(result) => "قاعدة البيانات مغلقة: ${result}";

  static String m7(result) => "قاعدة البيانات تحتوي على عمود مكرر: ${result}";

  static String m8(result) => "خطأ في قاعدة البيانات: ${result}";

  static String m9(result) => "جدول قاعدة البيانات غير موجود: ${result}";

  static String m10(result) => "فشل فتح قاعدة البيانات: ${result}";

  static String m11(result) => "خطأ في بناء جملة SQL: ${result}";

  static String m12(result) => "خطأ في القيد الفريد: ${result}";

  static String m13(message) => "خطأ في المجلد: ${message}";

  static String m14(message) => "خطأ في نظام الملفات: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: 'منذ ساعة واحدة', other: 'منذ ${count} ساعة')}";

  static String m16(message) => "خطأ داخلي: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: 'منذ دقيقة واحدة', other: 'منذ ${count} دقيقة')}";

  static String m18(count) =>
      "${Intl.plural(count, one: 'منذ شهر واحد', other: 'منذ ${count} شهر')}";

  static String m19(message) => "خطأ في النظام: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: 'منذ ثانية واحدة', other: 'منذ ${count} ثانية')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("حول مذكرتي"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "تم إنشاء الحساب بنجاح",
    ),
    "add": MessageLookupByLibrary.simpleMessage("إضافة"),
    "addCategory": MessageLookupByLibrary.simpleMessage("إضافة تصنيف"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage("إضافة تصنيف جديد"),
    "addToFavorites": MessageLookupByLibrary.simpleMessage("إضافة إلى المفضلة"),
    "all": MessageLookupByLibrary.simpleMessage("الكل"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 نوتي. جميع الحقوق محفوظة.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "استخدم البصمة أو التعرف على الوجه أو النمط أو رمز PIN لتأمين التطبيق",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("مذكرتي"),
    "appVersion": MessageLookupByLibrary.simpleMessage("الإصدار 1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("تصاعدي"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "جلسة تسجيل الدخول غير صالحة. يرجى تسجيل الدخول مرة أخرى.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "لم نتمكن من الاتصال بـ Google. يرجى المحاولة مرة أخرى.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في تسجيل الدخول بـ Google. يرجى المحاولة مرة أخرى.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "فشل التحقق. يرجى إكمال فحص الأمان مرة أخرى.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ ما. يرجى المحاولة مرة أخرى.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "هذا البريد الإلكتروني مسجل بالفعل. جرّب تسجيل الدخول بدلاً من ذلك.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "هذا لا يبدو كعنوان بريد إلكتروني صالح.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "هذا البريد الإلكتروني غير مسموح به للتسجيل. يرجى استخدام بريد آخر.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "يرجى تأكيد بريدك الإلكتروني قبل تسجيل الدخول. تحقق من بريدك الوارد.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "فشلت المصادقة. حاول مرة أخرى.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "حساب Google هذا مرتبط بالفعل بمستخدم آخر.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني أو كلمة المرور غير صحيحة. يرجى المحاولة مرة أخرى.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "لا يمكن ربط هذا الحساب يدوياً. يرجى تسجيل الدخول بالطريقة الرئيسية.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "طريقة تسجيل الدخول هذه غير مدعومة.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "محاولات كثيرة جداً. يرجى التحقق من بريدك الوارد أو المحاولة لاحقاً.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "محاولات تسجيل دخول كثيرة جداً. يرجى الانتظار قليلاً قبل المحاولة مرة أخرى.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "محاولات رسائل SMS كثيرة جداً. يرجى الانتظار بضع دقائق والمحاولة مرة أخرى.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "رقم الهاتف هذا مسجل بالفعل.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "طريقة التسجيل هذه غير متاحة. يرجى اختيار طريقة أخرى.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من بريد Google الإلكتروني قبل تسجيل الدخول.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "يرجى تسجيل الدخول مرة أخرى للمتابعة.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية جلستك. يرجى تسجيل الدخول مرة أخرى.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية جلستك. يرجى تسجيل الدخول مرة أخرى.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "لم نتمكن من العثور على جلسة تسجيل الدخول. يرجى تسجيل الدخول مرة أخرى.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "التسجيل معطل حالياً. يرجى الاتصال بالدعم.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "يرجى المصادقة لتغيير إعدادات قفل التطبيق",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ أثناء إنشاء حسابك. يرجى المحاولة مرة أخرى.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "يوجد حساب بهذا البريد الإلكتروني أو الهاتف بالفعل. يرجى تسجيل الدخول.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "تم حظر حسابك. يرجى الاتصال بالدعم للمساعدة.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "لم نتمكن من العثور على حساب بهذه البيانات.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "بعض البيانات التي أدخلتها غير صالحة. يرجى التحقق والمحاولة مرة أخرى.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور ضعيفة جداً. استخدم كلمة مرور أقوى تحتوي على أحرف وأرقام ورموز.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("الخلفية"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ أثناء المصادقة البيومترية",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "يرجى المصادقة لفتح التطبيق",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "محاولات فاشلة كثيرة جداً. المصادقة البيومترية مقفلة مؤقتاً. يرجى المحاولة لاحقاً.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "المصادقة البيومترية غير متوفرة على هذا الجهاز",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "المصادقة البيومترية غير متاحة على هذا الجهاز.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "لم يتم إعداد المصادقة البيومترية. يرجى تسجيل بصمة إصبع أو معرف الوجه في إعدادات جهازك.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "المصادقة البيومترية غير مدعومة على نظام التشغيل هذا.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "لم يتم تعيين رمز المرور للجهاز. يرجى تهيئة رمز PIN أو النمط أو كلمة المرور في إعدادات جهازك.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "محاولات فاشلة كثيرة جداً. المصادقة البيومترية معطلة. يرجى فتح القفل باستخدام رمز PIN/كلمة المرور لإعادة تعيينها.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "فشلت المصادقة البيومترية بسبب خطأ غير معروف.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("عريض"),
    "bulletList": MessageLookupByLibrary.simpleMessage("قائمة نقطية"),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("إلغاء الاستيراد"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("التصنيفات"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "يمكنك إدارة تصنيفاتك من هنا",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("التصنيفات"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("تم حذف التصنيف"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "اسم التصنيف لا يمكن أن يكون فارغاً",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("اسم التصنيف"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage("تم تحديث التصنيف"),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "تغيير اسم التصنيف",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("تغيير كلمة المرور"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور الجديدة على التالي",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nيرجى التحقق من صندوق الوارد والرسائل غير المرغوب فيها.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("قائمة مهام"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "حدد لغتك المفضلة",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("كتلة كود"),
    "color": MessageLookupByLibrary.simpleMessage("اللون"),
    "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "6 أحرف على الأقل",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "رقمان على الأقل",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "رمز خاص واحد على الأقل",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "حرف كبير واحد على الأقل",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "أنشئ تصنيفاً جديداً لتنظيم ملاحظاتك",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("إنشاء كلمة مرور"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "لزيادة أمان ملاحظاتك، يرجى إنشاء كلمة مرور",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "ملاحظة: لا يمكن استعادة كلمة المرور في حال نسيانها.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("الوضع الداكن"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("حذف التصنيف"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف هذا التصنيف؟ لا يمكن التراجع عن هذا الإجراء.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("حذف الملاحظة"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من حذف هذه الملاحظة؟",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("تنازلي"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage("لم يصلك الرمز؟"),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage("تعطيل قفل التطبيق"),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "تعطيل الوضع الداكن",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟"),
    "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "editCategory": MessageLookupByLibrary.simpleMessage("تعديل التصنيف"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "emailRequired": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني مطلوب",
    ),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("تفعيل قفل التطبيق"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "تفعيل الوضع الداكن",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage("أدخل رمز التحقق"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("أدخل كلمة المرور"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال كلمة المرور للوصول إلى هذا الملف",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "أدخل بريدك الإلكتروني",
    ),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "أدخل كلمة المرور",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "أدخل اسم المستخدم",
    ),
    "error": MessageLookupByLibrary.simpleMessage("حدث خطأ"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("تصدير الملاحظات"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "تم التصدير بنجاح",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("تصدير بصيغة"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "تعذرت إعادة تعيين كلمة المرور. حاول مرة أخرى.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "فشل إرسال رمز التحقق، يرجى المحاولة لاحقاً",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "تم تفعيل وضع المفضلة",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage("حدث خطأ في الملف."),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage("تصفية التصنيفات"),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "اختر طريقة ترتيب التصنيفات",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("حسب التصنيف"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage(
      "حسب تاريخ الإنشاء",
    ),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage(
      "حسب تاريخ الإنشاء",
    ),
    "filterName": MessageLookupByLibrary.simpleMessage("حسب الاسم"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("حسب العنوان"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "يرجى الالتزام بمتطلبات كلمة المرور",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("لون الخط"),
    "fontSize": MessageLookupByLibrary.simpleMessage("حجم الخط"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور؟"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "نسيت كلمة المرور؟",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في الخادم. يرجى المحاولة مرة أخرى.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "نقطة نهاية الخادم غير موجودة.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "تم إرسال بيانات غير صالحة إلى الخادم.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "ليس لديك صلاحية لتنفيذ هذا الإجراء.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "لم تقم بتسجيل الدخول. يرجى المصادقة.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في الخادم. حاول مرة أخرى لاحقاً.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة الطلب. يرجى المحاولة مرة أخرى.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "طلبات كثيرة جداً. يرجى التباطؤ.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("ابدأ الآن"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "تم إلغاء تسجيل الدخول. يرجى المحاولة مرة أخرى إذا كنت لا تزال ترغب في المتابعة.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "هناك مشكلة في إعداد تسجيل الدخول بـ Google في التطبيق. يرجى الاتصال بالدعم.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "تم مقاطعة عملية تسجيل الدخول. يرجى المحاولة مرة أخرى.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول بـ Google غير مُهيأ بشكل صحيح. يرجى المحاولة لاحقاً.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول بـ Google غير متاح حالياً على هذا الجهاز.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ أثناء تسجيل الدخول. يرجى المحاولة مرة أخرى.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "حساب Google هذا لا يتطابق مع المستخدم المتوقع. جرّب استخدام حساب مختلف.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("مستخدم زائر"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("صورة"),
    "images": MessageLookupByLibrary.simpleMessage("الصور"),
    "importNotes": MessageLookupByLibrary.simpleMessage("استيراد الملاحظات"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "تم الاستيراد بنجاح",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage(
      "بريد إلكتروني غير صالح",
    ),
    "invalidFile": MessageLookupByLibrary.simpleMessage("ملف غير صالح"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("رمز التحقق غير صالح"),
    "italic": MessageLookupByLibrary.simpleMessage("مائل"),
    "langArabic": MessageLookupByLibrary.simpleMessage("العربية"),
    "langChinese": MessageLookupByLibrary.simpleMessage("الصينية"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("الإنجليزية"),
    "langFrench": MessageLookupByLibrary.simpleMessage("الفرنسية"),
    "langGerman": MessageLookupByLibrary.simpleMessage("الألمانية"),
    "langIndian": MessageLookupByLibrary.simpleMessage("الهندية"),
    "langItalian": MessageLookupByLibrary.simpleMessage("الإيطالية"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("اليابانية"),
    "langKorean": MessageLookupByLibrary.simpleMessage("الكورية"),
    "langRussian": MessageLookupByLibrary.simpleMessage("الروسية"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("الإسبانية"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("التركية"),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "اختر لغتك المفضلة",
    ),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "سجّل دخولك لمزامنة ملاحظاتك والاحتفاظ بنسخة احتياطية آمنة عبر جميع أجهزتك",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "سجّل الدخول لمزامنة ملاحظاتك عبر جميع أجهزتك",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من تسجيل الخروج؟",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "دمج مع البيانات الحالية",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("المزيد من الخيارات"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "أضف تصنيفات لتنظيم ملاحظاتك بشكل أفضل",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "لا توجد تصنيفات بعد",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("لا يوجد محتوى"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage(
      "لا توجد ملاحظات مفضلة",
    ),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "لم تقم بإضافة أي ملاحظات إلى المفضلة بعد.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage(
      "لم يتم اختيار أي ملف",
    ),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("لا توجد ملاحظات بعد"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "اضغط على زر + لإنشاء أول ملاحظة.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "لم يتم اختيار مجلد الإخراج",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "لم يتم إدخال كلمة المرور",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("لا توجد نتائج"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("غير متاح"),
    "notSynced": MessageLookupByLibrary.simpleMessage("غير متزامنة"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("تمت إضافة الملاحظة"),
    "noteContent": MessageLookupByLibrary.simpleMessage("محتوى الملاحظة"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("عنوان الملاحظة"),
    "notes": MessageLookupByLibrary.simpleMessage("الملاحظات"),
    "numberedList": MessageLookupByLibrary.simpleMessage("قائمة مرقمة"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "دوّن أفكارك دون اتصال بالإنترنت وزامنها عبر أجهزتك",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "أضف صوراً وملاحظات صوتية وصدّر ملاحظاتك بصيغ متعددة مثل PDF وWord",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "ملاحظاتك محمية بتشفير كامل من طرف إلى طرف — لا يمكن لأحد سواك الوصول إليها",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "ملاحظاتك دائماً معك",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage("أكثر من مجرد نص"),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage("خصوصيتك أولاً"),
    "orLoginWith": MessageLookupByLibrary.simpleMessage(
      "أو سجّل الدخول باستخدام",
    ),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "لقد أرسلنا رمز التحقق إلى ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "تم تغيير كلمة المرور بنجاح",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور مطلوب",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "لا يمكن أن تحتوي كلمة المرور على مسافات",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور مطلوبة",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "كلمتا المرور غير متطابقتين",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage("حدث خطأ في المسار."),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("ملف PDF (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("اختر اللغة"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("يرجى الانتظار..."),
    "previous": MessageLookupByLibrary.simpleMessage("السابق"),
    "print": MessageLookupByLibrary.simpleMessage("طباعة"),
    "remove": MessageLookupByLibrary.simpleMessage("إزالة"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "إزالة من المفضلة",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("إزالة الصورة"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "هل تريد إزالة هذه الصورة من الملاحظة؟",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "استبدال البيانات الحالية",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("إعادة إرسال الرمز"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "أدخل بريدك الإلكتروني لتلقي رمز التحقق وإعادة تعيين كلمة المرور",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "ابحث في العنوان أو المحتوى...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("اختر التصنيف"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("إرسال رمز التحقق"),
    "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "share": MessageLookupByLibrary.simpleMessage("مشاركة"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ أثناء مشاركة الملاحظة",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("فشلت المشاركة"),
    "signUp": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "أنشئ حساباً لمزامنة ملاحظاتك والاحتفاظ بها بأمان في كل مكان",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("تخطي الآن"),
    "sortBy": MessageLookupByLibrary.simpleMessage("ترتيب حسب"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("يتوسطه خط"),
    "style": MessageLookupByLibrary.simpleMessage("النمط"),
    "subscript": MessageLookupByLibrary.simpleMessage("نص سفلي"),
    "success": MessageLookupByLibrary.simpleMessage("تم بنجاح"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "إحدى القيم لا تستوفي قواعد قاعدة البيانات (قيد التحقق).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "العمود الذي تحاول الوصول إليه غير موجود.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "هذا السجل موجود بالفعل. يرجى استخدام قيم مختلفة.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في قاعدة البيانات. يرجى المحاولة مرة أخرى.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "هذه القيمة موجودة بالفعل. يرجى استخدام قيمة مختلفة (مفتاح مكرر).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "هذا السجل مرتبط بسجل آخر ولا يمكن حذفه/تحديثه (انتهاك المفتاح الخارجي).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "هذه الدالة غير موجودة في قاعدة البيانات.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "أحد المدخلات طويل جداً. يرجى تقصيره والمحاولة مرة أخرى.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ داخلي في قاعدة البيانات. يرجى المحاولة لاحقاً.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "تنسيق التاريخ أو الوقت غير صالح. يرجى استخدام التنسيق الصحيح.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "نوع الإدخال غير صالح. يرجى التحقق من بياناتك.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "طلب غير صالح. يرجى التحقق من المعلومات التي أدخلتها.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "ليس لديك حق الوصول إلى هذا المورد.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "ليس لديك صلاحية لتنفيذ هذا الإجراء.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "غير مصرح لك. يرجى تسجيل الدخول أولاً.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "المورد المطلوب غير موجود.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "استغرق الطلب وقتاً طويلاً وتم إلغاؤه. يرجى المحاولة مرة أخرى.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "حقل مطلوب مفقود. يرجى ملء جميع التفاصيل المطلوبة.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "تم حظر هذا الطلب بواسطة أمان مستوى الصف.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "هناك مشكلة في استعلام قاعدة البيانات (خطأ في بناء الجملة).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "الجدول الذي تحاول الوصول إليه غير موجود.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "قاعدة البيانات لديها اتصالات كثيرة جداً. يرجى المحاولة لاحقاً.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "خطأ غير متوقع في قاعدة البيانات. يرجى المحاولة لاحقاً.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("نص علوي"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("مزامنة الملاحظات"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "مزامنة الملاحظات تلقائياً مع السحابة",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("متزامنة"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("ملف نصي (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("المظهر"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "انتهت مهلة الاتصال. يرجى المحاولة مرة أخرى!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("غير مصنّف"),
    "underline": MessageLookupByLibrary.simpleMessage("تسطير"),
    "unknownError": MessageLookupByLibrary.simpleMessage("حدث خطأ غير معروف."),
    "untitled": MessageLookupByLibrary.simpleMessage("ملاحظة بدون عنوان"),
    "username": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "يجب أن يبدأ اسم المستخدم بحرف ويحتوي على أحرف وأرقام فقط",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "اسم المستخدم مطلوب",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "تحقق من بريدك الإلكتروني",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور غير صحيحة أو الملف تالف",
    ),
  };
}
