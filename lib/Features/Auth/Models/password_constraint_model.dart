import 'package:flutter/material.dart';

class PasswordConstraintModel {
  final String title;
  final ValueNotifier<bool> isAchieved;

  PasswordConstraintModel({
    required this.isAchieved,
    required this.title,
  });
}
