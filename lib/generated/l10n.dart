// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Notey`
  String get appTitle {
    return Intl.message('Notey', name: 'appTitle', desc: '', args: []);
  }

  /// `Please authenticate to open the app`
  String get biometricAuthReason {
    return Intl.message(
      'Please authenticate to open the app',
      name: 'biometricAuthReason',
      desc:
          'Message shown when prompting the user for biometric authentication',
      args: [],
    );
  }

  /// `Biometric authentication not available for this device`
  String get biometricNotAvailable {
    return Intl.message(
      'Biometric authentication not available for this device',
      name: 'biometricNotAvailable',
      desc: 'Error message when biometric authentication is not available',
      args: [],
    );
  }

  /// `Biometric authentication error`
  String get biometricAuthError {
    return Intl.message(
      'Biometric authentication error',
      name: 'biometricAuthError',
      desc: 'Generic error message for biometric authentication',
      args: [],
    );
  }

  /// `Biometric authentication failed: {error}`
  String biometricAuthFailed(String error) {
    return Intl.message(
      'Biometric authentication failed: $error',
      name: 'biometricAuthFailed',
      desc: 'Error message when biometric authentication fails',
      args: [error],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Log in to sync and back up your notes securely across devices`
  String get loginDescription {
    return Intl.message(
      'Log in to sync and back up your notes securely across devices',
      name: 'loginDescription',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `SignUp`
  String get signUp {
    return Intl.message('SignUp', name: 'signUp', desc: '', args: []);
  }

  /// `Enter your Email`
  String get enterYourEmail {
    return Intl.message(
      'Enter your Email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Email Required!`
  String get emailRequired {
    return Intl.message(
      'Email Required!',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Not a valid Email`
  String get invalidEmail {
    return Intl.message(
      'Not a valid Email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Password`
  String get enterYourPassword {
    return Intl.message(
      'Enter your Password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Password Required!`
  String get passwordRequired {
    return Intl.message(
      'Password Required!',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password can't contain spaces`
  String get passwordNoSpaces {
    return Intl.message(
      'Password can\'t contain spaces',
      name: 'passwordNoSpaces',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 Characters`
  String get passwordMinLength {
    return Intl.message(
      'Password must be at least 6 Characters',
      name: 'passwordMinLength',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Or login with`
  String get orLoginWith {
    return Intl.message(
      'Or login with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  /// `Sign up to sync and back up your notes everywhere, securely`
  String get signUpDescription {
    return Intl.message(
      'Sign up to sync and back up your notes everywhere, securely',
      name: 'signUpDescription',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please follow the password constraints`
  String get followPasswordConstraints {
    return Intl.message(
      'Please follow the password constraints',
      name: 'followPasswordConstraints',
      desc: '',
      args: [],
    );
  }

  /// `Account Created Successfully`
  String get accountCreatedSuccessfully {
    return Intl.message(
      'Account Created Successfully',
      name: 'accountCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your Password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your Password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address below to receive an OTP to reset your password`
  String get resetPasswordDescription {
    return Intl.message(
      'Enter your email address below to receive an OTP to reset your password',
      name: 'resetPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Send OTP`
  String get sendOtp {
    return Intl.message('Send OTP', name: 'sendOtp', desc: '', args: []);
  }

  /// `Password changed successfully`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'Password changed successfully',
      name: 'passwordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Change your account password to contain the following`
  String get changePasswordDescription {
    return Intl.message(
      'Change your account password to contain the following',
      name: 'changePasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Verify your Email`
  String get verifyYourEmail {
    return Intl.message(
      'Verify your Email',
      name: 'verifyYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a verification code to `
  String get otpSentTo {
    return Intl.message(
      'We have sent a verification code to ',
      name: 'otpSentTo',
      desc: '',
      args: [],
    );
  }

  /// `\nPlease check your inbox and spam folder.`
  String get checkInboxAndSpam {
    return Intl.message(
      '\nPlease check your inbox and spam folder.',
      name: 'checkInboxAndSpam',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the Code?`
  String get didntReceiveCode {
    return Intl.message(
      'Didn\'t receive the Code?',
      name: 'didntReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `Available in {seconds}s`
  String availableInSeconds(int seconds) {
    return Intl.message(
      'Available in ${seconds}s',
      name: 'availableInSeconds',
      desc: '',
      args: [seconds],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message('Resend Code', name: 'resendCode', desc: '', args: []);
  }

  /// `Enter your username`
  String get enterYourUsername {
    return Intl.message(
      'Enter your username',
      name: 'enterYourUsername',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Please Enter your Username`
  String get usernameRequired {
    return Intl.message(
      'Please Enter your Username',
      name: 'usernameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Username must start with a letter and contain only letters and numbers`
  String get usernameInvalid {
    return Intl.message(
      'Username must start with a letter and contain only letters and numbers',
      name: 'usernameInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your Password`
  String get confirmYourPassword {
    return Intl.message(
      'Confirm your Password',
      name: 'confirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation Required!`
  String get passwordConfirmationRequired {
    return Intl.message(
      'Password Confirmation Required!',
      name: 'passwordConfirmationRequired',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the OTP`
  String get enterOtp {
    return Intl.message(
      'Please enter the OTP',
      name: 'enterOtp',
      desc: '',
      args: [],
    );
  }

  /// `Invalid OTP`
  String get invalidOtp {
    return Intl.message('Invalid OTP', name: 'invalidOtp', desc: '', args: []);
  }

  /// `At least 6 characters`
  String get constraintLength {
    return Intl.message(
      'At least 6 characters',
      name: 'constraintLength',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 uppercase letter`
  String get constraintUppercase {
    return Intl.message(
      'At least 1 uppercase letter',
      name: 'constraintUppercase',
      desc: '',
      args: [],
    );
  }

  /// `At least 1 special character`
  String get constraintSpecialChar {
    return Intl.message(
      'At least 1 special character',
      name: 'constraintSpecialChar',
      desc: '',
      args: [],
    );
  }

  /// `At least 2 numbers`
  String get constraintNumbers {
    return Intl.message(
      'At least 2 numbers',
      name: 'constraintNumbers',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send OTP, Please try again later!`
  String get failedToSendOtp {
    return Intl.message(
      'Failed to send OTP, Please try again later!',
      name: 'failedToSendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Failed to reset password. Please try again.`
  String get failedToResetPassword {
    return Intl.message(
      'Failed to reset password. Please try again.',
      name: 'failedToResetPassword',
      desc: '',
      args: [],
    );
  }

  /// `No Favourite Notes`
  String get noFavouriteNotes {
    return Intl.message(
      'No Favourite Notes',
      name: 'noFavouriteNotes',
      desc: '',
      args: [],
    );
  }

  /// `No Notes Yet`
  String get noNotesYet {
    return Intl.message('No Notes Yet', name: 'noNotesYet', desc: '', args: []);
  }

  /// `You have not added any notes to favourites yet.`
  String get noFavouriteNotesDescription {
    return Intl.message(
      'You have not added any notes to favourites yet.',
      name: 'noFavouriteNotesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tap the + button to create your first note.`
  String get noNotesYetDescription {
    return Intl.message(
      'Tap the + button to create your first note.',
      name: 'noNotesYetDescription',
      desc: '',
      args: [],
    );
  }

  /// `Favourite Mode is ON`
  String get favouriteModeOn {
    return Intl.message(
      'Favourite Mode is ON',
      name: 'favouriteModeOn',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Uncategorized`
  String get uncategorized {
    return Intl.message(
      'Uncategorized',
      name: 'uncategorized',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get noResultsFound {
    return Intl.message(
      'No results found',
      name: 'noResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `Remove from Favourites`
  String get removeFromFavourites {
    return Intl.message(
      'Remove from Favourites',
      name: 'removeFromFavourites',
      desc: '',
      args: [],
    );
  }

  /// `Add to Favorites`
  String get addToFavorites {
    return Intl.message(
      'Add to Favorites',
      name: 'addToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Not Synced`
  String get notSynced {
    return Intl.message('Not Synced', name: 'notSynced', desc: '', args: []);
  }

  /// `Synced`
  String get synced {
    return Intl.message('Synced', name: 'synced', desc: '', args: []);
  }

  /// `No Content`
  String get noContent {
    return Intl.message('No Content', name: 'noContent', desc: '', args: []);
  }

  /// `Untitled`
  String get untitled {
    return Intl.message('Untitled', name: 'untitled', desc: '', args: []);
  }

  /// `Sort by`
  String get sortBy {
    return Intl.message('Sort by', name: 'sortBy', desc: '', args: []);
  }

  /// `Title`
  String get filterTitle {
    return Intl.message('Title', name: 'filterTitle', desc: '', args: []);
  }

  /// `Category`
  String get filterCategory {
    return Intl.message('Category', name: 'filterCategory', desc: '', args: []);
  }

  /// `Created At`
  String get filterCreatedAt {
    return Intl.message(
      'Created At',
      name: 'filterCreatedAt',
      desc: '',
      args: [],
    );
  }

  /// `Ascending`
  String get ascending {
    return Intl.message('Ascending', name: 'ascending', desc: '', args: []);
  }

  /// `Descending`
  String get descending {
    return Intl.message('Descending', name: 'descending', desc: '', args: []);
  }

  /// `Your Notes, Always With You`
  String get onboardingTitle1 {
    return Intl.message(
      'Your Notes, Always With You',
      name: 'onboardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Capture and organize your thoughts offline, and sync them across devices`
  String get onboardingDescription1 {
    return Intl.message(
      'Capture and organize your thoughts offline, and sync them across devices',
      name: 'onboardingDescription1',
      desc: '',
      args: [],
    );
  }

  /// `More Than Just Text`
  String get onboardingTitle2 {
    return Intl.message(
      'More Than Just Text',
      name: 'onboardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Add images, voice memos, and export notes to PDF, Word, or Text for ultimate flexibility`
  String get onboardingDescription2 {
    return Intl.message(
      'Add images, voice memos, and export notes to PDF, Word, or Text for ultimate flexibility',
      name: 'onboardingDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Your Privacy Matter`
  String get onboardingTitle3 {
    return Intl.message(
      'Your Privacy Matter',
      name: 'onboardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `All notes are protected with end-to-end encryption — only you can read them`
  String get onboardingDescription3 {
    return Intl.message(
      'All notes are protected with end-to-end encryption — only you can read them',
      name: 'onboardingDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Previous`
  String get previous {
    return Intl.message('Previous', name: 'previous', desc: '', args: []);
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Create password`
  String get createPassword {
    return Intl.message(
      'Create password',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `To enhance the security of your notes, please create a password.`
  String get createPasswordDescription {
    return Intl.message(
      'To enhance the security of your notes, please create a password.',
      name: 'createPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Note: you must remember this password as it cannot be recovered if lost.`
  String get createPasswordNote {
    return Intl.message(
      'Note: you must remember this password as it cannot be recovered if lost.',
      name: 'createPasswordNote',
      desc: '',
      args: [],
    );
  }

  /// `Enter Password`
  String get enterPassword {
    return Intl.message(
      'Enter Password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password to access this file.`
  String get enterPasswordDescription {
    return Intl.message(
      'Please enter your password to access this file.',
      name: 'enterPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `{dbName} Conflict Detected`
  String conflictDetected(String dbName) {
    return Intl.message(
      '$dbName Conflict Detected',
      name: 'conflictDetected',
      desc: '',
      args: [dbName],
    );
  }

  /// `You already have {dbName} saved on this device. How would you like to handle the data from the imported file?`
  String conflictDescription(String dbName) {
    return Intl.message(
      'You already have $dbName saved on this device. How would you like to handle the data from the imported file?',
      name: 'conflictDescription',
      desc: '',
      args: [dbName],
    );
  }

  /// `Replace Existing Data`
  String get replaceExistingData {
    return Intl.message(
      'Replace Existing Data',
      name: 'replaceExistingData',
      desc: '',
      args: [],
    );
  }

  /// `Merge with Existing Data`
  String get mergeWithExistingData {
    return Intl.message(
      'Merge with Existing Data',
      name: 'mergeWithExistingData',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Import`
  String get cancelImport {
    return Intl.message(
      'Cancel Import',
      name: 'cancelImport',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message('Notes', name: 'notes', desc: '', args: []);
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Are you sure you want to logout?`
  String get logoutConfirmation {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'logoutConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Pick a language`
  String get pickLanguage {
    return Intl.message(
      'Pick a language',
      name: 'pickLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Choose your prefered language`
  String get choosePreferredLanguage {
    return Intl.message(
      'Choose your prefered language',
      name: 'choosePreferredLanguage',
      desc: '',
      args: [],
    );
  }

  /// `About Notey`
  String get aboutNotey {
    return Intl.message('About Notey', name: 'aboutNotey', desc: '', args: []);
  }

  /// `1.0.0`
  String get appVersion {
    return Intl.message('1.0.0', name: 'appVersion', desc: '', args: []);
  }

  /// `© 2025 Notey. All rights reserved.`
  String get appLegalese {
    return Intl.message(
      '© 2025 Notey. All rights reserved.',
      name: 'appLegalese',
      desc: '',
      args: [],
    );
  }

  /// `Disable App Lock`
  String get disableAppLock {
    return Intl.message(
      'Disable App Lock',
      name: 'disableAppLock',
      desc: '',
      args: [],
    );
  }

  /// `Enable App Lock`
  String get enableAppLock {
    return Intl.message(
      'Enable App Lock',
      name: 'enableAppLock',
      desc: '',
      args: [],
    );
  }

  /// `Use fingerprint, face, Pattern or PIN to secure the app.`
  String get appLockSubtitle {
    return Intl.message(
      'Use fingerprint, face, Pattern or PIN to secure the app.',
      name: 'appLockSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Authenticate to change app lock settings`
  String get authToChangeAppLock {
    return Intl.message(
      'Authenticate to change app lock settings',
      name: 'authToChangeAppLock',
      desc: '',
      args: [],
    );
  }

  /// `Authentication failed. Try again.`
  String get authFailed {
    return Intl.message(
      'Authentication failed. Try again.',
      name: 'authFailed',
      desc: '',
      args: [],
    );
  }

  /// `Export Notes`
  String get exportNotes {
    return Intl.message(
      'Export Notes',
      name: 'exportNotes',
      desc: '',
      args: [],
    );
  }

  /// `Import Notes`
  String get importNotes {
    return Intl.message(
      'Import Notes',
      name: 'importNotes',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Choose your preferred language`
  String get languageSubtitle {
    return Intl.message(
      'Choose your preferred language',
      name: 'languageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Guest User`
  String get guestUser {
    return Intl.message('Guest User', name: 'guestUser', desc: '', args: []);
  }

  /// `Login to sync your notes across all your devices`
  String get loginToSync {
    return Intl.message(
      'Login to sync your notes across all your devices',
      name: 'loginToSync',
      desc: '',
      args: [],
    );
  }

  /// `Not Available`
  String get notAvailable {
    return Intl.message(
      'Not Available',
      name: 'notAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Sync Notes`
  String get syncNotes {
    return Intl.message('Sync Notes', name: 'syncNotes', desc: '', args: []);
  }

  /// `Always Sync Notes to Cloud`
  String get syncNotesSubtitle {
    return Intl.message(
      'Always Sync Notes to Cloud',
      name: 'syncNotesSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message('Dark Mode', name: 'darkMode', desc: '', args: []);
  }

  /// `Enable Dark Mode`
  String get enableDarkMode {
    return Intl.message(
      'Enable Dark Mode',
      name: 'enableDarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Disable Dark Mode`
  String get disableDarkMode {
    return Intl.message(
      'Disable Dark Mode',
      name: 'disableDarkMode',
      desc: '',
      args: [],
    );
  }

  /// `Exported successfully!`
  String get exportedSuccessfully {
    return Intl.message(
      'Exported successfully!',
      name: 'exportedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Imported successfully!`
  String get importedSuccessfully {
    return Intl.message(
      'Imported successfully!',
      name: 'importedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get langEnglish {
    return Intl.message('English', name: 'langEnglish', desc: '', args: []);
  }

  /// `Arabic`
  String get langArabic {
    return Intl.message('Arabic', name: 'langArabic', desc: '', args: []);
  }

  /// `French`
  String get langFrench {
    return Intl.message('French', name: 'langFrench', desc: '', args: []);
  }

  /// `German`
  String get langGerman {
    return Intl.message('German', name: 'langGerman', desc: '', args: []);
  }

  /// `Spanish`
  String get langSpanish {
    return Intl.message('Spanish', name: 'langSpanish', desc: '', args: []);
  }

  /// `Italian`
  String get langItalian {
    return Intl.message('Italian', name: 'langItalian', desc: '', args: []);
  }

  /// `Japanese`
  String get langJapanese {
    return Intl.message('Japanese', name: 'langJapanese', desc: '', args: []);
  }

  /// `Chinese`
  String get langChinese {
    return Intl.message('Chinese', name: 'langChinese', desc: '', args: []);
  }

  /// `Turkish`
  String get langTurkish {
    return Intl.message('Turkish', name: 'langTurkish', desc: '', args: []);
  }

  /// `Korean`
  String get langKorean {
    return Intl.message('Korean', name: 'langKorean', desc: '', args: []);
  }

  /// `Russian`
  String get langRussian {
    return Intl.message('Russian', name: 'langRussian', desc: '', args: []);
  }

  /// `Indian`
  String get langIndian {
    return Intl.message('Indian', name: 'langIndian', desc: '', args: []);
  }

  /// `Invalid file`
  String get invalidFile {
    return Intl.message(
      'Invalid file',
      name: 'invalidFile',
      desc: '',
      args: [],
    );
  }

  /// `No password provided.`
  String get noPasswordProvided {
    return Intl.message(
      'No password provided.',
      name: 'noPasswordProvided',
      desc: '',
      args: [],
    );
  }

  /// `No file selected.`
  String get noFileSelected {
    return Intl.message(
      'No file selected.',
      name: 'noFileSelected',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password or corrupted data.`
  String get wrongPasswordOrCorrupted {
    return Intl.message(
      'Wrong password or corrupted data.',
      name: 'wrongPasswordOrCorrupted',
      desc: '',
      args: [],
    );
  }

  /// `No output directory selected`
  String get noOutputDirectorySelected {
    return Intl.message(
      'No output directory selected',
      name: 'noOutputDirectorySelected',
      desc: '',
      args: [],
    );
  }

  /// `Note title or content....`
  String get searchNotePlaceholder {
    return Intl.message(
      'Note title or content....',
      name: 'searchNotePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Please wait....`
  String get pleaseWait {
    return Intl.message(
      'Please wait....',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Note Title`
  String get noteTitle {
    return Intl.message('Note Title', name: 'noteTitle', desc: '', args: []);
  }

  /// `Note Content`
  String get noteContent {
    return Intl.message(
      'Note Content',
      name: 'noteContent',
      desc: '',
      args: [],
    );
  }

  /// `Delete Note`
  String get deleteNote {
    return Intl.message('Delete Note', name: 'deleteNote', desc: '', args: []);
  }

  /// `Are you sure you want to delete this note?`
  String get deleteNoteConfirmation {
    return Intl.message(
      'Are you sure you want to delete this note?',
      name: 'deleteNoteConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Remove Image`
  String get removeImage {
    return Intl.message(
      'Remove Image',
      name: 'removeImage',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove this image from the note?`
  String get removeImageConfirmation {
    return Intl.message(
      'Are you sure you want to remove this image from the note?',
      name: 'removeImageConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message('Remove', name: 'remove', desc: '', args: []);
  }

  /// `Extract As`
  String get extractAs {
    return Intl.message('Extract As', name: 'extractAs', desc: '', args: []);
  }

  /// `Text File (.txt)`
  String get textFileTxt {
    return Intl.message(
      'Text File (.txt)',
      name: 'textFileTxt',
      desc: '',
      args: [],
    );
  }

  /// `PDF File (.pdf)`
  String get pdfFilePdf {
    return Intl.message(
      'PDF File (.pdf)',
      name: 'pdfFilePdf',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Print`
  String get print {
    return Intl.message('Print', name: 'print', desc: '', args: []);
  }

  /// `Color`
  String get color {
    return Intl.message('Color', name: 'color', desc: '', args: []);
  }

  /// `Background`
  String get background {
    return Intl.message('Background', name: 'background', desc: '', args: []);
  }

  /// `Images`
  String get images {
    return Intl.message('Images', name: 'images', desc: '', args: []);
  }

  /// `Select Category`
  String get selectCategory {
    return Intl.message(
      'Select Category',
      name: 'selectCategory',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message('Share', name: 'share', desc: '', args: []);
  }

  /// `Style`
  String get style {
    return Intl.message('Style', name: 'style', desc: '', args: []);
  }

  /// `Image`
  String get image {
    return Intl.message('Image', name: 'image', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Note Added`
  String get noteAdded {
    return Intl.message('Note Added', name: 'noteAdded', desc: '', args: []);
  }

  /// `Share Failed`
  String get shareFailed {
    return Intl.message(
      'Share Failed',
      name: 'shareFailed',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while sharing Note`
  String get shareError {
    return Intl.message(
      'Error occurred while sharing Note',
      name: 'shareError',
      desc: '',
      args: [],
    );
  }

  /// `Internal Error: Can't create images directory: {error}`
  String cannotCreateImagesDirectory(Object error) {
    return Intl.message(
      'Internal Error: Can\'t create images directory: $error',
      name: 'cannotCreateImagesDirectory',
      desc: '',
      args: [error],
    );
  }

  /// `Directory Error: {message}`
  String directoryError(Object message) {
    return Intl.message(
      'Directory Error: $message',
      name: 'directoryError',
      desc: '',
      args: [message],
    );
  }

  /// `File System Error: {message}`
  String fileSystemError(Object message) {
    return Intl.message(
      'File System Error: $message',
      name: 'fileSystemError',
      desc: '',
      args: [message],
    );
  }

  /// `Platform Error: {message}`
  String platformError(Object message) {
    return Intl.message(
      'Platform Error: $message',
      name: 'platformError',
      desc: '',
      args: [message],
    );
  }

  /// `Internal Error: {message}`
  String internalError(Object message) {
    return Intl.message(
      'Internal Error: $message',
      name: 'internalError',
      desc: '',
      args: [message],
    );
  }

  /// `Bold`
  String get bold {
    return Intl.message('Bold', name: 'bold', desc: '', args: []);
  }

  /// `Italic`
  String get italic {
    return Intl.message('Italic', name: 'italic', desc: '', args: []);
  }

  /// `Underline`
  String get underline {
    return Intl.message('Underline', name: 'underline', desc: '', args: []);
  }

  /// `Strikethrough`
  String get strikethrough {
    return Intl.message(
      'Strikethrough',
      name: 'strikethrough',
      desc: '',
      args: [],
    );
  }

  /// `Font Size`
  String get fontSize {
    return Intl.message('Font Size', name: 'fontSize', desc: '', args: []);
  }

  /// `Font Color`
  String get fontColor {
    return Intl.message('Font Color', name: 'fontColor', desc: '', args: []);
  }

  /// `Bullet List`
  String get bulletList {
    return Intl.message('Bullet List', name: 'bulletList', desc: '', args: []);
  }

  /// `Numbered List`
  String get numberedList {
    return Intl.message(
      'Numbered List',
      name: 'numberedList',
      desc: '',
      args: [],
    );
  }

  /// `Checklist`
  String get checklist {
    return Intl.message('Checklist', name: 'checklist', desc: '', args: []);
  }

  /// `Subscript`
  String get subscript {
    return Intl.message('Subscript', name: 'subscript', desc: '', args: []);
  }

  /// `Superscript`
  String get superscript {
    return Intl.message('Superscript', name: 'superscript', desc: '', args: []);
  }

  /// `Code Block`
  String get codeBlock {
    return Intl.message('Code Block', name: 'codeBlock', desc: '', args: []);
  }

  /// `No Categories Added Yet`
  String get noCategoriesYet {
    return Intl.message(
      'No Categories Added Yet',
      name: 'noCategoriesYet',
      desc: '',
      args: [],
    );
  }

  /// `Add categories to organize your notes better.`
  String get noCategoriesDescription {
    return Intl.message(
      'Add categories to organize your notes better.',
      name: 'noCategoriesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categoriesTitle {
    return Intl.message(
      'Categories',
      name: 'categoriesTitle',
      desc: '',
      args: [],
    );
  }

  /// `You can manage your categories here.`
  String get categoriesSubtitle {
    return Intl.message(
      'You can manage your categories here.',
      name: 'categoriesSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Edit Category`
  String get editCategory {
    return Intl.message(
      'Edit Category',
      name: 'editCategory',
      desc: '',
      args: [],
    );
  }

  /// `Add Category`
  String get addCategory {
    return Intl.message(
      'Add Category',
      name: 'addCategory',
      desc: '',
      args: [],
    );
  }

  /// `Change Category name`
  String get changeCategoryName {
    return Intl.message(
      'Change Category name',
      name: 'changeCategoryName',
      desc: '',
      args: [],
    );
  }

  /// `Create a new category to organize your notes.`
  String get createCategoryDescription {
    return Intl.message(
      'Create a new category to organize your notes.',
      name: 'createCategoryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Category Name`
  String get categoryNameHint {
    return Intl.message(
      'Category Name',
      name: 'categoryNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Delete Category`
  String get deleteCategory {
    return Intl.message(
      'Delete Category',
      name: 'deleteCategory',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this category? This action cannot be undone.`
  String get deleteCategoryConfirmation {
    return Intl.message(
      'Are you sure you want to delete this category? This action cannot be undone.',
      name: 'deleteCategoryConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Filter Categories`
  String get filterCategories {
    return Intl.message(
      'Filter Categories',
      name: 'filterCategories',
      desc: '',
      args: [],
    );
  }

  /// `Select a filter option for your categories.`
  String get filterCategoriesDescription {
    return Intl.message(
      'Select a filter option for your categories.',
      name: 'filterCategoriesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get filterName {
    return Intl.message('Name', name: 'filterName', desc: '', args: []);
  }

  /// `Created At`
  String get filterCreatedAtOption {
    return Intl.message(
      'Created At',
      name: 'filterCreatedAtOption',
      desc: '',
      args: [],
    );
  }

  /// `Add New Category`
  String get addNewCategory {
    return Intl.message(
      'Add New Category',
      name: 'addNewCategory',
      desc: '',
      args: [],
    );
  }

  /// `Category Updated`
  String get categoryUpdated {
    return Intl.message(
      'Category Updated',
      name: 'categoryUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Category Deleted`
  String get categoryDeleted {
    return Intl.message(
      'Category Deleted',
      name: 'categoryDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Category name cannot be empty`
  String get categoryNameEmpty {
    return Intl.message(
      'Category name cannot be empty',
      name: 'categoryNameEmpty',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =1{1 second ago} other{{count} seconds ago}}`
  String secondsAgo(int count) {
    return Intl.plural(
      count,
      one: '1 second ago',
      other: '$count seconds ago',
      name: 'secondsAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 minute ago} other{{count} minutes ago}}`
  String minutesAgo(int count) {
    return Intl.plural(
      count,
      one: '1 minute ago',
      other: '$count minutes ago',
      name: 'minutesAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 hour ago} other{{count} hours ago}}`
  String hoursAgo(int count) {
    return Intl.plural(
      count,
      one: '1 hour ago',
      other: '$count hours ago',
      name: 'hoursAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 day ago} other{{count} days ago}}`
  String daysAgo(int count) {
    return Intl.plural(
      count,
      one: '1 day ago',
      other: '$count days ago',
      name: 'daysAgo',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 month ago} other{{count} months ago}}`
  String monthsAgo(int count) {
    return Intl.plural(
      count,
      one: '1 month ago',
      other: '$count months ago',
      name: 'monthsAgo',
      desc: '',
      args: [count],
    );
  }

  /// `Unique constraint error: {result}`
  String dbUniqueConstraintError(String result) {
    return Intl.message(
      'Unique constraint error: $result',
      name: 'dbUniqueConstraintError',
      desc: '',
      args: [result],
    );
  }

  /// `Syntax error in SQL query: {result}`
  String dbSyntaxError(String result) {
    return Intl.message(
      'Syntax error in SQL query: $result',
      name: 'dbSyntaxError',
      desc: '',
      args: [result],
    );
  }

  /// `Database is closed: {result}`
  String dbClosedError(String result) {
    return Intl.message(
      'Database is closed: $result',
      name: 'dbClosedError',
      desc: '',
      args: [result],
    );
  }

  /// `Database has duplicate column: {result}`
  String dbDuplicateColumnError(String result) {
    return Intl.message(
      'Database has duplicate column: $result',
      name: 'dbDuplicateColumnError',
      desc: '',
      args: [result],
    );
  }

  /// `Database table does not exist: {result}`
  String dbNoSuchTableError(String result) {
    return Intl.message(
      'Database table does not exist: $result',
      name: 'dbNoSuchTableError',
      desc: '',
      args: [result],
    );
  }

  /// `Database failed to open: {result}`
  String dbOpenFailedError(String result) {
    return Intl.message(
      'Database failed to open: $result',
      name: 'dbOpenFailedError',
      desc: '',
      args: [result],
    );
  }

  /// `Database exception: {result}`
  String dbGenericException(String result) {
    return Intl.message(
      'Database exception: $result',
      name: 'dbGenericException',
      desc: '',
      args: [result],
    );
  }

  /// `Path exception occurred.`
  String get pathException {
    return Intl.message(
      'Path exception occurred.',
      name: 'pathException',
      desc: '',
      args: [],
    );
  }

  /// `File exception occurred.`
  String get fileException {
    return Intl.message(
      'File exception occurred.',
      name: 'fileException',
      desc: '',
      args: [],
    );
  }

  /// `This email is already registered. Try logging in instead.`
  String get authEmailExists {
    return Intl.message(
      'This email is already registered. Try logging in instead.',
      name: 'authEmailExists',
      desc: '',
      args: [],
    );
  }

  /// `An account with this email or phone already exists. Please log in.`
  String get authUserAlreadyExists {
    return Intl.message(
      'An account with this email or phone already exists. Please log in.',
      name: 'authUserAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `This phone number is already registered.`
  String get authPhoneExists {
    return Intl.message(
      'This phone number is already registered.',
      name: 'authPhoneExists',
      desc: '',
      args: [],
    );
  }

  /// `Your password is too weak. Please use a stronger one with letters, numbers, and symbols.`
  String get authWeakPassword {
    return Intl.message(
      'Your password is too weak. Please use a stronger one with letters, numbers, and symbols.',
      name: 'authWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `That doesn't look like a valid email address.`
  String get authEmailInvalid {
    return Intl.message(
      'That doesn\'t look like a valid email address.',
      name: 'authEmailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `This email is not allowed for sign up. Please use a different one.`
  String get authEmailNotAuthorized {
    return Intl.message(
      'This email is not allowed for sign up. Please use a different one.',
      name: 'authEmailNotAuthorized',
      desc: '',
      args: [],
    );
  }

  /// `Sign ups are currently disabled. Please contact support.`
  String get authSignupDisabled {
    return Intl.message(
      'Sign ups are currently disabled. Please contact support.',
      name: 'authSignupDisabled',
      desc: '',
      args: [],
    );
  }

  /// `This sign up method is not available. Please choose another.`
  String get authProviderDisabled {
    return Intl.message(
      'This sign up method is not available. Please choose another.',
      name: 'authProviderDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Verification failed. Please complete the security check again.`
  String get authCaptchaFailed {
    return Intl.message(
      'Verification failed. Please complete the security check again.',
      name: 'authCaptchaFailed',
      desc: '',
      args: [],
    );
  }

  /// `Too many attempts. Please check your inbox or try again later.`
  String get authOverEmailRateLimit {
    return Intl.message(
      'Too many attempts. Please check your inbox or try again later.',
      name: 'authOverEmailRateLimit',
      desc: '',
      args: [],
    );
  }

  /// `Too many SMS attempts. Please wait a few minutes and try again.`
  String get authOverSmsRateLimit {
    return Intl.message(
      'Too many SMS attempts. Please wait a few minutes and try again.',
      name: 'authOverSmsRateLimit',
      desc: '',
      args: [],
    );
  }

  /// `Some of the details you entered are not valid. Please check and try again.`
  String get authValidationFailed {
    return Intl.message(
      'Some of the details you entered are not valid. Please check and try again.',
      name: 'authValidationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while creating your account. Please try again.`
  String get authUnexpectedFailure {
    return Intl.message(
      'Something went wrong while creating your account. Please try again.',
      name: 'authUnexpectedFailure',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password. Please try again.`
  String get authInvalidCredentials {
    return Intl.message(
      'Incorrect email or password. Please try again.',
      name: 'authInvalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find an account with these details.`
  String get authUserNotFound {
    return Intl.message(
      'We couldn\'t find an account with these details.',
      name: 'authUserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your email address before logging in. Check your inbox.`
  String get authEmailNotConfirmed {
    return Intl.message(
      'Please confirm your email address before logging in. Check your inbox.',
      name: 'authEmailNotConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been blocked. Please contact support for help.`
  String get authUserBanned {
    return Intl.message(
      'Your account has been blocked. Please contact support for help.',
      name: 'authUserBanned',
      desc: '',
      args: [],
    );
  }

  /// `Your session expired. Please log in again.`
  String get authSessionExpired {
    return Intl.message(
      'Your session expired. Please log in again.',
      name: 'authSessionExpired',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find your login session. Please sign in again.`
  String get authSessionNotFound {
    return Intl.message(
      'We couldn\'t find your login session. Please sign in again.',
      name: 'authSessionNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Your session has expired. Please log in again.`
  String get authRefreshTokenNotFound {
    return Intl.message(
      'Your session has expired. Please log in again.',
      name: 'authRefreshTokenNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Your login session is invalid. Please sign in again.`
  String get authBadJwt {
    return Intl.message(
      'Your login session is invalid. Please sign in again.',
      name: 'authBadJwt',
      desc: '',
      args: [],
    );
  }

  /// `Please log in again to continue.`
  String get authReauthenticationNeeded {
    return Intl.message(
      'Please log in again to continue.',
      name: 'authReauthenticationNeeded',
      desc: '',
      args: [],
    );
  }

  /// `Too many login attempts. Please wait a bit before trying again.`
  String get authOverRequestRateLimit {
    return Intl.message(
      'Too many login attempts. Please wait a bit before trying again.',
      name: 'authOverRequestRateLimit',
      desc: '',
      args: [],
    );
  }

  /// `This login method is not supported.`
  String get authOauthProviderNotSupported {
    return Intl.message(
      'This login method is not supported.',
      name: 'authOauthProviderNotSupported',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't connect to Google. Please try again.`
  String get authBadOauthCallback {
    return Intl.message(
      'We couldn\'t connect to Google. Please try again.',
      name: 'authBadOauthCallback',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong with Google login. Please try again.`
  String get authBadOauthState {
    return Intl.message(
      'Something went wrong with Google login. Please try again.',
      name: 'authBadOauthState',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your Google email before logging in.`
  String get authProviderEmailNeedsVerification {
    return Intl.message(
      'Please verify your Google email before logging in.',
      name: 'authProviderEmailNeedsVerification',
      desc: '',
      args: [],
    );
  }

  /// `This Google account is already linked to another user.`
  String get authIdentityAlreadyExists {
    return Intl.message(
      'This Google account is already linked to another user.',
      name: 'authIdentityAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `This account cannot be linked manually. Please log in using the main method.`
  String get authManualLinkingDisabled {
    return Intl.message(
      'This account cannot be linked manually. Please log in using the main method.',
      name: 'authManualLinkingDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. Please try again.`
  String get authDefaultError {
    return Intl.message(
      'Something went wrong. Please try again.',
      name: 'authDefaultError',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while signing in. Please try again.`
  String get googleSignInUnknownError {
    return Intl.message(
      'Something went wrong while signing in. Please try again.',
      name: 'googleSignInUnknownError',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in was canceled. Please try again if you still want to continue.`
  String get googleSignInCanceled {
    return Intl.message(
      'Sign-in was canceled. Please try again if you still want to continue.',
      name: 'googleSignInCanceled',
      desc: '',
      args: [],
    );
  }

  /// `The sign-in process was interrupted. Please try again.`
  String get googleSignInInterrupted {
    return Intl.message(
      'The sign-in process was interrupted. Please try again.',
      name: 'googleSignInInterrupted',
      desc: '',
      args: [],
    );
  }

  /// `There's a problem with the app's Google sign-in setup. Please contact support.`
  String get googleSignInClientConfigError {
    return Intl.message(
      'There\'s a problem with the app\'s Google sign-in setup. Please contact support.',
      name: 'googleSignInClientConfigError',
      desc: '',
      args: [],
    );
  }

  /// `Google sign-in is not configured correctly. Please try again later.`
  String get googleSignInProviderConfigError {
    return Intl.message(
      'Google sign-in is not configured correctly. Please try again later.',
      name: 'googleSignInProviderConfigError',
      desc: '',
      args: [],
    );
  }

  /// `Google sign-in is currently unavailable on this device.`
  String get googleSignInUiUnavailable {
    return Intl.message(
      'Google sign-in is currently unavailable on this device.',
      name: 'googleSignInUiUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `This Google account doesn't match the expected user. Try using a different account.`
  String get googleSignInUserMismatch {
    return Intl.message(
      'This Google account doesn\'t match the expected user. Try using a different account.',
      name: 'googleSignInUserMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Invalid input sent to the server.`
  String get functionsInvalidInput {
    return Intl.message(
      'Invalid input sent to the server.',
      name: 'functionsInvalidInput',
      desc: '',
      args: [],
    );
  }

  /// `You are not logged in. Please authenticate.`
  String get functionsNotLoggedIn {
    return Intl.message(
      'You are not logged in. Please authenticate.',
      name: 'functionsNotLoggedIn',
      desc: '',
      args: [],
    );
  }

  /// `You don't have permission to perform this action.`
  String get functionsNoPermission {
    return Intl.message(
      'You don\'t have permission to perform this action.',
      name: 'functionsNoPermission',
      desc: '',
      args: [],
    );
  }

  /// `The server endpoint does not exist.`
  String get functionsEndpointNotFound {
    return Intl.message(
      'The server endpoint does not exist.',
      name: 'functionsEndpointNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Please slow down.`
  String get functionsTooManyRequests {
    return Intl.message(
      'Too many requests. Please slow down.',
      name: 'functionsTooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Server error occurred. Try again later.`
  String get functionsServerError {
    return Intl.message(
      'Server error occurred. Try again later.',
      name: 'functionsServerError',
      desc: '',
      args: [],
    );
  }

  /// `The request timed out. Please try again.`
  String get functionsTimeout {
    return Intl.message(
      'The request timed out. Please try again.',
      name: 'functionsTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong with the server. Please try again.`
  String get functionsDefaultError {
    return Intl.message(
      'Something went wrong with the server. Please try again.',
      name: 'functionsDefaultError',
      desc: '',
      args: [],
    );
  }

  /// `You don't have permission to perform this action.`
  String get supabaseDbNoPermission {
    return Intl.message(
      'You don\'t have permission to perform this action.',
      name: 'supabaseDbNoPermission',
      desc: '',
      args: [],
    );
  }

  /// `Row-level security blocked this request.`
  String get supabaseDbRlsBlocked {
    return Intl.message(
      'Row-level security blocked this request.',
      name: 'supabaseDbRlsBlocked',
      desc: '',
      args: [],
    );
  }

  /// `You are not authorized. Please log in first.`
  String get supabaseDbNotAuthorized {
    return Intl.message(
      'You are not authorized. Please log in first.',
      name: 'supabaseDbNotAuthorized',
      desc: '',
      args: [],
    );
  }

  /// `You do not have access to this resource.`
  String get supabaseDbNoAccess {
    return Intl.message(
      'You do not have access to this resource.',
      name: 'supabaseDbNoAccess',
      desc: '',
      args: [],
    );
  }

  /// `The table you are trying to access does not exist.`
  String get supabaseDbTableNotExist {
    return Intl.message(
      'The table you are trying to access does not exist.',
      name: 'supabaseDbTableNotExist',
      desc: '',
      args: [],
    );
  }

  /// `The column you are trying to access does not exist.`
  String get supabaseDbColumnNotExist {
    return Intl.message(
      'The column you are trying to access does not exist.',
      name: 'supabaseDbColumnNotExist',
      desc: '',
      args: [],
    );
  }

  /// `This function does not exist in the database.`
  String get supabaseDbFunctionNotExist {
    return Intl.message(
      'This function does not exist in the database.',
      name: 'supabaseDbFunctionNotExist',
      desc: '',
      args: [],
    );
  }

  /// `The requested resource was not found.`
  String get supabaseDbNotFound {
    return Intl.message(
      'The requested resource was not found.',
      name: 'supabaseDbNotFound',
      desc: '',
      args: [],
    );
  }

  /// `This value already exists. Please use a different one (duplicate key).`
  String get supabaseDbDuplicateKey {
    return Intl.message(
      'This value already exists. Please use a different one (duplicate key).',
      name: 'supabaseDbDuplicateKey',
      desc: '',
      args: [],
    );
  }

  /// `This record is linked to another and cannot be deleted/updated (foreign key violation).`
  String get supabaseDbForeignKeyViolation {
    return Intl.message(
      'This record is linked to another and cannot be deleted/updated (foreign key violation).',
      name: 'supabaseDbForeignKeyViolation',
      desc: '',
      args: [],
    );
  }

  /// `A required field is missing. Please fill in all required details.`
  String get supabaseDbRequiredFieldMissing {
    return Intl.message(
      'A required field is missing. Please fill in all required details.',
      name: 'supabaseDbRequiredFieldMissing',
      desc: '',
      args: [],
    );
  }

  /// `One of the values does not meet the database rules (check constraint).`
  String get supabaseDbCheckConstraint {
    return Intl.message(
      'One of the values does not meet the database rules (check constraint).',
      name: 'supabaseDbCheckConstraint',
      desc: '',
      args: [],
    );
  }

  /// `One of your inputs is too long. Please shorten it and try again.`
  String get supabaseDbInputTooLong {
    return Intl.message(
      'One of your inputs is too long. Please shorten it and try again.',
      name: 'supabaseDbInputTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Invalid date or time format. Please use the correct format.`
  String get supabaseDbInvalidDateFormat {
    return Intl.message(
      'Invalid date or time format. Please use the correct format.',
      name: 'supabaseDbInvalidDateFormat',
      desc: '',
      args: [],
    );
  }

  /// `Invalid input type. Please check your data.`
  String get supabaseDbInvalidInputType {
    return Intl.message(
      'Invalid input type. Please check your data.',
      name: 'supabaseDbInvalidInputType',
      desc: '',
      args: [],
    );
  }

  /// `The database has too many connections. Please try again later.`
  String get supabaseDbTooManyConnections {
    return Intl.message(
      'The database has too many connections. Please try again later.',
      name: 'supabaseDbTooManyConnections',
      desc: '',
      args: [],
    );
  }

  /// `The request took too long and was canceled. Please try again.`
  String get supabaseDbRequestCanceled {
    return Intl.message(
      'The request took too long and was canceled. Please try again.',
      name: 'supabaseDbRequestCanceled',
      desc: '',
      args: [],
    );
  }

  /// `An internal database error occurred. Please try again later.`
  String get supabaseDbInternalError {
    return Intl.message(
      'An internal database error occurred. Please try again later.',
      name: 'supabaseDbInternalError',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected database error. Please try again later.`
  String get supabaseDbUnexpectedError {
    return Intl.message(
      'Unexpected database error. Please try again later.',
      name: 'supabaseDbUnexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `This record already exists. Please use different values.`
  String get supabaseDbConflict {
    return Intl.message(
      'This record already exists. Please use different values.',
      name: 'supabaseDbConflict',
      desc: '',
      args: [],
    );
  }

  /// `There is a problem with the database query (syntax error).`
  String get supabaseDbSyntaxError {
    return Intl.message(
      'There is a problem with the database query (syntax error).',
      name: 'supabaseDbSyntaxError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid request. Please check the information you entered.`
  String get supabaseDbInvalidRequest {
    return Intl.message(
      'Invalid request. Please check the information you entered.',
      name: 'supabaseDbInvalidRequest',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong with the database. Please try again.`
  String get supabaseDbDefaultError {
    return Intl.message(
      'Something went wrong with the database. Please try again.',
      name: 'supabaseDbDefaultError',
      desc: '',
      args: [],
    );
  }

  /// `Too many failed attempts. Biometrics are temporarily locked. Please try again later.`
  String get biometricLockedOut {
    return Intl.message(
      'Too many failed attempts. Biometrics are temporarily locked. Please try again later.',
      name: 'biometricLockedOut',
      desc: '',
      args: [],
    );
  }

  /// `Too many failed attempts. Biometrics are disabled. Please unlock with your PIN/Password to reset them.`
  String get biometricPermanentlyLockedOut {
    return Intl.message(
      'Too many failed attempts. Biometrics are disabled. Please unlock with your PIN/Password to reset them.',
      name: 'biometricPermanentlyLockedOut',
      desc: '',
      args: [],
    );
  }

  /// `Biometric authentication is not available on this device.`
  String get biometricNotAvailableDevice {
    return Intl.message(
      'Biometric authentication is not available on this device.',
      name: 'biometricNotAvailableDevice',
      desc: '',
      args: [],
    );
  }

  /// `No biometrics set up. Please register a fingerprint or face ID in your device settings.`
  String get biometricNotEnrolled {
    return Intl.message(
      'No biometrics set up. Please register a fingerprint or face ID in your device settings.',
      name: 'biometricNotEnrolled',
      desc: '',
      args: [],
    );
  }

  /// `Device passcode is not set. Please configure a security pin, pattern, or password in your device settings.`
  String get biometricPasscodeNotSet {
    return Intl.message(
      'Device passcode is not set. Please configure a security pin, pattern, or password in your device settings.',
      name: 'biometricPasscodeNotSet',
      desc: '',
      args: [],
    );
  }

  /// `Biometric authentication is not supported on this operating system.`
  String get biometricOtherOS {
    return Intl.message(
      'Biometric authentication is not supported on this operating system.',
      name: 'biometricOtherOS',
      desc: '',
      args: [],
    );
  }

  /// `Biometric authentication failed due to an unknown error.`
  String get biometricUnknownError {
    return Intl.message(
      'Biometric authentication failed due to an unknown error.',
      name: 'biometricUnknownError',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again.`
  String get networkError {
    return Intl.message(
      'Please check your internet connection and try again.',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `The connection has timed out. Please try again!`
  String get timeoutError {
    return Intl.message(
      'The connection has timed out. Please try again!',
      name: 'timeoutError',
      desc: '',
      args: [],
    );
  }

  /// `An unknown exception occurred.`
  String get unknownError {
    return Intl.message(
      'An unknown exception occurred.',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'hi'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ja'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'tr'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
