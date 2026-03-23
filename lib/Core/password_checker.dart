import 'package:flutter/material.dart';
import 'package:notey/Core/constants.dart';
import 'package:notey/Features/Auth/Models/password_constraint_model.dart';
import 'package:notey/generated/l10n.dart';

class PasswordChecker {
  PasswordConstraintModel lengthConstraint = PasswordConstraintModel(
    title: S.current.constraintLength,
    isAchieved: ValueNotifier<bool>(false),
  );
  PasswordConstraintModel uppercaseConstraint = PasswordConstraintModel(
    title: S.current.constraintUppercase,
    isAchieved: ValueNotifier<bool>(false),
  );
  PasswordConstraintModel specialCharConstraint = PasswordConstraintModel(
    title: S.current.constraintSpecialChar,
    isAchieved: ValueNotifier<bool>(false),
  );
  PasswordConstraintModel numbersConstraint = PasswordConstraintModel(
    title: S.current.constraintNumbers,
    isAchieved: ValueNotifier<bool>(false),
  );

  late final List<PasswordConstraintModel> constraints;

  PasswordChecker() {
    constraints = [
      lengthConstraint,
      uppercaseConstraint,
      specialCharConstraint,
      numbersConstraint,
    ];
  }

  void checkAll(String value) {
    lengthConstraint.isAchieved.value = kLengthRegex.hasMatch(value);
    uppercaseConstraint.isAchieved.value = kUppercaseRegex.hasMatch(value);
    specialCharConstraint.isAchieved.value = kSpecialCharRegex.hasMatch(value);
    numbersConstraint.isAchieved.value = kTwoDigitsRegex.hasMatch(value);
  }

  bool allValid() {
    for (var constraint in constraints) {
      if (!constraint.isAchieved.value) {
        return false;
      }
    }
    return true;
  }
}
