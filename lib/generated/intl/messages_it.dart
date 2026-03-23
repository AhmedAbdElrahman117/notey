// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static String m0(seconds) => "Disponibile tra ${seconds}s";

  static String m1(error) => "Autenticazione biometrica fallita: ${error}";

  static String m2(error) =>
      "Errore interno: Impossibile creare la directory delle immagini: ${error}";

  static String m3(dbName) =>
      "Hai già ${dbName} memorizzate su questo dispositivo. Come vuoi gestire i dati dal file importato?";

  static String m4(dbName) => "Conflitto ${dbName} rilevato";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 giorno fa', other: '${count} giorni fa')}";

  static String m6(result) => "Il database è chiuso: ${result}";

  static String m7(result) => "Il database ha una colonna duplicata: ${result}";

  static String m8(result) => "Eccezione del database: ${result}";

  static String m9(result) => "La tabella del database non esiste: ${result}";

  static String m10(result) => "Impossibile aprire il database: ${result}";

  static String m11(result) => "Errore di sintassi SQL: ${result}";

  static String m12(result) => "Errore di vincolo univoco: ${result}";

  static String m13(message) => "Errore directory: ${message}";

  static String m14(message) => "Errore del file system: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1 ora fa', other: '${count} ore fa')}";

  static String m16(message) => "Errore interno: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1 minuto fa', other: '${count} minuti fa')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1 mese fa', other: '${count} mesi fa')}";

  static String m19(message) => "Errore piattaforma: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1 secondo fa', other: '${count} secondi fa')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("Informazioni su Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Account creato con successo",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Aggiungi"),
    "addCategory": MessageLookupByLibrary.simpleMessage("Aggiungi categoria"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage(
      "Aggiungi nuova categoria",
    ),
    "addToFavorites": MessageLookupByLibrary.simpleMessage(
      "Aggiungi ai preferiti",
    ),
    "all": MessageLookupByLibrary.simpleMessage("Tutte"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. Tutti i diritti riservati.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Usa impronta digitale, viso, sequenza o PIN per proteggere l\'app.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("Crescente"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "La tua sessione di accesso non è valida. Per favore accedi di nuovo.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Non siamo riusciti a connetterci con Google. Per favore riprova.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Qualcosa è andato storto durante l\'accesso con Google. Per favore riprova.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "Verifica fallita. Per favore completa nuovamente il controllo di sicurezza.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore. Per favore riprova.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "Questa email è già registrata. Prova ad accedere.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Non sembra un indirizzo email valido.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Questa email non è autorizzata alla registrazione. Per favore usane un\'altra.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Per favore conferma la tua email prima di accedere. Controlla la tua casella di posta.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Autenticazione fallita. Riprova.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Questo account Google è già collegato a un altro utente.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Email o password errata. Per favore riprova.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "Questo account non può essere collegato manualmente. Per favore accedi con il tuo metodo principale.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "Questo metodo di accesso non è supportato.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Troppi tentativi. Per favore controlla la tua casella di posta o riprova più tardi.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Troppi tentativi di accesso. Per favore attendi un momento prima di riprovare.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Troppi tentativi SMS. Per favore attendi qualche minuto e riprova.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "Questo numero di telefono è già registrato.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "Questo metodo di registrazione non è disponibile. Per favore scegline un altro.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Per favore verifica la tua email Google prima di accedere.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Per favore accedi di nuovo per continuare.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "La tua sessione è scaduta. Per favore accedi di nuovo.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "La tua sessione è scaduta. Per favore accedi di nuovo.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "Non abbiamo trovato la tua sessione di accesso. Per favore accedi di nuovo.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Le registrazioni sono attualmente disabilitate. Per favore contatta il supporto.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Autenticati per modificare le impostazioni del blocco app",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore durante la creazione del tuo account. Per favore riprova.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Esiste già un account con questa email o telefono. Per favore accedi.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Il tuo account è stato sospeso. Per favore contatta il supporto per assistenza.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "Non abbiamo trovato un account con questi dettagli.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Alcuni dettagli inseriti non sono validi. Per favore controlla e riprova.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "La tua password è troppo debole. Usane una più forte con lettere, numeri e simboli.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Sfondo"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Errore di autenticazione biometrica",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Per favore autenticati per aprire l\'app",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Troppi tentativi falliti. La biometria è temporaneamente bloccata. Per favore riprova più tardi.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "L\'autenticazione biometrica non è disponibile su questo dispositivo",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "L\'autenticazione biometrica non è disponibile su questo dispositivo.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "Nessuna biometria configurata. Per favore registra un\'impronta digitale o Face ID nelle impostazioni del dispositivo.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "L\'autenticazione biometrica non è supportata su questo sistema operativo.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "Il codice del dispositivo non è impostato. Per favore configura un PIN di sicurezza, una sequenza o una password nelle impostazioni del dispositivo.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Troppi tentativi falliti. La biometria è disabilitata. Per favore sblocca con PIN/password per reimpostare.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "L\'autenticazione biometrica è fallita a causa di un errore sconosciuto.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Grassetto"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Elenco puntato"),
    "cancel": MessageLookupByLibrary.simpleMessage("Annulla"),
    "cancelImport": MessageLookupByLibrary.simpleMessage(
      "Annulla importazione",
    ),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Categorie"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Puoi gestire le tue categorie qui.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Categorie"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage(
      "Categoria eliminata",
    ),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Il nome della categoria non può essere vuoto",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("Nome categoria"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "Categoria aggiornata",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Cambia nome categoria",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("Cambia password"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Cambia la password del tuo account per includere",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nPer favore controlla la tua casella di posta e la cartella spam.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Checklist"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Scegli la tua lingua preferita",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Blocco di codice"),
    "color": MessageLookupByLibrary.simpleMessage("Colore"),
    "confirm": MessageLookupByLibrary.simpleMessage("Conferma"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "Conferma password",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Conferma la tua password",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "Almeno 6 caratteri",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "Almeno 2 numeri",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "Almeno 1 carattere speciale",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "Almeno 1 lettera maiuscola",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Crea account"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Crea una nuova categoria per organizzare le tue note.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("Crea password"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Per migliorare la sicurezza delle tue note, per favore crea una password.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Nota: Devi ricordare questa password poiché non può essere recuperata se dimenticata.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Modalità scura"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Elimina"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("Elimina categoria"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sei sicuro di voler eliminare questa categoria? Questa azione non può essere annullata.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Elimina nota"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sei sicuro di voler eliminare questa nota?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Decrescente"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Non hai ricevuto il codice?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage(
      "Disabilita blocco app",
    ),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Disabilita modalità scura",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Non hai un account?",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Modifica"),
    "editCategory": MessageLookupByLibrary.simpleMessage("Modifica categoria"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("Email richiesta!"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("Abilita blocco app"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Abilita modalità scura",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage(
      "Per favore inserisci il codice OTP",
    ),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Inserisci password"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Per favore inserisci la tua password per accedere a questo file.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "Inserisci la tua email",
    ),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Inserisci la tua password",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Inserisci il tuo nome utente",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Errore"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Esporta note"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Esportato con successo!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Esporta come"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Reimpostazione password fallita. Per favore riprova.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "Invio OTP fallito. Per favore riprova più tardi!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "Modalità preferiti ATTIVA",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore di file.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Filtra categorie",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Scegli un\'opzione di filtro per le tue categorie.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Categoria"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("Creato il"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("Creato il"),
    "filterName": MessageLookupByLibrary.simpleMessage("Nome"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Titolo"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Per favore segui i requisiti della password",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Colore carattere"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Dimensione carattere"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage(
      "Password dimenticata?",
    ),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Hai dimenticato la password?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore del server. Per favore riprova.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "L\'endpoint del server non esiste.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "Input non valido inviato al server.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "Non hai il permesso per eseguire questa azione.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "Non hai effettuato l\'accesso. Per favore autenticati.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore del server. Riprova più tardi.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "La richiesta è scaduta. Per favore riprova.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Troppe richieste. Per favore rallenta.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Inizia"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "L\'accesso è stato annullato. Per favore riprova se vuoi continuare.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "C\'è un problema con la configurazione dell\'accesso Google dell\'app. Per favore contatta il supporto.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "Il processo di accesso è stato interrotto. Per favore riprova.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "L\'accesso Google non è configurato correttamente. Per favore riprova più tardi.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "L\'accesso Google non è attualmente disponibile su questo dispositivo.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore durante l\'accesso. Per favore riprova.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "Questo account Google non corrisponde all\'utente previsto. Prova un altro account.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Utente ospite"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Immagine"),
    "images": MessageLookupByLibrary.simpleMessage("Immagini"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Importa note"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Importato con successo!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("Email non valida"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("File non valido"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Codice OTP non valido"),
    "italic": MessageLookupByLibrary.simpleMessage("Corsivo"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Arabo"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Cinese"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("Inglese"),
    "langFrench": MessageLookupByLibrary.simpleMessage("Francese"),
    "langGerman": MessageLookupByLibrary.simpleMessage("Tedesco"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Hindi"),
    "langItalian": MessageLookupByLibrary.simpleMessage("Italiano"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Giapponese"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Coreano"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Russo"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("Spagnolo"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Turco"),
    "language": MessageLookupByLibrary.simpleMessage("Lingua"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Scegli la tua lingua preferita",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Accedi"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Accedi per sincronizzare e salvare le tue note in modo sicuro su tutti i dispositivi",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Accedi per sincronizzare le tue note su tutti i dispositivi",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Esci"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sei sicuro di voler uscire?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Unisci con dati esistenti",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("Altro"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Per favore controlla la tua connessione internet e riprova.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Avanti"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Aggiungi categorie per organizzare meglio le tue note.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "Ancora nessuna categoria aggiunta",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("Nessun contenuto"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage(
      "Nessun preferito",
    ),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "Non hai ancora aggiunto nessuna nota ai preferiti.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage(
      "Nessun file selezionato.",
    ),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("Ancora nessuna nota"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "Tocca il pulsante + per creare la tua prima nota.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "Nessuna directory di output selezionata",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "Nessuna password fornita.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "Nessun risultato trovato",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Non disponibile"),
    "notSynced": MessageLookupByLibrary.simpleMessage("Non sincronizzato"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Nota aggiunta"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Contenuto nota"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Titolo nota"),
    "notes": MessageLookupByLibrary.simpleMessage("Note"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Elenco numerato"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Cattura e organizza i tuoi pensieri offline, sincronizza su tutti i dispositivi senza sforzo",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Aggiungi immagini, note vocali ed esporta le note in PDF, Word o testo per la massima flessibilità",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "Tutte le note sono protette con crittografia end-to-end — solo tu puoi leggerle",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Le tue note, sempre con te",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "Più di solo testo",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "La tua privacy conta",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("Oppure accedi con"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "Abbiamo inviato un codice di verifica a ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Password cambiata con successo",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "Conferma password richiesta!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "La password deve avere almeno 6 caratteri",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "La password non deve contenere spazi",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Password richiesta!",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Le password non corrispondono",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore di percorso.",
    ),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("File PDF (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Scegli lingua"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("Per favore attendi..."),
    "previous": MessageLookupByLibrary.simpleMessage("Indietro"),
    "print": MessageLookupByLibrary.simpleMessage("Stampa"),
    "remove": MessageLookupByLibrary.simpleMessage("Rimuovi"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Rimuovi dai preferiti",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Rimuovi immagine"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "Sei sicuro di voler rimuovere questa immagine dalla nota?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Sostituisci dati esistenti",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Reinvia codice"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Inserisci la tua email qui sotto per ricevere un codice OTP per reimpostare la password",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Titolo o contenuto della nota...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage(
      "Seleziona categoria",
    ),
    "sendOtp": MessageLookupByLibrary.simpleMessage("Invia OTP"),
    "settings": MessageLookupByLibrary.simpleMessage("Impostazioni"),
    "share": MessageLookupByLibrary.simpleMessage("Condividi"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Errore durante la condivisione della nota",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("Condivisione fallita"),
    "signUp": MessageLookupByLibrary.simpleMessage("Registrati"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Registrati per sincronizzare e salvare le tue note in modo sicuro ovunque",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Salta"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Ordina per"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Barrato"),
    "style": MessageLookupByLibrary.simpleMessage("Stile"),
    "subscript": MessageLookupByLibrary.simpleMessage("Pedice"),
    "success": MessageLookupByLibrary.simpleMessage("Successo"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "Uno dei valori non soddisfa le regole del database (vincolo di controllo).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "La colonna a cui stai cercando di accedere non esiste.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "Questo record esiste già. Per favore usa valori diversi.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore del database. Per favore riprova.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "Questo valore esiste già. Per favore usane un altro (chiave duplicata).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "Questo record è collegato a un altro e non può essere eliminato/aggiornato (violazione chiave esterna).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "Questa funzione non esiste nel database.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "Uno dei tuoi input è troppo lungo. Per favore accorcialo e riprova.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore interno del database. Per favore riprova più tardi.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Formato data o ora non valido. Per favore usa il formato corretto.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Tipo di input non valido. Per favore controlla i tuoi dati.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Richiesta non valida. Per favore controlla le informazioni inserite.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "Non hai accesso a questa risorsa.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "Non hai il permesso per eseguire questa azione.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Non sei autorizzato. Per favore accedi prima.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "La risorsa richiesta non è stata trovata.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "La richiesta ha impiegato troppo tempo ed è stata annullata. Per favore riprova.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "Manca un campo obbligatorio. Per favore compila tutti i dettagli richiesti.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "La sicurezza a livello di riga ha bloccato questa richiesta.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "C\'è un problema con la query del database (errore di sintassi).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "La tabella a cui stai cercando di accedere non esiste.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "Il database ha troppe connessioni. Per favore riprova più tardi.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Errore del database imprevisto. Per favore riprova più tardi.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Apice"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("Sincronizza note"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Sincronizza sempre le note con il cloud",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Sincronizzato"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("File di testo (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("Tema"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "La connessione è scaduta. Per favore riprova!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("Senza categoria"),
    "underline": MessageLookupByLibrary.simpleMessage("Sottolineato"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Si è verificato un errore sconosciuto.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Senza titolo"),
    "username": MessageLookupByLibrary.simpleMessage("Nome utente"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "Il nome utente deve iniziare con una lettera e contenere solo lettere e numeri",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Per favore inserisci il tuo nome utente",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "Verifica la tua email",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Password errata o dati corrotti.",
    ),
  };
}
