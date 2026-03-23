// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
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
  String get localeName => 'hi';

  static String m0(seconds) => "${seconds}s में उपलब्ध";

  static String m1(error) => "बायोमेट्रिक प्रमाणीकरण विफल: ${error}";

  static String m2(error) =>
      "आंतरिक त्रुटि: चित्र निर्देशिका नहीं बना सकते: ${error}";

  static String m3(dbName) =>
      "आपके पास पहले से ही इस डिवाइस पर ${dbName} सहेजा हुआ है। आप आयातित फ़ाइल से डेटा को कैसे संभालना चाहते हैं?";

  static String m4(dbName) => "${dbName} विरोध का पता चला";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 दिन पहले', other: '${count} दिन पहले')}";

  static String m6(result) => "डेटाबेस बंद है: ${result}";

  static String m7(result) => "डेटाबेस में डुप्लिकेट कॉलम है: ${result}";

  static String m8(result) => "डेटाबेस अपवाद: ${result}";

  static String m9(result) => "डेटाबेस टेबल मौजूद नहीं है: ${result}";

  static String m10(result) => "डेटाबेस खोलने में विफल: ${result}";

  static String m11(result) => "SQL क्वेरी में सिंटैक्स त्रुटि: ${result}";

  static String m12(result) => "अद्वितीय बाधा त्रुटि: ${result}";

  static String m13(message) => "निर्देशिका त्रुटि: ${message}";

  static String m14(message) => "फ़ाइल सिस्टम त्रुटि: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1 घंटे पहले', other: '${count} घंटे पहले')}";

  static String m16(message) => "आंतरिक त्रुटि: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1 मिनट पहले', other: '${count} मिनट पहले')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1 महीने पहले', other: '${count} महीने पहले')}";

  static String m19(message) => "प्लेटफ़ॉर्म त्रुटि: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1 सेकंड पहले', other: '${count} सेकंड पहले')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("नोटी के बारे में"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "खाता सफलतापूर्वक बनाया गया",
    ),
    "add": MessageLookupByLibrary.simpleMessage("जोड़ें"),
    "addCategory": MessageLookupByLibrary.simpleMessage("श्रेणी जोड़ें"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage("नई श्रेणी जोड़ें"),
    "addToFavorites": MessageLookupByLibrary.simpleMessage(
      "पसंदीदा में जोड़ें",
    ),
    "all": MessageLookupByLibrary.simpleMessage("सभी"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 नोटी। सर्वाधिकार सुरक्षित।",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "ऐप को सुरक्षित करने के लिए फ़िंगरप्रिंट, चेहरा, पैटर्न या PIN का उपयोग करें।",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("नोटी"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("आरोही"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "आपका लॉगिन सत्र अमान्य है। कृपया फिर से साइन इन करें।",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "हम Google से कनेक्ट नहीं हो सके। कृपया पुनः प्रयास करें।",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Google लॉगिन में कुछ गलत हो गया। कृपया पुनः प्रयास करें।",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "सत्यापन विफल। कृपया सुरक्षा जांच फिर से पूरी करें।",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "कुछ गलत हो गया। कृपया पुनः प्रयास करें।",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "यह ईमेल पहले से पंजीकृत है। इसके बजाय लॉगिन करने का प्रयास करें।",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "यह मान्य ईमेल पता नहीं लगता।",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "यह ईमेल साइन अप के लिए अनुमति नहीं है। कृपया एक अलग उपयोग करें।",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "कृपया लॉगिन करने से पहले अपना ईमेल पता पुष्टि करें। अपना इनबॉक्स जांचें।",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "प्रमाणीकरण विफल। पुनः प्रयास करें।",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "यह Google खाता पहले से ही किसी अन्य उपयोगकर्ता से जुड़ा हुआ है।",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "गलत ईमेल या पासवर्ड। कृपया पुनः प्रयास करें।",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "इस खाते को मैन्युअल रूप से लिंक नहीं किया जा सकता। कृपया मुख्य विधि का उपयोग करके लॉगिन करें।",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "यह लॉगिन विधि समर्थित नहीं है।",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "बहुत अधिक प्रयास। कृपया अपना इनबॉक्स जांचें या बाद में पुनः प्रयास करें।",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "बहुत अधिक लॉगिन प्रयास। कृपया पुनः प्रयास करने से पहले थोड़ा इंतजार करें।",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "बहुत अधिक SMS प्रयास। कृपया कुछ मिनट प्रतीक्षा करें और पुनः प्रयास करें।",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "यह फ़ोन नंबर पहले से पंजीकृत है।",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "यह साइन अप विधि उपलब्ध नहीं है। कृपया कोई और चुनें।",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "कृपया लॉगिन करने से पहले अपना Google ईमेल सत्यापित करें।",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "कृपया जारी रखने के लिए फिर से लॉगिन करें।",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "आपका सत्र समाप्त हो गया है। कृपया फिर से लॉगिन करें।",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "आपका सत्र समाप्त हो गया। कृपया फिर से लॉगिन करें।",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "हमें आपका लॉगिन सत्र नहीं मिला। कृपया फिर से साइन इन करें।",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "साइन अप वर्तमान में अक्षम हैं। कृपया समर्थन से संपर्क करें।",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "ऐप लॉक सेटिंग बदलने के लिए प्रमाणित करें",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "आपका खाता बनाते समय कुछ गलत हो गया। कृपया पुनः प्रयास करें।",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "इस ईमेल या फ़ोन के साथ एक खाता पहले से मौजूद है। कृपया लॉगिन करें।",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "आपका खाता ब्लॉक कर दिया गया है। कृपया मदद के लिए समर्थन से संपर्क करें।",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "हमें इन विवरणों के साथ कोई खाता नहीं मिला।",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "आपके द्वारा दर्ज किए गए कुछ विवरण मान्य नहीं हैं। कृपया जांचें और पुनः प्रयास करें।",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "आपका पासवर्ड बहुत कमजोर है। कृपया अक्षर, संख्या और प्रतीकों के साथ एक मजबूत पासवर्ड उपयोग करें।",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("पृष्ठभूमि"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "बायोमेट्रिक प्रमाणीकरण त्रुटि",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "ऐप खोलने के लिए कृपया प्रमाणित करें",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "बहुत अधिक असफल प्रयास। बायोमेट्रिक्स अस्थायी रूप से लॉक हैं। कृपया बाद में पुनः प्रयास करें।",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "इस डिवाइस के लिए बायोमेट्रिक प्रमाणीकरण उपलब्ध नहीं है",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "इस डिवाइस पर बायोमेट्रिक प्रमाणीकरण उपलब्ध नहीं है।",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "कोई बायोमेट्रिक्स सेट अप नहीं है। कृपया अपनी डिवाइस सेटिंग में फ़िंगरप्रिंट या फेस ID पंजीकृत करें।",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "बायोमेट्रिक प्रमाणीकरण इस ऑपरेटिंग सिस्टम पर समर्थित नहीं है।",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "डिवाइस पासकोड सेट नहीं है। कृपया अपनी डिवाइस सेटिंग में सुरक्षा पिन, पैटर्न या पासवर्ड कॉन्फ़िगर करें।",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "बहुत अधिक असफल प्रयास। बायोमेट्रिक्स अक्षम हैं। कृपया उन्हें रीसेट करने के लिए अपने PIN/पासवर्ड से अनलॉक करें।",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "अज्ञात त्रुटि के कारण बायोमेट्रिक प्रमाणीकरण विफल रहा।",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("बोल्ड"),
    "bulletList": MessageLookupByLibrary.simpleMessage("बुलेट सूची"),
    "cancel": MessageLookupByLibrary.simpleMessage("रद्द करें"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("आयात रद्द करें"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("श्रेणियां"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "आप यहां अपनी श्रेणियां प्रबंधित कर सकते हैं।",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("श्रेणियां"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("श्रेणी हटाई गई"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "श्रेणी का नाम खाली नहीं हो सकता",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("श्रेणी का नाम"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "श्रेणी अपडेट की गई",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "श्रेणी का नाम बदलें",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("पासवर्ड बदलें"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "अपने खाते का पासवर्ड निम्नलिखित शर्तों के साथ बदलें",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nकृपया अपने इनबॉक्स और स्पैम फ़ोल्डर की जांच करें।",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("चेकलिस्ट"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "अपनी पसंदीदा भाषा चुनें",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("कोड ब्लॉक"),
    "color": MessageLookupByLibrary.simpleMessage("रंग"),
    "confirm": MessageLookupByLibrary.simpleMessage("पुष्टि करें"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड की पुष्टि करें",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "अपने पासवर्ड की पुष्टि करें",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage("कम से कम 6 वर्ण"),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "कम से कम 2 संख्याएं",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "कम से कम 1 विशेष वर्ण",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "कम से कम 1 बड़ा अक्षर",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("खाता बनाएं"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "अपने नोट्स को व्यवस्थित करने के लिए एक नई श्रेणी बनाएं।",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("पासवर्ड बनाएं"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "अपने नोट्स की सुरक्षा बढ़ाने के लिए, कृपया एक पासवर्ड बनाएं।",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "नोट: आपको इस पासवर्ड को याद रखना होगा क्योंकि खो जाने पर इसे पुनर्प्राप्त नहीं किया जा सकता।",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("डार्क मोड"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("हटाएं"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("श्रेणी हटाएं"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "क्या आप वाकई इस श्रेणी को हटाना चाहते हैं? यह कार्रवाई पूर्ववत नहीं की जा सकती।",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("नोट हटाएं"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "क्या आप वाकई इस नोट को हटाना चाहते हैं?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("अवरोही"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "कोड प्राप्त नहीं हुआ?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage("ऐप लॉक अक्षम करें"),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "डार्क मोड अक्षम करें",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("खाता नहीं है?"),
    "edit": MessageLookupByLibrary.simpleMessage("संपादित करें"),
    "editCategory": MessageLookupByLibrary.simpleMessage("श्रेणी संपादित करें"),
    "email": MessageLookupByLibrary.simpleMessage("ईमेल"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("ईमेल आवश्यक है!"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("ऐप लॉक सक्षम करें"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "डार्क मोड सक्षम करें",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage("कृपया OTP दर्ज करें"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("पासवर्ड दर्ज करें"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "इस फ़ाइल तक पहुंचने के लिए कृपया अपना पासवर्ड दर्ज करें।",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "अपना ईमेल दर्ज करें",
    ),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "अपना पासवर्ड दर्ज करें",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "अपना उपयोगकर्ता नाम दर्ज करें",
    ),
    "error": MessageLookupByLibrary.simpleMessage("त्रुटि"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("नोट्स निर्यात करें"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "सफलतापूर्वक निर्यात किया गया!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("इस रूप में निकालें"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड रीसेट करने में विफल। कृपया पुनः प्रयास करें।",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "OTP भेजने में विफल, कृपया बाद में पुनः प्रयास करें!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "पसंदीदा मोड चालू है",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage("फ़ाइल अपवाद हुआ।"),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "श्रेणियां फ़िल्टर करें",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "अपनी श्रेणियों के लिए एक फ़िल्टर विकल्प चुनें।",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("श्रेणी"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("बनाया गया"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("बनाया गया"),
    "filterName": MessageLookupByLibrary.simpleMessage("नाम"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("शीर्षक"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "कृपया पासवर्ड की शर्तों का पालन करें",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("फ़ॉन्ट रंग"),
    "fontSize": MessageLookupByLibrary.simpleMessage("फ़ॉन्ट आकार"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("पासवर्ड भूल गए?"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "अपना पासवर्ड भूल गए?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "सर्वर के साथ कुछ गलत हुआ। कृपया पुनः प्रयास करें।",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "सर्वर एंडपॉइंट मौजूद नहीं है।",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "सर्वर को अमान्य इनपुट भेजा गया।",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "आपके पास यह कार्रवाई करने की अनुमति नहीं है।",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "आप लॉग इन नहीं हैं। कृपया प्रमाणित करें।",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "सर्वर त्रुटि हुई। बाद में पुनः प्रयास करें।",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "अनुरोध समय समाप्त हो गया। कृपया पुनः प्रयास करें।",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "बहुत अधिक अनुरोध। कृपया धीमा करें।",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("शुरू करें"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "साइन इन रद्द कर दिया गया। यदि आप अभी भी जारी रखना चाहते हैं तो कृपया पुनः प्रयास करें।",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "ऐप के Google साइन इन सेटअप में समस्या है। कृपया समर्थन से संपर्क करें।",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "साइन इन प्रक्रिया में बाधा आई। कृपया पुनः प्रयास करें।",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Google साइन इन सही तरीके से कॉन्फ़िगर नहीं है। कृपया बाद में पुनः प्रयास करें।",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "Google साइन इन वर्तमान में इस डिवाइस पर उपलब्ध नहीं है।",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "साइन इन करते समय कुछ गलत हो गया। कृपया पुनः प्रयास करें।",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "यह Google खाता अपेक्षित उपयोगकर्ता से मेल नहीं खाता। एक अलग खाता उपयोग करने का प्रयास करें।",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("अतिथि उपयोगकर्ता"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("चित्र"),
    "images": MessageLookupByLibrary.simpleMessage("चित्र"),
    "importNotes": MessageLookupByLibrary.simpleMessage("नोट्स आयात करें"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "सफलतापूर्वक आयात किया गया!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("मान्य ईमेल नहीं है"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("अमान्य फ़ाइल"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("अमान्य OTP"),
    "italic": MessageLookupByLibrary.simpleMessage("इटैलिक"),
    "langArabic": MessageLookupByLibrary.simpleMessage("अरबी"),
    "langChinese": MessageLookupByLibrary.simpleMessage("चीनी"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("अंग्रेज़ी"),
    "langFrench": MessageLookupByLibrary.simpleMessage("फ्रेंच"),
    "langGerman": MessageLookupByLibrary.simpleMessage("जर्मन"),
    "langIndian": MessageLookupByLibrary.simpleMessage("भारतीय"),
    "langItalian": MessageLookupByLibrary.simpleMessage("इतालवी"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("जापानी"),
    "langKorean": MessageLookupByLibrary.simpleMessage("कोरियाई"),
    "langRussian": MessageLookupByLibrary.simpleMessage("रूसी"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("स्पेनिश"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("तुर्की"),
    "language": MessageLookupByLibrary.simpleMessage("भाषा"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "अपनी पसंदीदा भाषा चुनें",
    ),
    "login": MessageLookupByLibrary.simpleMessage("लॉगिन"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "अपने नोट्स को सुरक्षित रूप से सभी डिवाइस में सिंक और बैकअप करने के लिए लॉगिन करें",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "अपने नोट्स को सभी डिवाइस में सिंक करने के लिए लॉगिन करें",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("लॉगआउट"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "क्या आप वाकई लॉगआउट करना चाहते हैं?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "मौजूदा डेटा के साथ मर्ज करें",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("और अधिक"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "कृपया अपना इंटरनेट कनेक्शन जांचें और पुनः प्रयास करें।",
    ),
    "next": MessageLookupByLibrary.simpleMessage("अगला"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "अपने नोट्स को बेहतर तरीके से व्यवस्थित करने के लिए श्रेणियां जोड़ें।",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "अभी तक कोई श्रेणी नहीं जोड़ी गई",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("कोई सामग्री नहीं"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage(
      "कोई पसंदीदा नोट नहीं",
    ),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "आपने अभी तक कोई नोट पसंदीदा में नहीं जोड़ा है।",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage(
      "कोई फ़ाइल चयनित नहीं।",
    ),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("अभी तक कोई नोट नहीं"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "अपना पहला नोट बनाने के लिए + बटन टैप करें।",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "कोई आउटपुट निर्देशिका चयनित नहीं",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "कोई पासवर्ड प्रदान नहीं किया गया।",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "कोई परिणाम नहीं मिला",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("उपलब्ध नहीं"),
    "notSynced": MessageLookupByLibrary.simpleMessage("सिंक नहीं हुआ"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("नोट जोड़ा गया"),
    "noteContent": MessageLookupByLibrary.simpleMessage("नोट सामग्री"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("नोट शीर्षक"),
    "notes": MessageLookupByLibrary.simpleMessage("नोट्स"),
    "numberedList": MessageLookupByLibrary.simpleMessage("क्रमांकित सूची"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "अपने विचारों को ऑफ़लाइन कैप्चर और व्यवस्थित करें, और उन्हें सभी डिवाइस में सिंक करें",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "अधिकतम लचीलेपन के लिए चित्र, वॉइस मेमो जोड़ें, और नोट्स को PDF, Word या Text में निर्यात करें",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "सभी नोट्स एंड-टू-एंड एन्क्रिप्शन से सुरक्षित हैं — केवल आप ही उन्हें पढ़ सकते हैं",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "आपके नोट्स, हमेशा आपके साथ",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "केवल टेक्स्ट से अधिक",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "आपकी गोपनीयता महत्वपूर्ण है",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage(
      "या इसके साथ लॉगिन करें",
    ),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "हमने एक सत्यापन कोड भेजा है ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("पासवर्ड"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड सफलतापूर्वक बदला गया",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड पुष्टि आवश्यक है!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड कम से कम 6 वर्णों का होना चाहिए",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड में स्पेस नहीं हो सकता",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड आवश्यक है!",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "पासवर्ड मेल नहीं खाते",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage("पथ अपवाद हुआ।"),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF फ़ाइल (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("एक भाषा चुनें"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage(
      "कृपया प्रतीक्षा करें....",
    ),
    "previous": MessageLookupByLibrary.simpleMessage("पिछला"),
    "print": MessageLookupByLibrary.simpleMessage("प्रिंट करें"),
    "remove": MessageLookupByLibrary.simpleMessage("हटाएं"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "पसंदीदा से हटाएं",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("चित्र हटाएं"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "क्या आप वाकई इस चित्र को नोट से हटाना चाहते हैं?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "मौजूदा डेटा बदलें",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("कोड पुनः भेजें"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "अपना पासवर्ड रीसेट करने के लिए OTP प्राप्त करने हेतु नीचे अपना ईमेल पता दर्ज करें",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "नोट शीर्षक या सामग्री....",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("श्रेणी चुनें"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("OTP भेजें"),
    "settings": MessageLookupByLibrary.simpleMessage("सेटिंग्स"),
    "share": MessageLookupByLibrary.simpleMessage("साझा करें"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "नोट साझा करते समय त्रुटि हुई",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("साझा करना विफल"),
    "signUp": MessageLookupByLibrary.simpleMessage("साइन अप करें"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "अपने नोट्स को हर जगह सुरक्षित रूप से सिंक और बैकअप करने के लिए साइन अप करें",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("छोड़ें"),
    "sortBy": MessageLookupByLibrary.simpleMessage("इसके अनुसार क्रमबद्ध करें"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("स्ट्राइकथ्रू"),
    "style": MessageLookupByLibrary.simpleMessage("शैली"),
    "subscript": MessageLookupByLibrary.simpleMessage("सबस्क्रिप्ट"),
    "success": MessageLookupByLibrary.simpleMessage("सफलता"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "मानों में से एक डेटाबेस नियमों को पूरा नहीं करता (जांच बाधा)।",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "जिस कॉलम तक आप पहुंचने का प्रयास कर रहे हैं वह मौजूद नहीं है।",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "यह रिकॉर्ड पहले से मौजूद है। कृपया अलग मान उपयोग करें।",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "डेटाबेस के साथ कुछ गलत हुआ। कृपया पुनः प्रयास करें।",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "यह मान पहले से मौजूद है। कृपया एक अलग उपयोग करें (डुप्लिकेट कुंजी)।",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "यह रिकॉर्ड किसी अन्य से जुड़ा हुआ है और हटाया/अपडेट नहीं किया जा सकता (विदेशी कुंजी उल्लंघन)।",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "यह फ़ंक्शन डेटाबेस में मौजूद नहीं है।",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "आपके इनपुट में से एक बहुत लंबा है। कृपया इसे छोटा करें और पुनः प्रयास करें।",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "एक आंतरिक डेटाबेस त्रुटि हुई। कृपया बाद में पुनः प्रयास करें।",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "अमान्य तारीख या समय प्रारूप। कृपया सही प्रारूप का उपयोग करें।",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "अमान्य इनपुट प्रकार। कृपया अपना डेटा जांचें।",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "अमान्य अनुरोध। कृपया आपके द्वारा दर्ज की गई जानकारी जांचें।",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "आपके पास इस संसाधन तक पहुंच नहीं है।",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "आपके पास यह कार्रवाई करने की अनुमति नहीं है।",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "आप अधिकृत नहीं हैं। कृपया पहले लॉगिन करें।",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "अनुरोधित संसाधन नहीं मिला।",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "अनुरोध बहुत लंबा चला और रद्द कर दिया गया। कृपया पुनः प्रयास करें।",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "एक आवश्यक फ़ील्ड गायब है। कृपया सभी आवश्यक विवरण भरें।",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "पंक्ति-स्तरीय सुरक्षा ने इस अनुरोध को अवरुद्ध कर दिया।",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "डेटाबेस क्वेरी में समस्या है (सिंटैक्स त्रुटि)।",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "जिस टेबल तक आप पहुंचने का प्रयास कर रहे हैं वह मौजूद नहीं है।",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "डेटाबेस में बहुत अधिक कनेक्शन हैं। कृपया बाद में पुनः प्रयास करें।",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "अप्रत्याशित डेटाबेस त्रुटि। कृपया बाद में पुनः प्रयास करें।",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("सुपरस्क्रिप्ट"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("नोट्स सिंक करें"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "हमेशा नोट्स को क्लाउड में सिंक करें",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("सिंक हुआ"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("टेक्स्ट फ़ाइल (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("थीम"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "कनेक्शन समय समाप्त हो गया है। कृपया पुनः प्रयास करें!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("बिना श्रेणी के"),
    "underline": MessageLookupByLibrary.simpleMessage("रेखांकित"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "एक अज्ञात अपवाद हुआ।",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("शीर्षकहीन"),
    "username": MessageLookupByLibrary.simpleMessage("उपयोगकर्ता नाम"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "उपयोगकर्ता नाम एक अक्षर से शुरू होना चाहिए और केवल अक्षर और संख्या होनी चाहिए",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "कृपया अपना उपयोगकर्ता नाम दर्ज करें",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "अपना ईमेल सत्यापित करें",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "गलत पासवर्ड या दूषित डेटा।",
    ),
  };
}
