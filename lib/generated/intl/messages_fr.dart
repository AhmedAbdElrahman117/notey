// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(seconds) => "Disponible dans ${seconds}s";

  static String m1(error) =>
      "Échec de l\'authentification biométrique : ${error}";

  static String m2(error) =>
      "Erreur interne : impossible de créer le répertoire d\'images : ${error}";

  static String m3(dbName) =>
      "Vous avez déjà ${dbName} enregistré sur cet appareil. Comment souhaitez-vous gérer les données du fichier importé ?";

  static String m4(dbName) => "Conflit détecté pour ${dbName}";

  static String m5(count) =>
      "${Intl.plural(count, one: 'Il y a 1 jour', other: 'Il y a ${count} jours')}";

  static String m6(result) => "Base de données fermée : ${result}";

  static String m7(result) =>
      "Colonne en double dans la base de données : ${result}";

  static String m8(result) => "Exception de base de données : ${result}";

  static String m9(result) => "La table n\'existe pas : ${result}";

  static String m10(result) =>
      "Échec de l\'ouverture de la base de données : ${result}";

  static String m11(result) => "Erreur de syntaxe SQL : ${result}";

  static String m12(result) => "Erreur de contrainte unique : ${result}";

  static String m13(message) => "Erreur de répertoire : ${message}";

  static String m14(message) => "Erreur du système de fichiers : ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: 'Il y a 1 heure', other: 'Il y a ${count} heures')}";

  static String m16(message) => "Erreur interne : ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: 'Il y a 1 minute', other: 'Il y a ${count} minutes')}";

  static String m18(count) =>
      "${Intl.plural(count, one: 'Il y a 1 mois', other: 'Il y a ${count} mois')}";

  static String m19(message) => "Erreur de plateforme : ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: 'Il y a 1 seconde', other: 'Il y a ${count} secondes')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("À propos de Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Compte créé avec succès",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Ajouter"),
    "addCategory": MessageLookupByLibrary.simpleMessage(
      "Ajouter une catégorie",
    ),
    "addNewCategory": MessageLookupByLibrary.simpleMessage(
      "Ajouter une catégorie",
    ),
    "addToFavorites": MessageLookupByLibrary.simpleMessage(
      "Ajouter aux favoris",
    ),
    "all": MessageLookupByLibrary.simpleMessage("Tout"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. Tous droits réservés.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Utilisez l\'empreinte digitale, le visage, le schéma ou le code PIN pour sécuriser l\'application.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("Croissant"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "Votre session de connexion est invalide. Veuillez vous reconnecter.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "Nous n\'avons pas pu nous connecter à Google. Veuillez réessayer.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Une erreur s\'est produite avec la connexion Google. Veuillez réessayer.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "La vérification a échoué. Veuillez compléter à nouveau le contrôle de sécurité.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Une erreur s\'est produite. Veuillez réessayer.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "Cet e-mail est déjà enregistré. Essayez de vous connecter.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "Cela ne ressemble pas à une adresse e-mail valide.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Cet e-mail n\'est pas autorisé pour l\'inscription. Veuillez en utiliser un autre.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Veuillez confirmer votre adresse e-mail avant de vous connecter. Vérifiez votre boîte de réception.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Échec de l\'authentification. Réessayez.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Ce compte Google est déjà lié à un autre utilisateur.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "E-mail ou mot de passe incorrect. Veuillez réessayer.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "Ce compte ne peut pas être lié manuellement. Veuillez vous connecter avec la méthode principale.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "Cette méthode de connexion n\'est pas prise en charge.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Trop de tentatives. Veuillez vérifier votre boîte de réception ou réessayer plus tard.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Trop de tentatives de connexion. Veuillez patienter avant de réessayer.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Trop de tentatives SMS. Veuillez attendre quelques minutes et réessayer.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "Ce numéro de téléphone est déjà enregistré.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "Cette méthode d\'inscription n\'est pas disponible. Veuillez en choisir une autre.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Veuillez vérifier votre e-mail Google avant de vous connecter.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Veuillez vous reconnecter pour continuer.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "Votre session a expiré. Veuillez vous reconnecter.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "Votre session a expiré. Veuillez vous reconnecter.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "Nous n\'avons pas trouvé votre session de connexion. Veuillez vous reconnecter.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Les inscriptions sont actuellement désactivées. Veuillez contacter le support.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Authentifiez-vous pour modifier les paramètres de verrouillage",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Une erreur s\'est produite lors de la création de votre compte. Veuillez réessayer.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "Un compte avec cet e-mail ou ce téléphone existe déjà. Veuillez vous connecter.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Votre compte a été bloqué. Veuillez contacter le support pour obtenir de l\'aide.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "Nous n\'avons pas trouvé de compte avec ces informations.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Certaines informations saisies ne sont pas valides. Veuillez vérifier et réessayer.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "Votre mot de passe est trop faible. Utilisez un mot de passe plus fort avec des lettres, des chiffres et des symboles.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Arrière-plan"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Erreur d\'authentification biométrique",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Veuillez vous authentifier pour ouvrir l\'application",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Trop de tentatives échouées. La biométrie est temporairement verrouillée. Veuillez réessayer plus tard.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "L\'authentification biométrique n\'est pas disponible sur cet appareil",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "L\'authentification biométrique n\'est pas disponible sur cet appareil.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "Aucune biométrie configurée. Veuillez enregistrer une empreinte digitale ou un identifiant facial dans les paramètres de votre appareil.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "L\'authentification biométrique n\'est pas prise en charge sur ce système d\'exploitation.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "Le code d\'accès de l\'appareil n\'est pas défini. Veuillez configurer un code PIN, un schéma ou un mot de passe dans les paramètres de votre appareil.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Trop de tentatives échouées. La biométrie est désactivée. Veuillez déverrouiller avec votre code PIN/mot de passe pour la réinitialiser.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "L\'authentification biométrique a échoué en raison d\'une erreur inconnue.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Gras"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Liste à puces"),
    "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
    "cancelImport": MessageLookupByLibrary.simpleMessage(
      "Annuler l\'importation",
    ),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Catégories"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Vous pouvez gérer vos catégories ici.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Catégories"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage(
      "Catégorie supprimée",
    ),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Le nom de la catégorie ne peut pas être vide",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage(
      "Nom de la catégorie",
    ),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage(
      "Catégorie mise à jour",
    ),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Modifier le nom de la catégorie",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage(
      "Changer le mot de passe",
    ),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Modifiez le mot de passe de votre compte pour qu\'il contienne les éléments suivants",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nVeuillez vérifier votre boîte de réception et votre dossier spam.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Liste de contrôle"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Choisissez votre langue préférée",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Bloc de code"),
    "color": MessageLookupByLibrary.simpleMessage("Couleur"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage(
      "Confirmer le mot de passe",
    ),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Confirmez votre mot de passe",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "Au moins 6 caractères",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "Au moins 2 chiffres",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "Au moins 1 caractère spécial",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "Au moins 1 lettre majuscule",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Créer un compte"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Créez une nouvelle catégorie pour organiser vos notes.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage(
      "Créer un mot de passe",
    ),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Pour renforcer la sécurité de vos notes, veuillez créer un mot de passe.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Remarque : vous devez mémoriser ce mot de passe car il ne peut pas être récupéré s\'il est perdu.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Mode sombre"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Supprimer"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage(
      "Supprimer la catégorie",
    ),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "Êtes-vous sûr de vouloir supprimer cette catégorie ? Cette action est irréversible.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Supprimer la note"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Êtes-vous sûr de vouloir supprimer cette note ?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Décroissant"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Vous n\'avez pas reçu le code ?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage(
      "Désactiver le verrouillage",
    ),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Désactiver le mode sombre",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Vous n\'avez pas de compte ?",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Modifier"),
    "editCategory": MessageLookupByLibrary.simpleMessage(
      "Modifier la catégorie",
    ),
    "email": MessageLookupByLibrary.simpleMessage("E-mail"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("E-mail requis !"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage(
      "Activer le verrouillage",
    ),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Activer le mode sombre",
    ),
    "enterOtp": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer le code OTP",
    ),
    "enterPassword": MessageLookupByLibrary.simpleMessage(
      "Entrer le mot de passe",
    ),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre mot de passe pour accéder à ce fichier.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage(
      "Entrez votre e-mail",
    ),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Entrez votre mot de passe",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Entrez votre nom d\'utilisateur",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Erreur"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Exporter les notes"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Exporté avec succès !",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Exporter en"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Échec de la réinitialisation du mot de passe. Veuillez réessayer.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "Échec de l\'envoi du code OTP. Veuillez réessayer plus tard !",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "Mode favoris activé",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "Une exception de fichier s\'est produite.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Filtrer les catégories",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Sélectionnez une option de filtre pour vos catégories.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Catégorie"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("Date de création"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage(
      "Date de création",
    ),
    "filterName": MessageLookupByLibrary.simpleMessage("Nom"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Titre"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Veuillez respecter les contraintes du mot de passe",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Couleur de police"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Taille de police"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage(
      "Mot de passe oublié ?",
    ),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Mot de passe oublié ?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Une erreur s\'est produite avec le serveur. Veuillez réessayer.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "Le point de terminaison du serveur n\'existe pas.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "Entrée invalide envoyée au serveur.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "Vous n\'avez pas la permission d\'effectuer cette action.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "Vous n\'êtes pas connecté. Veuillez vous authentifier.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Une erreur serveur s\'est produite. Réessayez plus tard.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "La requête a expiré. Veuillez réessayer.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Trop de requêtes. Veuillez ralentir.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Commencer"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "La connexion a été annulée. Veuillez réessayer si vous souhaitez continuer.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "Il y a un problème avec la configuration de connexion Google de l\'application. Veuillez contacter le support.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "Le processus de connexion a été interrompu. Veuillez réessayer.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "La connexion Google n\'est pas configurée correctement. Veuillez réessayer plus tard.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "La connexion Google est actuellement indisponible sur cet appareil.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Une erreur s\'est produite lors de la connexion. Veuillez réessayer.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "Ce compte Google ne correspond pas à l\'utilisateur attendu. Essayez d\'utiliser un autre compte.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Utilisateur invité"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Image"),
    "images": MessageLookupByLibrary.simpleMessage("Images"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Importer des notes"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Importé avec succès !",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("E-mail non valide"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("Fichier invalide"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Code OTP invalide"),
    "italic": MessageLookupByLibrary.simpleMessage("Italique"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Arabe"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Chinois"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("Anglais"),
    "langFrench": MessageLookupByLibrary.simpleMessage("Français"),
    "langGerman": MessageLookupByLibrary.simpleMessage("Allemand"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Hindi"),
    "langItalian": MessageLookupByLibrary.simpleMessage("Italien"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Japonais"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Coréen"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Russe"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("Espagnol"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Turc"),
    "language": MessageLookupByLibrary.simpleMessage("Langue"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Choisissez votre langue préférée",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Connexion"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Connectez-vous pour synchroniser et sauvegarder vos notes en toute sécurité sur tous vos appareils",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Connectez-vous pour synchroniser vos notes sur tous vos appareils",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Déconnexion"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "Êtes-vous sûr de vouloir vous déconnecter ?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Fusionner avec les données existantes",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("Plus"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Veuillez vérifier votre connexion Internet et réessayer.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Suivant"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Ajoutez des catégories pour mieux organiser vos notes.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "Aucune catégorie ajoutée",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("Aucun contenu"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage(
      "Aucune note favorite",
    ),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "Vous n\'avez pas encore ajouté de notes aux favoris.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage(
      "Aucun fichier sélectionné.",
    ),
    "noNotesYet": MessageLookupByLibrary.simpleMessage(
      "Aucune note pour le moment",
    ),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "Appuyez sur le bouton + pour créer votre première note.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "Aucun répertoire de sortie sélectionné",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "Aucun mot de passe fourni.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage(
      "Aucun résultat trouvé",
    ),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Non disponible"),
    "notSynced": MessageLookupByLibrary.simpleMessage("Non synchronisé"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Note ajoutée"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Contenu de la note"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Titre de la note"),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Liste numérotée"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Capturez et organisez vos pensées hors ligne, et synchronisez-les sur tous vos appareils",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Ajoutez des images, des mémos vocaux et exportez vos notes en PDF, Word ou texte pour une flexibilité maximale",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "Toutes les notes sont protégées par un chiffrement de bout en bout — vous seul pouvez les lire",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Vos notes, toujours avec vous",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "Plus que du texte",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "Votre vie privée compte",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage(
      "Ou connectez-vous avec",
    ),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "Nous avons envoyé un code de vérification à ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Mot de passe"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Mot de passe modifié avec succès",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "Confirmation du mot de passe requise !",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "Le mot de passe doit contenir au moins 6 caractères",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "Le mot de passe ne peut pas contenir d\'espaces",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Mot de passe requis !",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Les mots de passe ne correspondent pas",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage(
      "Une exception de chemin s\'est produite.",
    ),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("Fichier PDF (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Choisir une langue"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("Veuillez patienter..."),
    "previous": MessageLookupByLibrary.simpleMessage("Précédent"),
    "print": MessageLookupByLibrary.simpleMessage("Imprimer"),
    "remove": MessageLookupByLibrary.simpleMessage("Supprimer"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Retirer des favoris",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Supprimer l\'image"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "Êtes-vous sûr de vouloir supprimer cette image de la note ?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Remplacer les données existantes",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Renvoyer le code"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Entrez votre adresse e-mail ci-dessous pour recevoir un code OTP pour réinitialiser votre mot de passe",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Titre ou contenu de la note...",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage(
      "Sélectionner une catégorie",
    ),
    "sendOtp": MessageLookupByLibrary.simpleMessage("Envoyer le code OTP"),
    "settings": MessageLookupByLibrary.simpleMessage("Paramètres"),
    "share": MessageLookupByLibrary.simpleMessage("Partager"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Erreur lors du partage de la note",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("Échec du partage"),
    "signUp": MessageLookupByLibrary.simpleMessage("S\'inscrire"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Inscrivez-vous pour synchroniser et sauvegarder vos notes partout en toute sécurité",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Passer"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Trier par"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Barré"),
    "style": MessageLookupByLibrary.simpleMessage("Style"),
    "subscript": MessageLookupByLibrary.simpleMessage("Indice"),
    "success": MessageLookupByLibrary.simpleMessage("Succès"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "L\'une des valeurs ne respecte pas les règles de la base de données (contrainte de vérification).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "La colonne à laquelle vous essayez d\'accéder n\'existe pas.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "Cet enregistrement existe déjà. Veuillez utiliser des valeurs différentes.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Une erreur s\'est produite avec la base de données. Veuillez réessayer.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "Cette valeur existe déjà. Veuillez en utiliser une autre (clé en double).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "Cet enregistrement est lié à un autre et ne peut pas être supprimé/modifié (violation de clé étrangère).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "Cette fonction n\'existe pas dans la base de données.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "L\'une de vos entrées est trop longue. Veuillez la raccourcir et réessayer.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "Une erreur interne de base de données s\'est produite. Veuillez réessayer plus tard.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Format de date ou d\'heure invalide. Veuillez utiliser le bon format.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Type d\'entrée invalide. Veuillez vérifier vos données.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Requête invalide. Veuillez vérifier les informations saisies.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "Vous n\'avez pas accès à cette ressource.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "Vous n\'avez pas la permission d\'effectuer cette action.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "Vous n\'êtes pas autorisé. Veuillez d\'abord vous connecter.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "La ressource demandée n\'a pas été trouvée.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "La requête a pris trop de temps et a été annulée. Veuillez réessayer.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "Un champ obligatoire est manquant. Veuillez remplir tous les détails requis.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "La sécurité au niveau des lignes a bloqué cette requête.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "Il y a un problème avec la requête de base de données (erreur de syntaxe).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "La table à laquelle vous essayez d\'accéder n\'existe pas.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "La base de données a trop de connexions. Veuillez réessayer plus tard.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Erreur de base de données inattendue. Veuillez réessayer plus tard.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Exposant"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("Synchroniser les notes"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Toujours synchroniser les notes avec le cloud",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Synchronisé"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("Fichier texte (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("Thème"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "La connexion a expiré. Veuillez réessayer !",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("Non catégorisé"),
    "underline": MessageLookupByLibrary.simpleMessage("Souligné"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Une erreur inconnue s\'est produite.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Sans titre"),
    "username": MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "Le nom d\'utilisateur doit commencer par une lettre et ne contenir que des lettres et des chiffres",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre nom d\'utilisateur",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "Vérifiez votre e-mail",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Mot de passe incorrect ou données corrompues.",
    ),
  };
}
