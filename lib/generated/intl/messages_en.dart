// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(seconds) => "Available in ${seconds}s";

  static String m1(error) => "Biometric authentication failed: ${error}";

  static String m2(error) =>
      "Internal Error: Can\'t create images directory: ${error}";

  static String m3(dbName) =>
      "You already have ${dbName} saved on this device. How would you like to handle the data from the imported file?";

  static String m4(dbName) => "${dbName} Conflict Detected";

  static String m5(count) =>
      "${Intl.plural(count, one: '1 day ago', other: '${count} days ago')}";

  static String m6(result) => "Database is closed: ${result}";

  static String m7(result) => "Database has duplicate column: ${result}";

  static String m8(result) => "Database exception: ${result}";

  static String m9(result) => "Database table does not exist: ${result}";

  static String m10(result) => "Database failed to open: ${result}";

  static String m11(result) => "Syntax error in SQL query: ${result}";

  static String m12(result) => "Unique constraint error: ${result}";

  static String m13(message) => "Directory Error: ${message}";

  static String m14(message) => "File System Error: ${message}";

  static String m15(count) =>
      "${Intl.plural(count, one: '1 hour ago', other: '${count} hours ago')}";

  static String m16(message) => "Internal Error: ${message}";

  static String m17(count) =>
      "${Intl.plural(count, one: '1 minute ago', other: '${count} minutes ago')}";

  static String m18(count) =>
      "${Intl.plural(count, one: '1 month ago', other: '${count} months ago')}";

  static String m19(message) => "Platform Error: ${message}";

  static String m20(count) =>
      "${Intl.plural(count, one: '1 second ago', other: '${count} seconds ago')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutNotey": MessageLookupByLibrary.simpleMessage("About Notey"),
    "accountCreatedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Account Created Successfully",
    ),
    "add": MessageLookupByLibrary.simpleMessage("Add"),
    "addCategory": MessageLookupByLibrary.simpleMessage("Add Category"),
    "addNewCategory": MessageLookupByLibrary.simpleMessage("Add New Category"),
    "addToFavorites": MessageLookupByLibrary.simpleMessage("Add to Favorites"),
    "all": MessageLookupByLibrary.simpleMessage("All"),
    "appLegalese": MessageLookupByLibrary.simpleMessage(
      "© 2025 Notey. All rights reserved.",
    ),
    "appLockSubtitle": MessageLookupByLibrary.simpleMessage(
      "Use fingerprint, face, Pattern or PIN to secure the app.",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("Notey"),
    "appVersion": MessageLookupByLibrary.simpleMessage("1.0.0"),
    "ascending": MessageLookupByLibrary.simpleMessage("Ascending"),
    "authBadJwt": MessageLookupByLibrary.simpleMessage(
      "Your login session is invalid. Please sign in again.",
    ),
    "authBadOauthCallback": MessageLookupByLibrary.simpleMessage(
      "We couldn\'t connect to Google. Please try again.",
    ),
    "authBadOauthState": MessageLookupByLibrary.simpleMessage(
      "Something went wrong with Google login. Please try again.",
    ),
    "authCaptchaFailed": MessageLookupByLibrary.simpleMessage(
      "Verification failed. Please complete the security check again.",
    ),
    "authDefaultError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong. Please try again.",
    ),
    "authEmailExists": MessageLookupByLibrary.simpleMessage(
      "This email is already registered. Try logging in instead.",
    ),
    "authEmailInvalid": MessageLookupByLibrary.simpleMessage(
      "That doesn\'t look like a valid email address.",
    ),
    "authEmailNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "This email is not allowed for sign up. Please use a different one.",
    ),
    "authEmailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Please confirm your email address before logging in. Check your inbox.",
    ),
    "authFailed": MessageLookupByLibrary.simpleMessage(
      "Authentication failed. Try again.",
    ),
    "authIdentityAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "This Google account is already linked to another user.",
    ),
    "authInvalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Incorrect email or password. Please try again.",
    ),
    "authManualLinkingDisabled": MessageLookupByLibrary.simpleMessage(
      "This account cannot be linked manually. Please log in using the main method.",
    ),
    "authOauthProviderNotSupported": MessageLookupByLibrary.simpleMessage(
      "This login method is not supported.",
    ),
    "authOverEmailRateLimit": MessageLookupByLibrary.simpleMessage(
      "Too many attempts. Please check your inbox or try again later.",
    ),
    "authOverRequestRateLimit": MessageLookupByLibrary.simpleMessage(
      "Too many login attempts. Please wait a bit before trying again.",
    ),
    "authOverSmsRateLimit": MessageLookupByLibrary.simpleMessage(
      "Too many SMS attempts. Please wait a few minutes and try again.",
    ),
    "authPhoneExists": MessageLookupByLibrary.simpleMessage(
      "This phone number is already registered.",
    ),
    "authProviderDisabled": MessageLookupByLibrary.simpleMessage(
      "This sign up method is not available. Please choose another.",
    ),
    "authProviderEmailNeedsVerification": MessageLookupByLibrary.simpleMessage(
      "Please verify your Google email before logging in.",
    ),
    "authReauthenticationNeeded": MessageLookupByLibrary.simpleMessage(
      "Please log in again to continue.",
    ),
    "authRefreshTokenNotFound": MessageLookupByLibrary.simpleMessage(
      "Your session has expired. Please log in again.",
    ),
    "authSessionExpired": MessageLookupByLibrary.simpleMessage(
      "Your session expired. Please log in again.",
    ),
    "authSessionNotFound": MessageLookupByLibrary.simpleMessage(
      "We couldn\'t find your login session. Please sign in again.",
    ),
    "authSignupDisabled": MessageLookupByLibrary.simpleMessage(
      "Sign ups are currently disabled. Please contact support.",
    ),
    "authToChangeAppLock": MessageLookupByLibrary.simpleMessage(
      "Authenticate to change app lock settings",
    ),
    "authUnexpectedFailure": MessageLookupByLibrary.simpleMessage(
      "Something went wrong while creating your account. Please try again.",
    ),
    "authUserAlreadyExists": MessageLookupByLibrary.simpleMessage(
      "An account with this email or phone already exists. Please log in.",
    ),
    "authUserBanned": MessageLookupByLibrary.simpleMessage(
      "Your account has been blocked. Please contact support for help.",
    ),
    "authUserNotFound": MessageLookupByLibrary.simpleMessage(
      "We couldn\'t find an account with these details.",
    ),
    "authValidationFailed": MessageLookupByLibrary.simpleMessage(
      "Some of the details you entered are not valid. Please check and try again.",
    ),
    "authWeakPassword": MessageLookupByLibrary.simpleMessage(
      "Your password is too weak. Please use a stronger one with letters, numbers, and symbols.",
    ),
    "availableInSeconds": m0,
    "background": MessageLookupByLibrary.simpleMessage("Background"),
    "biometricAuthError": MessageLookupByLibrary.simpleMessage(
      "Biometric authentication error",
    ),
    "biometricAuthFailed": m1,
    "biometricAuthReason": MessageLookupByLibrary.simpleMessage(
      "Please authenticate to open the app",
    ),
    "biometricLockedOut": MessageLookupByLibrary.simpleMessage(
      "Too many failed attempts. Biometrics are temporarily locked. Please try again later.",
    ),
    "biometricNotAvailable": MessageLookupByLibrary.simpleMessage(
      "Biometric authentication not available for this device",
    ),
    "biometricNotAvailableDevice": MessageLookupByLibrary.simpleMessage(
      "Biometric authentication is not available on this device.",
    ),
    "biometricNotEnrolled": MessageLookupByLibrary.simpleMessage(
      "No biometrics set up. Please register a fingerprint or face ID in your device settings.",
    ),
    "biometricOtherOS": MessageLookupByLibrary.simpleMessage(
      "Biometric authentication is not supported on this operating system.",
    ),
    "biometricPasscodeNotSet": MessageLookupByLibrary.simpleMessage(
      "Device passcode is not set. Please configure a security pin, pattern, or password in your device settings.",
    ),
    "biometricPermanentlyLockedOut": MessageLookupByLibrary.simpleMessage(
      "Too many failed attempts. Biometrics are disabled. Please unlock with your PIN/Password to reset them.",
    ),
    "biometricUnknownError": MessageLookupByLibrary.simpleMessage(
      "Biometric authentication failed due to an unknown error.",
    ),
    "bold": MessageLookupByLibrary.simpleMessage("Bold"),
    "bulletList": MessageLookupByLibrary.simpleMessage("Bullet List"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "cancelImport": MessageLookupByLibrary.simpleMessage("Cancel Import"),
    "cannotCreateImagesDirectory": m2,
    "categories": MessageLookupByLibrary.simpleMessage("Categories"),
    "categoriesSubtitle": MessageLookupByLibrary.simpleMessage(
      "You can manage your categories here.",
    ),
    "categoriesTitle": MessageLookupByLibrary.simpleMessage("Categories"),
    "categoryDeleted": MessageLookupByLibrary.simpleMessage("Category Deleted"),
    "categoryNameEmpty": MessageLookupByLibrary.simpleMessage(
      "Category name cannot be empty",
    ),
    "categoryNameHint": MessageLookupByLibrary.simpleMessage("Category Name"),
    "categoryUpdated": MessageLookupByLibrary.simpleMessage("Category Updated"),
    "changeCategoryName": MessageLookupByLibrary.simpleMessage(
      "Change Category name",
    ),
    "changePassword": MessageLookupByLibrary.simpleMessage("Change Password"),
    "changePasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Change your account password to contain the following",
    ),
    "checkInboxAndSpam": MessageLookupByLibrary.simpleMessage(
      "\nPlease check your inbox and spam folder.",
    ),
    "checklist": MessageLookupByLibrary.simpleMessage("Checklist"),
    "choosePreferredLanguage": MessageLookupByLibrary.simpleMessage(
      "Choose your prefered language",
    ),
    "codeBlock": MessageLookupByLibrary.simpleMessage("Code Block"),
    "color": MessageLookupByLibrary.simpleMessage("Color"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirmPassword": MessageLookupByLibrary.simpleMessage("Confirm Password"),
    "confirmYourPassword": MessageLookupByLibrary.simpleMessage(
      "Confirm your Password",
    ),
    "conflictDescription": m3,
    "conflictDetected": m4,
    "constraintLength": MessageLookupByLibrary.simpleMessage(
      "At least 6 characters",
    ),
    "constraintNumbers": MessageLookupByLibrary.simpleMessage(
      "At least 2 numbers",
    ),
    "constraintSpecialChar": MessageLookupByLibrary.simpleMessage(
      "At least 1 special character",
    ),
    "constraintUppercase": MessageLookupByLibrary.simpleMessage(
      "At least 1 uppercase letter",
    ),
    "createAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
    "createCategoryDescription": MessageLookupByLibrary.simpleMessage(
      "Create a new category to organize your notes.",
    ),
    "createPassword": MessageLookupByLibrary.simpleMessage("Create password"),
    "createPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "To enhance the security of your notes, please create a password.",
    ),
    "createPasswordNote": MessageLookupByLibrary.simpleMessage(
      "Note: you must remember this password as it cannot be recovered if lost.",
    ),
    "darkMode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
    "daysAgo": m5,
    "dbClosedError": m6,
    "dbDuplicateColumnError": m7,
    "dbGenericException": m8,
    "dbNoSuchTableError": m9,
    "dbOpenFailedError": m10,
    "dbSyntaxError": m11,
    "dbUniqueConstraintError": m12,
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteCategory": MessageLookupByLibrary.simpleMessage("Delete Category"),
    "deleteCategoryConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this category? This action cannot be undone.",
    ),
    "deleteNote": MessageLookupByLibrary.simpleMessage("Delete Note"),
    "deleteNoteConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to delete this note?",
    ),
    "descending": MessageLookupByLibrary.simpleMessage("Descending"),
    "didntReceiveCode": MessageLookupByLibrary.simpleMessage(
      "Didn\'t receive the Code?",
    ),
    "directoryError": m13,
    "disableAppLock": MessageLookupByLibrary.simpleMessage("Disable App Lock"),
    "disableDarkMode": MessageLookupByLibrary.simpleMessage(
      "Disable Dark Mode",
    ),
    "dontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account?",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "editCategory": MessageLookupByLibrary.simpleMessage("Edit Category"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "emailRequired": MessageLookupByLibrary.simpleMessage("Email Required!"),
    "enableAppLock": MessageLookupByLibrary.simpleMessage("Enable App Lock"),
    "enableDarkMode": MessageLookupByLibrary.simpleMessage("Enable Dark Mode"),
    "enterOtp": MessageLookupByLibrary.simpleMessage("Please enter the OTP"),
    "enterPassword": MessageLookupByLibrary.simpleMessage("Enter Password"),
    "enterPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Please enter your password to access this file.",
    ),
    "enterYourEmail": MessageLookupByLibrary.simpleMessage("Enter your Email"),
    "enterYourPassword": MessageLookupByLibrary.simpleMessage(
      "Enter your Password",
    ),
    "enterYourUsername": MessageLookupByLibrary.simpleMessage(
      "Enter your username",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "exportNotes": MessageLookupByLibrary.simpleMessage("Export Notes"),
    "exportedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Exported successfully!",
    ),
    "extractAs": MessageLookupByLibrary.simpleMessage("Extract As"),
    "failedToResetPassword": MessageLookupByLibrary.simpleMessage(
      "Failed to reset password. Please try again.",
    ),
    "failedToSendOtp": MessageLookupByLibrary.simpleMessage(
      "Failed to send OTP, Please try again later!",
    ),
    "favouriteModeOn": MessageLookupByLibrary.simpleMessage(
      "Favourite Mode is ON",
    ),
    "fileException": MessageLookupByLibrary.simpleMessage(
      "File exception occurred.",
    ),
    "fileSystemError": m14,
    "filterCategories": MessageLookupByLibrary.simpleMessage(
      "Filter Categories",
    ),
    "filterCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Select a filter option for your categories.",
    ),
    "filterCategory": MessageLookupByLibrary.simpleMessage("Category"),
    "filterCreatedAt": MessageLookupByLibrary.simpleMessage("Created At"),
    "filterCreatedAtOption": MessageLookupByLibrary.simpleMessage("Created At"),
    "filterName": MessageLookupByLibrary.simpleMessage("Name"),
    "filterTitle": MessageLookupByLibrary.simpleMessage("Title"),
    "followPasswordConstraints": MessageLookupByLibrary.simpleMessage(
      "Please follow the password constraints",
    ),
    "fontColor": MessageLookupByLibrary.simpleMessage("Font Color"),
    "fontSize": MessageLookupByLibrary.simpleMessage("Font Size"),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "forgotYourPassword": MessageLookupByLibrary.simpleMessage(
      "Forgot your Password?",
    ),
    "functionsDefaultError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong with the server. Please try again.",
    ),
    "functionsEndpointNotFound": MessageLookupByLibrary.simpleMessage(
      "The server endpoint does not exist.",
    ),
    "functionsInvalidInput": MessageLookupByLibrary.simpleMessage(
      "Invalid input sent to the server.",
    ),
    "functionsNoPermission": MessageLookupByLibrary.simpleMessage(
      "You don\'t have permission to perform this action.",
    ),
    "functionsNotLoggedIn": MessageLookupByLibrary.simpleMessage(
      "You are not logged in. Please authenticate.",
    ),
    "functionsServerError": MessageLookupByLibrary.simpleMessage(
      "Server error occurred. Try again later.",
    ),
    "functionsTimeout": MessageLookupByLibrary.simpleMessage(
      "The request timed out. Please try again.",
    ),
    "functionsTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Too many requests. Please slow down.",
    ),
    "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
    "googleSignInCanceled": MessageLookupByLibrary.simpleMessage(
      "Sign-in was canceled. Please try again if you still want to continue.",
    ),
    "googleSignInClientConfigError": MessageLookupByLibrary.simpleMessage(
      "There\'s a problem with the app\'s Google sign-in setup. Please contact support.",
    ),
    "googleSignInInterrupted": MessageLookupByLibrary.simpleMessage(
      "The sign-in process was interrupted. Please try again.",
    ),
    "googleSignInProviderConfigError": MessageLookupByLibrary.simpleMessage(
      "Google sign-in is not configured correctly. Please try again later.",
    ),
    "googleSignInUiUnavailable": MessageLookupByLibrary.simpleMessage(
      "Google sign-in is currently unavailable on this device.",
    ),
    "googleSignInUnknownError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong while signing in. Please try again.",
    ),
    "googleSignInUserMismatch": MessageLookupByLibrary.simpleMessage(
      "This Google account doesn\'t match the expected user. Try using a different account.",
    ),
    "guestUser": MessageLookupByLibrary.simpleMessage("Guest User"),
    "hoursAgo": m15,
    "image": MessageLookupByLibrary.simpleMessage("Image"),
    "images": MessageLookupByLibrary.simpleMessage("Images"),
    "importNotes": MessageLookupByLibrary.simpleMessage("Import Notes"),
    "importedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Imported successfully!",
    ),
    "internalError": m16,
    "invalidEmail": MessageLookupByLibrary.simpleMessage("Not a valid Email"),
    "invalidFile": MessageLookupByLibrary.simpleMessage("Invalid file"),
    "invalidOtp": MessageLookupByLibrary.simpleMessage("Invalid OTP"),
    "italic": MessageLookupByLibrary.simpleMessage("Italic"),
    "langArabic": MessageLookupByLibrary.simpleMessage("Arabic"),
    "langChinese": MessageLookupByLibrary.simpleMessage("Chinese"),
    "langEnglish": MessageLookupByLibrary.simpleMessage("English"),
    "langFrench": MessageLookupByLibrary.simpleMessage("French"),
    "langGerman": MessageLookupByLibrary.simpleMessage("German"),
    "langIndian": MessageLookupByLibrary.simpleMessage("Indian"),
    "langItalian": MessageLookupByLibrary.simpleMessage("Italian"),
    "langJapanese": MessageLookupByLibrary.simpleMessage("Japanese"),
    "langKorean": MessageLookupByLibrary.simpleMessage("Korean"),
    "langRussian": MessageLookupByLibrary.simpleMessage("Russian"),
    "langSpanish": MessageLookupByLibrary.simpleMessage("Spanish"),
    "langTurkish": MessageLookupByLibrary.simpleMessage("Turkish"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "languageSubtitle": MessageLookupByLibrary.simpleMessage(
      "Choose your preferred language",
    ),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "loginDescription": MessageLookupByLibrary.simpleMessage(
      "Log in to sync and back up your notes securely across devices",
    ),
    "loginToSync": MessageLookupByLibrary.simpleMessage(
      "Login to sync your notes across all your devices",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "logoutConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to logout?",
    ),
    "mergeWithExistingData": MessageLookupByLibrary.simpleMessage(
      "Merge with Existing Data",
    ),
    "minutesAgo": m17,
    "monthsAgo": m18,
    "more": MessageLookupByLibrary.simpleMessage("More"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Please check your internet connection and try again.",
    ),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "noCategoriesDescription": MessageLookupByLibrary.simpleMessage(
      "Add categories to organize your notes better.",
    ),
    "noCategoriesYet": MessageLookupByLibrary.simpleMessage(
      "No Categories Added Yet",
    ),
    "noContent": MessageLookupByLibrary.simpleMessage("No Content"),
    "noFavouriteNotes": MessageLookupByLibrary.simpleMessage(
      "No Favourite Notes",
    ),
    "noFavouriteNotesDescription": MessageLookupByLibrary.simpleMessage(
      "You have not added any notes to favourites yet.",
    ),
    "noFileSelected": MessageLookupByLibrary.simpleMessage("No file selected."),
    "noNotesYet": MessageLookupByLibrary.simpleMessage("No Notes Yet"),
    "noNotesYetDescription": MessageLookupByLibrary.simpleMessage(
      "Tap the + button to create your first note.",
    ),
    "noOutputDirectorySelected": MessageLookupByLibrary.simpleMessage(
      "No output directory selected",
    ),
    "noPasswordProvided": MessageLookupByLibrary.simpleMessage(
      "No password provided.",
    ),
    "noResultsFound": MessageLookupByLibrary.simpleMessage("No results found"),
    "notAvailable": MessageLookupByLibrary.simpleMessage("Not Available"),
    "notSynced": MessageLookupByLibrary.simpleMessage("Not Synced"),
    "noteAdded": MessageLookupByLibrary.simpleMessage("Note Added"),
    "noteContent": MessageLookupByLibrary.simpleMessage("Note Content"),
    "noteTitle": MessageLookupByLibrary.simpleMessage("Note Title"),
    "notes": MessageLookupByLibrary.simpleMessage("Notes"),
    "numberedList": MessageLookupByLibrary.simpleMessage("Numbered List"),
    "onboardingDescription1": MessageLookupByLibrary.simpleMessage(
      "Capture and organize your thoughts offline, and sync them across devices",
    ),
    "onboardingDescription2": MessageLookupByLibrary.simpleMessage(
      "Add images, voice memos, and export notes to PDF, Word, or Text for ultimate flexibility",
    ),
    "onboardingDescription3": MessageLookupByLibrary.simpleMessage(
      "All notes are protected with end-to-end encryption — only you can read them",
    ),
    "onboardingTitle1": MessageLookupByLibrary.simpleMessage(
      "Your Notes, Always With You",
    ),
    "onboardingTitle2": MessageLookupByLibrary.simpleMessage(
      "More Than Just Text",
    ),
    "onboardingTitle3": MessageLookupByLibrary.simpleMessage(
      "Your Privacy Matter",
    ),
    "orLoginWith": MessageLookupByLibrary.simpleMessage("Or login with"),
    "otpSentTo": MessageLookupByLibrary.simpleMessage(
      "We have sent a verification code to ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordChangedSuccessfully": MessageLookupByLibrary.simpleMessage(
      "Password changed successfully",
    ),
    "passwordConfirmationRequired": MessageLookupByLibrary.simpleMessage(
      "Password Confirmation Required!",
    ),
    "passwordMinLength": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 6 Characters",
    ),
    "passwordNoSpaces": MessageLookupByLibrary.simpleMessage(
      "Password can\'t contain spaces",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Password Required!",
    ),
    "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "pathException": MessageLookupByLibrary.simpleMessage(
      "Path exception occurred.",
    ),
    "pdfFilePdf": MessageLookupByLibrary.simpleMessage("PDF File (.pdf)"),
    "pickLanguage": MessageLookupByLibrary.simpleMessage("Pick a language"),
    "platformError": m19,
    "pleaseWait": MessageLookupByLibrary.simpleMessage("Please wait...."),
    "previous": MessageLookupByLibrary.simpleMessage("Previous"),
    "print": MessageLookupByLibrary.simpleMessage("Print"),
    "remove": MessageLookupByLibrary.simpleMessage("Remove"),
    "removeFromFavourites": MessageLookupByLibrary.simpleMessage(
      "Remove from Favourites",
    ),
    "removeImage": MessageLookupByLibrary.simpleMessage("Remove Image"),
    "removeImageConfirmation": MessageLookupByLibrary.simpleMessage(
      "Are you sure you want to remove this image from the note?",
    ),
    "replaceExistingData": MessageLookupByLibrary.simpleMessage(
      "Replace Existing Data",
    ),
    "resendCode": MessageLookupByLibrary.simpleMessage("Resend Code"),
    "resetPasswordDescription": MessageLookupByLibrary.simpleMessage(
      "Enter your email address below to receive an OTP to reset your password",
    ),
    "searchNotePlaceholder": MessageLookupByLibrary.simpleMessage(
      "Note title or content....",
    ),
    "secondsAgo": m20,
    "selectCategory": MessageLookupByLibrary.simpleMessage("Select Category"),
    "sendOtp": MessageLookupByLibrary.simpleMessage("Send OTP"),
    "settings": MessageLookupByLibrary.simpleMessage("Settings"),
    "share": MessageLookupByLibrary.simpleMessage("Share"),
    "shareError": MessageLookupByLibrary.simpleMessage(
      "Error occurred while sharing Note",
    ),
    "shareFailed": MessageLookupByLibrary.simpleMessage("Share Failed"),
    "signUp": MessageLookupByLibrary.simpleMessage("SignUp"),
    "signUpDescription": MessageLookupByLibrary.simpleMessage(
      "Sign up to sync and back up your notes everywhere, securely",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "sortBy": MessageLookupByLibrary.simpleMessage("Sort by"),
    "strikethrough": MessageLookupByLibrary.simpleMessage("Strikethrough"),
    "style": MessageLookupByLibrary.simpleMessage("Style"),
    "subscript": MessageLookupByLibrary.simpleMessage("Subscript"),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
    "supabaseDbCheckConstraint": MessageLookupByLibrary.simpleMessage(
      "One of the values does not meet the database rules (check constraint).",
    ),
    "supabaseDbColumnNotExist": MessageLookupByLibrary.simpleMessage(
      "The column you are trying to access does not exist.",
    ),
    "supabaseDbConflict": MessageLookupByLibrary.simpleMessage(
      "This record already exists. Please use different values.",
    ),
    "supabaseDbDefaultError": MessageLookupByLibrary.simpleMessage(
      "Something went wrong with the database. Please try again.",
    ),
    "supabaseDbDuplicateKey": MessageLookupByLibrary.simpleMessage(
      "This value already exists. Please use a different one (duplicate key).",
    ),
    "supabaseDbForeignKeyViolation": MessageLookupByLibrary.simpleMessage(
      "This record is linked to another and cannot be deleted/updated (foreign key violation).",
    ),
    "supabaseDbFunctionNotExist": MessageLookupByLibrary.simpleMessage(
      "This function does not exist in the database.",
    ),
    "supabaseDbInputTooLong": MessageLookupByLibrary.simpleMessage(
      "One of your inputs is too long. Please shorten it and try again.",
    ),
    "supabaseDbInternalError": MessageLookupByLibrary.simpleMessage(
      "An internal database error occurred. Please try again later.",
    ),
    "supabaseDbInvalidDateFormat": MessageLookupByLibrary.simpleMessage(
      "Invalid date or time format. Please use the correct format.",
    ),
    "supabaseDbInvalidInputType": MessageLookupByLibrary.simpleMessage(
      "Invalid input type. Please check your data.",
    ),
    "supabaseDbInvalidRequest": MessageLookupByLibrary.simpleMessage(
      "Invalid request. Please check the information you entered.",
    ),
    "supabaseDbNoAccess": MessageLookupByLibrary.simpleMessage(
      "You do not have access to this resource.",
    ),
    "supabaseDbNoPermission": MessageLookupByLibrary.simpleMessage(
      "You don\'t have permission to perform this action.",
    ),
    "supabaseDbNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "You are not authorized. Please log in first.",
    ),
    "supabaseDbNotFound": MessageLookupByLibrary.simpleMessage(
      "The requested resource was not found.",
    ),
    "supabaseDbRequestCanceled": MessageLookupByLibrary.simpleMessage(
      "The request took too long and was canceled. Please try again.",
    ),
    "supabaseDbRequiredFieldMissing": MessageLookupByLibrary.simpleMessage(
      "A required field is missing. Please fill in all required details.",
    ),
    "supabaseDbRlsBlocked": MessageLookupByLibrary.simpleMessage(
      "Row-level security blocked this request.",
    ),
    "supabaseDbSyntaxError": MessageLookupByLibrary.simpleMessage(
      "There is a problem with the database query (syntax error).",
    ),
    "supabaseDbTableNotExist": MessageLookupByLibrary.simpleMessage(
      "The table you are trying to access does not exist.",
    ),
    "supabaseDbTooManyConnections": MessageLookupByLibrary.simpleMessage(
      "The database has too many connections. Please try again later.",
    ),
    "supabaseDbUnexpectedError": MessageLookupByLibrary.simpleMessage(
      "Unexpected database error. Please try again later.",
    ),
    "superscript": MessageLookupByLibrary.simpleMessage("Superscript"),
    "syncNotes": MessageLookupByLibrary.simpleMessage("Sync Notes"),
    "syncNotesSubtitle": MessageLookupByLibrary.simpleMessage(
      "Always Sync Notes to Cloud",
    ),
    "synced": MessageLookupByLibrary.simpleMessage("Synced"),
    "textFileTxt": MessageLookupByLibrary.simpleMessage("Text File (.txt)"),
    "theme": MessageLookupByLibrary.simpleMessage("Theme"),
    "timeoutError": MessageLookupByLibrary.simpleMessage(
      "The connection has timed out. Please try again!",
    ),
    "uncategorized": MessageLookupByLibrary.simpleMessage("Uncategorized"),
    "underline": MessageLookupByLibrary.simpleMessage("Underline"),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "An unknown exception occurred.",
    ),
    "untitled": MessageLookupByLibrary.simpleMessage("Untitled"),
    "username": MessageLookupByLibrary.simpleMessage("Username"),
    "usernameInvalid": MessageLookupByLibrary.simpleMessage(
      "Username must start with a letter and contain only letters and numbers",
    ),
    "usernameRequired": MessageLookupByLibrary.simpleMessage(
      "Please Enter your Username",
    ),
    "verifyYourEmail": MessageLookupByLibrary.simpleMessage(
      "Verify your Email",
    ),
    "wrongPasswordOrCorrupted": MessageLookupByLibrary.simpleMessage(
      "Wrong password or corrupted data.",
    ),
  };
}
