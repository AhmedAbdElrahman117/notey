import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notey/generated/l10n.dart';

class ThemeCubit extends HydratedCubit<AppTheme> {
  ThemeCubit()
    : super(
        AppTheme(
          themeMode: getSystemThemeMode(),
          locale: getSystemLocale(),
          isBiometricEnabled: false,
          fontFamily: getFontFamily(),
        ),
      );

  void toggleTheme() {
    if (state.themeMode == ThemeMode.light) {
      emit(
        AppTheme(
          themeMode: ThemeMode.dark,
          locale: state.locale,
          isBiometricEnabled: state.isBiometricEnabled,
          fontFamily: state.fontFamily,
        ),
      );
    } else {
      emit(
        AppTheme(
          themeMode: ThemeMode.light,
          locale: state.locale,
          isBiometricEnabled: state.isBiometricEnabled,
          fontFamily: state.fontFamily,
        ),
      );
    }
  }

  void toggleLocale({required String localeCode, required String fontFamily}) {
    emit(
      AppTheme(
        locale: Locale(localeCode),
        fontFamily: fontFamily,
        themeMode: state.themeMode,
        isBiometricEnabled: state.isBiometricEnabled,
      ),
    );
  }

  void toggleBiometric(bool isEnabled) {
    emit(
      AppTheme(
        themeMode: state.themeMode,
        locale: state.locale,
        isBiometricEnabled: isEnabled,
        fontFamily: state.fontFamily,
      ),
    );
  }

  static ThemeMode getSystemThemeMode() {
    return PlatformDispatcher.instance.platformBrightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  static Locale getSystemLocale() {
    Locale systemLocale = PlatformDispatcher.instance.locale;
    if (!S.delegate.supportedLocales.contains(systemLocale)) {
      return const Locale('en');
    }
    return systemLocale;
  }

  static String getFontFamily() {
    Locale systemLocale = PlatformDispatcher.instance.locale;
    switch (systemLocale.languageCode) {
      case 'ar':
        return 'Cairo'; // Arabic
      case 'hi':
        return 'Hind'; // Hindi
      case 'ja':
        return 'NotoSansJP'; // Japanese
      case 'ko':
        return 'NotoSansKR'; // Korean
      case 'zh':
        return 'NotoSansSC'; // Chinese
      default:
        return 'Inter'; // English & everything else
    }
  }

  @override
  AppTheme? fromJson(Map<String, dynamic> json) {
    return AppTheme(
      themeMode: json['themeMode'] == 'light'
          ? ThemeMode.light
          : ThemeMode.dark,
      locale: Locale(json['locale'] as String),
      isBiometricEnabled: json['isBiometricEnabled'] as bool,
      fontFamily: json['fontFamily'] as String,
    );
  }

  @override
  Map<String, dynamic>? toJson(AppTheme state) {
    return {
      'themeMode': state.themeMode == ThemeMode.light ? 'light' : 'dark',
      'locale': state.locale.languageCode,
      'isBiometricEnabled': state.isBiometricEnabled,
      'fontFamily': state.fontFamily,
    };
  }
}

class AppTheme {
  ThemeMode themeMode;
  Locale locale;
  bool isBiometricEnabled;
  String fontFamily;

  AppTheme({
    required this.themeMode,
    required this.locale,
    required this.isBiometricEnabled,
    required this.fontFamily,
  });
}
