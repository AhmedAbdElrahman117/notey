// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static String m0(seconds) => "Verfügbar in ${seconds}s";

  static String m1(error) =>
      "Biometrische Authentifizierung fehlgeschlagen: ${error}";

  static String m2(error) =>
      "Interner Fehler: Bilderverzeichnis kann nicht erstellt werden: ${error}";

  static String m3(dbName) =>
      "Sie haben bereits ${dbName} auf diesem Gerät gespeichert. Wie möchten Sie mit den Daten aus der importierten Datei umgehen?";

  static String m4(dbName) => "${dbName} Konflikt erkannt";

  static String m5(count) =>
      "${Intl.plural(count, one: 'Vor 1 Tag', other: 'Vor ${count} Tagen')}";

  static String m6(result) => "Datenbank ist geschlossen: ${result}";

  static String m7(result) => "Datenbank hat doppelte Spalte: ${result}";

  static String m8(result) => "Datenbankausnahme: ${result}";

  static String m9(result) => "Datenbanktabelle existiert nicht: ${result}";

  static String m10(result) =>
      "Datenbank konnte nicht geöffnet werden: ${result}";

  static String m11(result) => "SQL-Syntaxfehler: ${result}";

  static String m12(result) => "Eindeutigkeitsfehler: ${result}";

  static String m13(message) => "Verzeichnisfehler: ${message}";

  static String m14(message) => "Dateisystemfehler: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: 'Vor 1 Stunde', other: 'Vor ${count} Stunden')}";

  static String m16(message) => "Interner Fehler: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: 'Vor 1 Minute', other: 'Vor ${count} Minuten')}";

  static String m18(count) =>
      "${Intl.plural(count, one: 'Vor 1 Monat', other: 'Vor ${count} Monaten')}";

  static String m19(message) => "Plattformfehler: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: 'Vor 1 Sekunde', other: 'Vor ${count} Sekunden')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("Über Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Konto erfolgreich erstellt",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Hinzufügen"),
    "addCategory": MessageLookupByLibrary.simpleMessage("Kategorie hinzufügen"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage(
      "Neue Kategorie hinzufügen",
    ),
    "addToFavorites": MessageLookupByLibrary.simpleMessage(
      "Zu Favoriten hinzufügen",
    ),
    "all": MessageLookupByLibrary.simpleMessage("Alle"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. Alle Rechte vorbehalten.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Verwenden Sie Fingerabdruck, Gesicht, Muster oder PIN, um die App zu sichern.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("Aufsteigend"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "Ihre Anmeldesitzung ist ungültig. Bitte melden Sie sich erneut an.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Wir konnten keine Verbindung zu Google herstellen. Bitte versuchen Sie es erneut.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Bei der Google-Anmeldung ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "Verifizierung fehlgeschlagen. Bitte führen Sie die Sicherheitsprüfung erneut durch.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Ein Fehler ist aufgetreten. Bitte versuchen Sie es erneut.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "Diese E-Mail ist bereits registriert. Versuchen Sie sich anzumelden.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Das sieht nicht wie eine gültige E-Mail-Adresse aus.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Diese E-Mail ist für die Registrierung nicht zugelassen. Bitte verwenden Sie eine andere.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Bitte bestätigen Sie Ihre E-Mail-Adresse vor der Anmeldung. Überprüfen Sie Ihren Posteingang.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Authentifizierung fehlgeschlagen. Versuchen Sie es erneut.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Dieses Google-Konto ist bereits mit einem anderen Benutzer verknüpft.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Falsche E-Mail oder falsches Passwort. Bitte versuchen Sie es erneut.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "Dieses Konto kann nicht manuell verknüpft werden. Bitte melden Sie sich mit der Hauptmethode an.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "Diese Anmeldemethode wird nicht unterstützt.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Zu viele Versuche. Bitte überprüfen Sie Ihren Posteingang oder versuchen Sie es später erneut.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Zu viele Anmeldeversuche. Bitte warten Sie einen Moment, bevor Sie es erneut versuchen.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Zu viele SMS-Versuche. Bitte warten Sie einige Minuten und versuchen Sie es erneut.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "Diese Telefonnummer ist bereits registriert.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "Diese Registrierungsmethode ist nicht verfügbar. Bitte wählen Sie eine andere.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Bitte verifizieren Sie Ihre Google-E-Mail vor der Anmeldung.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Bitte melden Sie sich erneut an, um fortzufahren.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "Ihre Sitzung ist abgelaufen. Bitte melden Sie sich erneut an.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "Ihre Sitzung ist abgelaufen. Bitte melden Sie sich erneut an.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "Wir konnten Ihre Anmeldesitzung nicht finden. Bitte melden Sie sich erneut an.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Registrierungen sind derzeit deaktiviert. Bitte kontaktieren Sie den Support.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Authentifizieren Sie sich, um die App-Sperre-Einstellungen zu ändern",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Bei der Kontoerstellung ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Ein Konto mit dieser E-Mail oder Telefonnummer existiert bereits. Bitte melden Sie sich an.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Ihr Konto wurde gesperrt. Bitte kontaktieren Sie den Support für Hilfe.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "Wir konnten kein Konto mit diesen Angaben finden.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Einige der eingegebenen Details sind ungültig. Bitte überprüfen und erneut versuchen.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "Ihr Passwort ist zu schwach. Verwenden Sie ein stärkeres mit Buchstaben, Zahlen und Symbolen.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Hintergrund"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Fehler bei der biometrischen Authentifizierung",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Bitte authentifizieren Sie sich, um die App zu öffnen",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Zu viele fehlgeschlagene Versuche. Biometrie ist vorübergehend gesperrt. Bitte versuchen Sie es später erneut.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "Biometrische Authentifizierung ist auf diesem Gerät nicht verfügbar",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "Biometrische Authentifizierung ist auf diesem Gerät nicht verfügbar.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "Keine Biometrie eingerichtet. Bitte registrieren Sie einen Fingerabdruck oder eine Gesichts-ID in Ihren Geräteeinstellungen.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "Biometrische Authentifizierung wird auf diesem Betriebssystem nicht unterstützt.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "Geräte-Passcode ist nicht festgelegt. Bitte konfigurieren Sie eine Sicherheits-PIN, ein Muster oder ein Passwort in Ihren Geräteeinstellungen.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Zu viele fehlgeschlagene Versuche. Biometrie ist deaktiviert. Bitte entsperren Sie mit Ihrer PIN/Passwort zum Zurücksetzen.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "Biometrische Authentifizierung ist aufgrund eines unbekannten Fehlers fehlgeschlagen.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Fett"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Aufzählung"),
    "cancel": MessageLookupByLibrary.simpleMessage("Abbrechen"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("Import abbrechen"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Kategorien"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Sie können Ihre Kategorien hier verwalten.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Kategorien"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage(
      "Kategorie gelöscht",
    ),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Kategoriename darf nicht leer sein",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("Kategoriename"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "Kategorie aktualisiert",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Kategorienamen ändern",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("Passwort ändern"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Ändern Sie Ihr Kontopasswort, um Folgendes zu enthalten",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nBitte überprüfen Sie Ihren Posteingang und Spam-Ordner.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Checkliste"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie Ihre bevorzugte Sprache",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Codeblock"),
    "color": MessageLookupByLibrary.simpleMessage("Farbe"),
    "confirm": MessageLookupByLibrary.simpleMessage("Bestätigen"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "Passwort bestätigen",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Passwort bestätigen",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "Mindestens 6 Zeichen",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "Mindestens 2 Zahlen",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "Mindestens 1 Sonderzeichen",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "Mindestens 1 Großbuchstabe",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Konto erstellen"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Erstellen Sie eine neue Kategorie, um Ihre Notizen zu organisieren.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage(
      "Passwort erstellen",
    ),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Um die Sicherheit Ihrer Notizen zu erhöhen, erstellen Sie bitte ein Passwort.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Hinweis: Sie müssen sich dieses Passwort merken, da es bei Verlust nicht wiederhergestellt werden kann.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Dunkelmodus"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Löschen"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("Kategorie löschen"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sind Sie sicher, dass Sie diese Kategorie löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Notiz löschen"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sind Sie sicher, dass Sie diese Notiz löschen möchten?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Absteigend"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Code nicht erhalten?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage(
      "App-Sperre deaktivieren",
    ),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Dunkelmodus deaktivieren",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage("Noch kein Konto?"),
    "edit": MessageLookupByLibrary.simpleMessage("Bearbeiten"),
    "editCategory": MessageLookupByLibrary.simpleMessage(
      "Kategorie bearbeiten",
    ),
    "email": MessageLookupByLibrary.simpleMessage("E-Mail"),
    "emailRequired": MessageLookupByLibrary.simpleMessage(
      "E-Mail erforderlich!",
    ),
    "enableAppLock": MessageLookupByLibrary.simpleMessage(
      "App-Sperre aktivieren",
    ),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Dunkelmodus aktivieren",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage(
      "Bitte geben Sie den OTP-Code ein",
    ),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Passwort eingeben"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Bitte geben Sie Ihr Passwort ein, um auf diese Datei zuzugreifen.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "Geben Sie Ihre E-Mail ein",
    ),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Geben Sie Ihr Passwort ein",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Geben Sie Ihren Benutzernamen ein",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Fehler"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Notizen exportieren"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Erfolgreich exportiert!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Exportieren als"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Passwort zurücksetzen fehlgeschlagen. Bitte versuchen Sie es erneut.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "OTP-Senden fehlgeschlagen. Bitte versuchen Sie es später erneut!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "Favoriten-Modus ist AN",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "Ein Dateifehler ist aufgetreten.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Kategorien filtern",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie eine Filteroption für Ihre Kategorien.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Kategorie"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("Erstellt am"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage(
      "Erstellt am",
    ),
    "filterName": MessageLookupByLibrary.simpleMessage("Name"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Titel"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Bitte beachten Sie die Passwortanforderungen",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Schriftfarbe"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Schriftgröße"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage(
      "Passwort vergessen?",
    ),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Passwort vergessen?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Ein Serverfehler ist aufgetreten. Bitte versuchen Sie es erneut.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "Der Server-Endpunkt existiert nicht.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "Ungültige Eingabe an den Server gesendet.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "Sie haben keine Berechtigung für diese Aktion.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "Sie sind nicht angemeldet. Bitte authentifizieren Sie sich.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Serverfehler aufgetreten. Versuchen Sie es später erneut.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "Die Anfrage ist abgelaufen. Bitte versuchen Sie es erneut.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Zu viele Anfragen. Bitte verlangsamen.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Loslegen"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "Anmeldung wurde abgebrochen. Bitte versuchen Sie es erneut, wenn Sie fortfahren möchten.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "Es gibt ein Problem mit der Google-Anmeldekonfiguration der App. Bitte kontaktieren Sie den Support.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "Der Anmeldevorgang wurde unterbrochen. Bitte versuchen Sie es erneut.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Die Google-Anmeldung ist nicht korrekt konfiguriert. Bitte versuchen Sie es später erneut.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "Die Google-Anmeldung ist derzeit auf diesem Gerät nicht verfügbar.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Bei der Anmeldung ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "Dieses Google-Konto stimmt nicht mit dem erwarteten Benutzer überein. Versuchen Sie ein anderes Konto.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Gastbenutzer"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Bild"),
    "images": MessageLookupByLibrary.simpleMessage("Bilder"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Notizen importieren"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Erfolgreich importiert!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("Ungültige E-Mail"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("Ungültige Datei"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Ungültiger OTP-Code"),
    "italic": MessageLookupByLibrary.simpleMessage("Kursiv"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Arabisch"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Chinesisch"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("Englisch"),
    "langFrench": MessageLookupByLibrary.simpleMessage("Französisch"),
    "langGerman": MessageLookupByLibrary.simpleMessage("Deutsch"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Hindi"),
    "langItalian": MessageLookupByLibrary.simpleMessage("Italienisch"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Japanisch"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Koreanisch"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Russisch"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("Spanisch"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Türkisch"),
    "language": MessageLookupByLibrary.simpleMessage("Sprache"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Wählen Sie Ihre bevorzugte Sprache",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Anmelden"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Melden Sie sich an, um Ihre Notizen sicher auf allen Geräten zu synchronisieren und zu sichern",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Melden Sie sich an, um Ihre Notizen auf allen Geräten zu synchronisieren",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Abmelden"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sind Sie sicher, dass Sie sich abmelden möchten?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Mit vorhandenen Daten zusammenführen",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("Mehr"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Bitte überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Weiter"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Fügen Sie Kategorien hinzu, um Ihre Notizen besser zu organisieren.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "Noch keine Kategorien hinzugefügt",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("Kein Inhalt"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage("Keine Favoriten"),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "Sie haben noch keine Notizen zu den Favoriten hinzugefügt.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage(
      "Keine Datei ausgewählt.",
    ),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("Noch keine Notizen"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "Tippen Sie auf die + Schaltfläche, um Ihre erste Notiz zu erstellen.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "Kein Ausgabeverzeichnis ausgewählt",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "Kein Passwort angegeben.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "Keine Ergebnisse gefunden",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Nicht verfügbar"),
    "notSynced": MessageLookupByLibrary.simpleMessage("Nicht synchronisiert"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Notiz hinzugefügt"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Notiz-Inhalt"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Notiz-Titel"),
    "notes": MessageLookupByLibrary.simpleMessage("Notizen"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Nummerierte Liste"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Erfassen und organisieren Sie Ihre Gedanken offline und synchronisieren Sie sie auf allen Geräten",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Fügen Sie Bilder, Sprachnotizen hinzu und exportieren Sie Notizen als PDF, Word oder Text für maximale Flexibilität",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "Alle Notizen sind durch Ende-zu-Ende-Verschlüsselung geschützt — nur Sie können sie lesen",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Ihre Notizen, immer dabei",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "Mehr als nur Text",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "Ihre Privatsphäre zählt",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("Oder anmelden mit"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "Wir haben einen Bestätigungscode gesendet an ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Passwort"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Passwort erfolgreich geändert",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "Passwortbestätigung erforderlich!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "Passwort muss mindestens 6 Zeichen haben",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "Passwort darf keine Leerzeichen enthalten",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Passwort erforderlich!",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Passwörter stimmen nicht überein",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage(
      "Ein Pfadfehler ist aufgetreten.",
    ),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF-Datei (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Sprache wählen"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("Bitte warten..."),
    "previous": MessageLookupByLibrary.simpleMessage("Zurück"),
    "print": MessageLookupByLibrary.simpleMessage("Drucken"),
    "remove": MessageLookupByLibrary.simpleMessage("Entfernen"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Aus Favoriten entfernen",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Bild entfernen"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sind Sie sicher, dass Sie dieses Bild aus der Notiz entfernen möchten?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Vorhandene Daten ersetzen",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Code erneut senden"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Geben Sie unten Ihre E-Mail-Adresse ein, um einen OTP-Code zum Zurücksetzen Ihres Passworts zu erhalten",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Notiz-Titel oder Inhalt...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage(
      "Kategorie auswählen",
    ),
    "sendOtp": MessageLookupByLibrary.simpleMessage("OTP senden"),
    "settings": MessageLookupByLibrary.simpleMessage("Einstellungen"),
    "share": MessageLookupByLibrary.simpleMessage("Teilen"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Fehler beim Teilen der Notiz",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage(
      "Teilen fehlgeschlagen",
    ),
    "signUp": MessageLookupByLibrary.simpleMessage("Registrieren"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Registrieren Sie sich, um Ihre Notizen überall sicher zu synchronisieren und zu sichern",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Überspringen"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Sortieren nach"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Durchgestrichen"),
    "style": MessageLookupByLibrary.simpleMessage("Stil"),
    "subscript": MessageLookupByLibrary.simpleMessage("Tiefgestellt"),
    "success": MessageLookupByLibrary.simpleMessage("Erfolg"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "Einer der Werte erfüllt nicht die Datenbankregeln (Prüfbeschränkung).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "Die Spalte, auf die Sie zugreifen möchten, existiert nicht.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "Dieser Datensatz existiert bereits. Bitte verwenden Sie andere Werte.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Ein Datenbankfehler ist aufgetreten. Bitte versuchen Sie es erneut.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "Dieser Wert existiert bereits. Bitte verwenden Sie einen anderen (Duplikatschlüssel).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "Dieser Datensatz ist mit einem anderen verknüpft und kann nicht gelöscht/aktualisiert werden (Fremdschlüsselverletzung).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "Diese Funktion existiert nicht in der Datenbank.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "Eine Ihrer Eingaben ist zu lang. Bitte kürzen Sie sie und versuchen Sie es erneut.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "Ein interner Datenbankfehler ist aufgetreten. Bitte versuchen Sie es später erneut.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Ungültiges Datums- oder Zeitformat. Bitte verwenden Sie das richtige Format.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Ungültiger Eingabetyp. Bitte überprüfen Sie Ihre Daten.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Ungültige Anfrage. Bitte überprüfen Sie die eingegebenen Informationen.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "Sie haben keinen Zugriff auf diese Ressource.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "Sie haben keine Berechtigung für diese Aktion.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Sie sind nicht autorisiert. Bitte melden Sie sich zuerst an.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "Die angeforderte Ressource wurde nicht gefunden.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "Die Anfrage hat zu lange gedauert und wurde abgebrochen. Bitte versuchen Sie es erneut.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "Ein Pflichtfeld fehlt. Bitte füllen Sie alle erforderlichen Details aus.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "Zeilensicherheit hat diese Anfrage blockiert.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "Es gibt ein Problem mit der Datenbankabfrage (Syntaxfehler).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "Die Tabelle, auf die Sie zugreifen möchten, existiert nicht.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "Die Datenbank hat zu viele Verbindungen. Bitte versuchen Sie es später erneut.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Unerwarteter Datenbankfehler. Bitte versuchen Sie es später erneut.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Hochgestellt"),
    "syncNotes": MessageLookupByLibrary.simpleMessage(
      "Notizen synchronisieren",
    ),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Notizen immer mit der Cloud synchronisieren",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Synchronisiert"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("Textdatei (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("Design"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "Die Verbindung ist abgelaufen. Bitte versuchen Sie es erneut!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage(
      "Nicht kategorisiert",
    ),
    "underline": MessageLookupByLibrary.simpleMessage("Unterstrichen"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Ein unbekannter Fehler ist aufgetreten.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Ohne Titel"),
    "username": MessageLookupByLibrary.simpleMessage("Benutzername"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "Benutzername muss mit einem Buchstaben beginnen und darf nur Buchstaben und Zahlen enthalten",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Bitte geben Sie Ihren Benutzernamen ein",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "E-Mail bestätigen",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Falsches Passwort oder beschädigte Daten.",
    ),
  };
}
