import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  AppColors._() {
    colors = [
      AppColors.logo,
      ...Colors.accents,
      ...Colors.primaries,
    ];
  }

  static final AppColors instance = AppColors._();

  factory AppColors() => instance;

  static final Color logo = Color(0xFF00A5C9);

  final Random _random = Random();

  late final List<Color> colors;

  Color getRandomColor() => colors.elementAt(_random.nextInt(colors.length));
}
