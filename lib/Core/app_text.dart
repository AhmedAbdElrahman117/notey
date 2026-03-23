import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:notey/Core/theme_helper.dart';

class AppText {
  AppText._();

  static AppText? instance;

  factory AppText() {
    if (instance == null) {
      instance = AppText._();
      return instance!;
    }
    return instance!;
  }

  static const double _designWidth = 375.0;

  // Calculate responsive size with strict range [-2, +2]
  static double _getResponsiveFontSize(BuildContext context, double fontSize) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double scaleFactor = screenWidth / _designWidth;

    double responsiveSize = fontSize * scaleFactor;

    // RULE: The value will never go lower than (fontSize - 2)
    // and never go higher than (fontSize + 2)
    return responsiveSize.clamp(fontSize - 2.0, fontSize + 2.0);
  }

  // 3. Helper: Private method to apply styles
  static TextStyle _getTextStyle(
    BuildContext context,
    double fontSize,
    FontWeight fontWeight,
    Color? color, [
    bool? staticSize = false,
  ]) {
    return TextStyle(
      fontSize: staticSize!
          ? fontSize
          : _getResponsiveFontSize(context, fontSize),
      color: color ?? ThemeHelper.textColor(context),
      fontWeight: fontWeight,
      fontFamily: context.read<ThemeCubit>().state.fontFamily,
    );
  }

  // ---------- Size 14 ----------
  static TextStyle regular14(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 14, FontWeight.normal, color);

  static TextStyle semiBold14(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 14, FontWeight.w600, color);

  static TextStyle bold14(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 14, FontWeight.bold, color);

  // ---------- Size 16 ----------
  static TextStyle regular16(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 16, FontWeight.normal, color);

  static TextStyle semiBold16(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 16, FontWeight.w600, color);

  static TextStyle bold16(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 16, FontWeight.bold, color);

  // ---------- Size 18 ----------
  static TextStyle regular18(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 18, FontWeight.normal, color);

  static TextStyle semiBold18(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 18, FontWeight.w600, color);

  static TextStyle bold18(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 18, FontWeight.bold, color);

  // ---------- Size 20 ----------
  static TextStyle regular20(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 20, FontWeight.normal, color);

  static TextStyle semiBold20(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 20, FontWeight.w600, color);

  static TextStyle bold20(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 20, FontWeight.bold, color);

  // ---------- Size 22 ----------
  static TextStyle regular22(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 22, FontWeight.normal, color);

  static TextStyle semiBold22(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 22, FontWeight.w600, color);

  static TextStyle bold22(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 22, FontWeight.bold, color);

  // ---------- Size 24 ----------
  static TextStyle regular24(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 24, FontWeight.normal, color);

  static TextStyle semiBold24(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 24, FontWeight.w600, color);

  static TextStyle bold24(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 24, FontWeight.bold, color);

  // ---------- Size 26 ----------
  static TextStyle regular26(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 26, FontWeight.normal, color);

  static TextStyle semiBold26(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 26, FontWeight.w600, color);

  static TextStyle bold26(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 26, FontWeight.bold, color);

  // ---------- Size 28 ----------
  static TextStyle regular28(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 28, FontWeight.normal, color);

  static TextStyle semiBold28(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 28, FontWeight.w600, color);

  static TextStyle bold28(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 28, FontWeight.bold, color);

  // ---------- Size 36 ----------
  static TextStyle bold36(BuildContext context, {Color? color}) =>
      _getTextStyle(context, 36, FontWeight.bold, color);
}
