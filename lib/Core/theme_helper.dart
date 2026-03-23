import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:pinput/pinput.dart';

class ThemeHelper {
  ThemeHelper._();

  static bool isDarkMode(BuildContext context) =>
      context.watch<ThemeCubit>().state.themeMode == ThemeMode.dark;

  static bool readDarkMode(BuildContext context) =>
      context.read<ThemeCubit>().state.themeMode == ThemeMode.dark;

  static PinTheme pinTheme(BuildContext context) {
    PinTheme pinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: AppText.semiBold18(context),
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
    return isDarkMode(context)
        ? pinTheme.copyDecorationWith(
            color: Colors.grey.shade800,
          )
        : pinTheme.copyDecorationWith(
            color: Colors.grey.shade300,
          );
  }

  static Color shadowColor(BuildContext context) =>
      isDarkMode(context) ? Colors.grey.shade200 : Colors.black;

  static Color descriptionColor(BuildContext context) =>
      isDarkMode(context) ? Colors.grey.shade400 : Colors.grey.shade600;

  static Color highlightText(BuildContext context) =>
      isDarkMode(context) ? Colors.white : Colors.black;

  static Color noteColor(BuildContext context) =>
      isDarkMode(context) ? Colors.grey.shade900 : Colors.grey.shade300;

  static Color bottomBarColor(BuildContext context) =>
      isDarkMode(context) ? Colors.grey.shade800 : Colors.grey.shade400;

  static Color noteTitleColor(BuildContext context) =>
      isDarkMode(context) ? Colors.grey.shade700 : Colors.grey.shade500;

  static Color hintColor(BuildContext context) => Colors.grey;

  static Color iconColor(BuildContext context) =>
      isDarkMode(context) ? Colors.white : Colors.black;

  static Color textColor(BuildContext context) =>
      isDarkMode(context) ? Colors.white : Colors.black;

  static Color readBackgroundColor(BuildContext context) =>
      readDarkMode(context) ? Colors.black : Colors.white;

  static Color? borderColor(BuildContext context) =>
      isDarkMode(context) ? Colors.white : null;

  static Color buttonBackgroundColor(BuildContext context) =>
      isDarkMode(context) ? Colors.black54 : Colors.grey.shade300;

  static Color dividerColor(BuildContext context) =>
      isDarkMode(context) ? Colors.white : Colors.black;
}
