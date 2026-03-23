// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static String m0(seconds) => "${seconds}s içinde kullanılabilir";

  static String m1(error) => "Biyometrik kimlik doğrulama başarısız: ${error}";

  static String m2(error) =>
      "Dahili hata: Resim dizini oluşturulamıyor: ${error}";

  static String m3(dbName) =>
      "Bu cihazda zaten ${dbName} kayıtlı. İçe aktarılan dosyadaki verileri nasıl işlemek istersiniz?";

  static String m4(dbName) => "${dbName} çakışması algılandı";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 gün önce', other: '${count} gün önce')}";

  static String m6(result) => "Veritabanı kapalı: ${result}";

  static String m7(result) => "Veritabanında yinelenen sütun var: ${result}";

  static String m8(result) => "Veritabanı istisnası: ${result}";

  static String m9(result) => "Veritabanı tablosu mevcut değil: ${result}";

  static String m10(result) => "Veritabanı açılamadı: ${result}";

  static String m11(result) => "SQL sözdizimi hatası: ${result}";

  static String m12(result) => "Benzersizlik kısıtlaması hatası: ${result}";

  static String m13(message) => "Dizin hatası: ${message}";

  static String m14(message) => "Dosya sistemi hatası: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1 saat önce', other: '${count} saat önce')}";

  static String m16(message) => "Dahili hata: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1 dakika önce', other: '${count} dakika önce')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1 ay önce', other: '${count} ay önce')}";

  static String m19(message) => "Platform hatası: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1 saniye önce', other: '${count} saniye önce')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("Notey Hakkında"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Hesap başarıyla oluşturuldu",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Ekle"),
    "addCategory": MessageLookupByLibrary.simpleMessage("Kategori Ekle"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage(
      "Yeni Kategori Ekle",
    ),
    "addToFavorites": MessageLookupByLibrary.simpleMessage("Favorilere Ekle"),
    "all": MessageLookupByLibrary.simpleMessage("Tümü"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. Tüm hakları saklıdır.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Uygulamayı korumak için parmak izi, yüz, desen veya PIN kullanın.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("Artan"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "Giriş oturumunuz geçersiz. Lütfen tekrar giriş yapın.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Google\'a bağlanamadık. Lütfen tekrar deneyin.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Google ile giriş sırasında bir sorun oluştu. Lütfen tekrar deneyin.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "Doğrulama başarısız. Lütfen güvenlik kontrolünü tekrar tamamlayın.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Bir hata oluştu. Lütfen tekrar deneyin.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "Bu e-posta zaten kayıtlı. Giriş yapmayı deneyin.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Bu geçerli bir e-posta adresi gibi görünmüyor.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Bu e-posta kayıt için yetkilendirilmemiş. Lütfen başka bir e-posta kullanın.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Giriş yapmadan önce e-postanızı onaylayın. Gelen kutunuzu kontrol edin.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Kimlik doğrulama başarısız. Tekrar deneyin.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Bu Google hesabı zaten başka bir kullanıcıya bağlı.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Yanlış e-posta veya şifre. Lütfen tekrar deneyin.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "Bu hesap manuel olarak bağlanamaz. Ana yönteminizle giriş yapın.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "Bu giriş yöntemi desteklenmiyor.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Çok fazla deneme. Lütfen gelen kutunuzu kontrol edin veya daha sonra tekrar deneyin.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Çok fazla giriş denemesi. Lütfen tekrar denemeden önce biraz bekleyin.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Çok fazla SMS denemesi. Lütfen birkaç dakika bekleyin ve tekrar deneyin.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "Bu telefon numarası zaten kayıtlı.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "Bu kayıt yöntemi kullanılamıyor. Lütfen başka bir yöntem seçin.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Giriş yapmadan önce Google e-postanızı doğrulayın.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Devam etmek için lütfen tekrar giriş yapın.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "Oturumunuz sona erdi. Lütfen tekrar giriş yapın.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "Oturumunuz sona erdi. Lütfen tekrar giriş yapın.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "Giriş oturumunuzu bulamadık. Lütfen tekrar giriş yapın.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Kayıtlar şu anda devre dışı. Lütfen destekle iletişime geçin.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Uygulama kilidi ayarlarını değiştirmek için kimlik doğrulayın",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Hesap oluşturulurken bir hata oluştu. Lütfen tekrar deneyin.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Bu e-posta veya telefon numarasıyla bir hesap zaten mevcut. Lütfen giriş yapın.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Hesabınız askıya alındı. Yardım için destekle iletişime geçin.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "Bu bilgilerle bir hesap bulamadık.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Girilen bazı bilgiler geçersiz. Lütfen kontrol edip tekrar deneyin.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "Şifreniz çok zayıf. Harf, rakam ve sembol içeren daha güçlü bir şifre kullanın.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Arka Plan"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Biyometrik kimlik doğrulama hatası",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Uygulamayı açmak için lütfen kimlik doğrulayın",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Çok fazla başarısız deneme. Biyometri geçici olarak kilitlendi. Lütfen daha sonra tekrar deneyin.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "Bu cihazda biyometrik kimlik doğrulama kullanılamıyor",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "Bu cihazda biyometrik kimlik doğrulama kullanılamıyor.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "Biyometri ayarlanmadı. Lütfen cihaz ayarlarından parmak izi veya Face ID kaydedin.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "Bu işletim sisteminde biyometrik kimlik doğrulama desteklenmiyor.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "Cihaz şifresi ayarlanmadı. Lütfen cihaz ayarlarından güvenlik PIN\'i, deseni veya şifresi yapılandırın.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Çok fazla başarısız deneme. Biyometri devre dışı bırakıldı. Sıfırlamak için PIN/şifre ile kilidi açın.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "Bilinmeyen bir hata nedeniyle biyometrik kimlik doğrulama başarısız oldu.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Kalın"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Madde İşaretli Liste"),
    "cancel": MessageLookupByLibrary.simpleMessage("İptal"),
    "cancelImport": MessageLookupByLibrary.simpleMessage(
      "İçe aktarmayı iptal et",
    ),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Kategoriler"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Kategorilerinizi buradan yönetebilirsiniz.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Kategoriler"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("Kategori silindi"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Kategori adı boş olamaz",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("Kategori Adı"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "Kategori güncellendi",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Kategori Adını Değiştir",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("Şifre Değiştir"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Hesap şifrenizi şunları içerecek şekilde değiştirin",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nLütfen gelen kutunuzu ve spam klasörünü kontrol edin.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Kontrol Listesi"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Tercih ettiğiniz dili seçin",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Kod Bloğu"),
    "color": MessageLookupByLibrary.simpleMessage("Renk"),
    "confirm": MessageLookupByLibrary.simpleMessage("Onayla"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Şifre Onayı"),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Şifrenizi onaylayın",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "En az 6 karakter",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage("En az 2 rakam"),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "En az 1 özel karakter",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "En az 1 büyük harf",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Hesap Oluştur"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Notlarınızı düzenlemek için yeni bir kategori oluşturun.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("Şifre Oluştur"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Notlarınızın güvenliğini artırmak için lütfen bir şifre oluşturun.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Not: Bu şifreyi unutursanız kurtarılamaz, lütfen hatırlayın.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Karanlık Mod"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Sil"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("Kategoriyi Sil"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "Bu kategoriyi silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Notu Sil"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Bu notu silmek istediğinizden emin misiniz?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Azalan"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Kodu almadınız mı?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage(
      "Uygulama Kilidini Devre Dışı Bırak",
    ),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Karanlık Modu Devre Dışı Bırak",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Hesabınız yok mu?",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Düzenle"),
    "editCategory": MessageLookupByLibrary.simpleMessage("Kategoriyi Düzenle"),
    "email": MessageLookupByLibrary.simpleMessage("E-posta"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("E-posta gerekli!"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage(
      "Uygulama Kilidini Etkinleştir",
    ),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Karanlık Modu Etkinleştir",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage("Lütfen OTP kodunu girin"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Şifre Girin"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Bu dosyaya erişmek için lütfen şifrenizi girin.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage("E-postanızı girin"),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Şifrenizi girin",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Kullanıcı adınızı girin",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Hata"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Notları Dışa Aktar"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Başarıyla dışa aktarıldı!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Dışa Aktar"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Şifre sıfırlanamadı. Lütfen tekrar deneyin.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "OTP gönderilemedi. Lütfen daha sonra tekrar deneyin!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage("Favori modu AÇIK"),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "Dosya hatası oluştu.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Kategorileri Filtrele",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Kategorileriniz için bir filtre seçeneği belirleyin.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Kategori"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage(
      "Oluşturulma Tarihi",
    ),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage(
      "Oluşturulma Tarihi",
    ),
    "filterName": MessageLookupByLibrary.simpleMessage("Ad"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Başlık"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Lütfen şifre gereksinimlerini takip edin",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Yazı Rengi"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Yazı Boyutu"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage(
      "Şifrenizi mi unuttunuz?",
    ),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Şifrenizi mi unuttunuz?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Sunucu hatası oluştu. Lütfen tekrar deneyin.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "Sunucu uç noktası mevcut değil.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "Sunucuya geçersiz girdi gönderildi.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "Bu işlemi gerçekleştirme izniniz yok.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "Giriş yapmadınız. Lütfen kimlik doğrulayın.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Sunucu hatası oluştu. Daha sonra tekrar deneyin.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "İstek zaman aşımına uğradı. Lütfen tekrar deneyin.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Çok fazla istek. Lütfen yavaşlayın.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Başla"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "Giriş iptal edildi. Devam etmek istiyorsanız lütfen tekrar deneyin.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "Uygulamanın Google giriş yapılandırmasında bir sorun var. Lütfen destekle iletişime geçin.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "Giriş işlemi kesildi. Lütfen tekrar deneyin.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Google girişi doğru yapılandırılmamış. Lütfen daha sonra tekrar deneyin.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "Bu cihazda Google girişi şu anda kullanılamıyor.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Giriş sırasında bir hata oluştu. Lütfen tekrar deneyin.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "Bu Google hesabı beklenen kullanıcıyla eşleşmiyor. Başka bir hesap deneyin.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Misafir Kullanıcı"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Resim"),
    "images": MessageLookupByLibrary.simpleMessage("Resimler"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Notları İçe Aktar"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Başarıyla içe aktarıldı!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("Geçersiz e-posta"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("Geçersiz dosya"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Geçersiz OTP kodu"),
    "italic": MessageLookupByLibrary.simpleMessage("İtalik"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Arapça"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Çince"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("İngilizce"),
    "langFrench": MessageLookupByLibrary.simpleMessage("Fransızca"),
    "langGerman": MessageLookupByLibrary.simpleMessage("Almanca"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Hintçe"),
    "langItalian": MessageLookupByLibrary.simpleMessage("İtalyanca"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Japonca"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Korece"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Rusça"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("İspanyolca"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Türkçe"),
    "language": MessageLookupByLibrary.simpleMessage("Dil"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Tercih ettiğiniz dili seçin",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Giriş Yap"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Notlarınızı tüm cihazlarda güvenle senkronize etmek ve yedeklemek için giriş yapın",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Notlarınızı tüm cihazlarda senkronize etmek için giriş yapın",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Çıkış Yap"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "Çıkış yapmak istediğinizden emin misiniz?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Mevcut verilerle birleştir",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("Daha Fazla"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Lütfen internet bağlantınızı kontrol edin ve tekrar deneyin.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("İleri"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Notlarınızı daha iyi düzenlemek için kategoriler ekleyin.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "Henüz kategori eklenmedi",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("İçerik yok"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("Favori yok"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "Henüz favorilere not eklemediniz.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage("Dosya seçilmedi."),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("Henüz not yok"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "İlk notunuzu oluşturmak için + düğmesine dokunun.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "Çıktı dizini seçilmedi",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "Şifre sağlanmadı.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("Sonuç bulunamadı"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Kullanılamıyor"),
    "notSynced": MessageLookupByLibrary.simpleMessage("Senkronize değil"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Not eklendi"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Not İçeriği"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Not Başlığı"),
    "notes": MessageLookupByLibrary.simpleMessage("Notlar"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Numaralı Liste"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Düşüncelerinizi çevrimdışı yakalayın ve düzenleyin, tüm cihazlarda zahmetsizce senkronize edin",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Resim, sesli not ekleyin ve maksimum esneklik için PDF, Word veya metin olarak dışa aktarın",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "Tüm notlar uçtan uca şifrelemeyle korunur — yalnızca siz okuyabilirsiniz",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Notlarınız, her zaman yanınızda",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "Sadece metinden fazlası",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "Gizliliğiniz önemli",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage(
      "Veya şununla giriş yapın",
    ),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "Doğrulama kodu gönderdik: ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Şifre"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Şifre başarıyla değiştirildi",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "Şifre onayı gerekli!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "Şifre en az 6 karakter olmalı",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "Şifre boşluk içermemeli",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage("Şifre gerekli!"),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Şifreler eşleşmiyor",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage("Yol hatası oluştu."),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF dosyası (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Dil Seçin"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("Lütfen bekleyin..."),
    "previous": MessageLookupByLibrary.simpleMessage("Geri"),
    "print": MessageLookupByLibrary.simpleMessage("Yazdır"),
    "remove": MessageLookupByLibrary.simpleMessage("Kaldır"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Favorilerden Kaldır",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Resmi Kaldır"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "Bu resmi nottan kaldırmak istediğinizden emin misiniz?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Mevcut verileri değiştir",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Kodu Yeniden Gönder"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Şifrenizi sıfırlamak için OTP kodu almak üzere e-postanızı aşağıya girin",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Not başlığı veya içeriği...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("Kategori Seç"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("OTP Gönder"),
    "settings": MessageLookupByLibrary.simpleMessage("Ayarlar"),
    "share": MessageLookupByLibrary.simpleMessage("Paylaş"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Not paylaşılırken hata oluştu",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("Paylaşım başarısız"),
    "signUp": MessageLookupByLibrary.simpleMessage("Kayıt Ol"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Notlarınızı her yerde güvenle senkronize etmek ve yedeklemek için kayıt olun",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Atla"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Sırala"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Üstü Çizili"),
    "style": MessageLookupByLibrary.simpleMessage("Stil"),
    "subscript": MessageLookupByLibrary.simpleMessage("Alt Simge"),
    "success": MessageLookupByLibrary.simpleMessage("Başarılı"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "Değerlerden biri veritabanı kurallarını karşılamıyor (kontrol kısıtlaması).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "Erişmeye çalıştığınız sütun mevcut değil.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "Bu kayıt zaten mevcut. Lütfen farklı değerler kullanın.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Veritabanı hatası oluştu. Lütfen tekrar deneyin.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "Bu değer zaten mevcut. Lütfen başka bir değer kullanın (yinelenen anahtar).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "Bu kayıt başka bir kayda bağlı ve silinemez/güncellenemez (yabancı anahtar ihlali).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "Bu fonksiyon veritabanında mevcut değil.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "Girdilerinizden biri çok uzun. Lütfen kısaltın ve tekrar deneyin.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "Dahili veritabanı hatası oluştu. Lütfen daha sonra tekrar deneyin.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Geçersiz tarih veya saat formatı. Lütfen doğru formatı kullanın.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Geçersiz girdi türü. Lütfen verilerinizi kontrol edin.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Geçersiz istek. Lütfen girilen bilgileri kontrol edin.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "Bu kaynağa erişiminiz yok.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "Bu işlemi gerçekleştirme izniniz yok.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Yetkilendirilmediniz. Lütfen önce giriş yapın.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "İstenen kaynak bulunamadı.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "İstek çok uzun sürdü ve iptal edildi. Lütfen tekrar deneyin.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "Gerekli bir alan eksik. Lütfen tüm gerekli bilgileri doldurun.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "Satır düzeyi güvenliği bu isteği engelledi.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "Veritabanı sorgusunda bir sorun var (sözdizimi hatası).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "Erişmeye çalıştığınız tablo mevcut değil.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "Veritabanına çok fazla bağlantı var. Lütfen daha sonra tekrar deneyin.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Beklenmeyen veritabanı hatası. Lütfen daha sonra tekrar deneyin.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Üst Simge"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("Notları Senkronize Et"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Notları her zaman bulutla senkronize et",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Senkronize"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("Metin dosyası (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("Tema"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "Bağlantı zaman aşımına uğradı. Lütfen tekrar deneyin!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("Kategorisiz"),
    "underline": MessageLookupByLibrary.simpleMessage("Altı Çizili"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Bilinmeyen bir hata oluştu.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Başlıksız"),
    "username": MessageLookupByLibrary.simpleMessage("Kullanıcı Adı"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "Kullanıcı adı bir harfle başlamalı ve yalnızca harf ve rakam içermeli",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Lütfen kullanıcı adınızı girin",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "E-postanızı Doğrulayın",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Yanlış şifre veya bozuk veriler.",
    ),
  };
}
