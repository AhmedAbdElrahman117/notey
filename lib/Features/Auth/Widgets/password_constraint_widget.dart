import 'package:flutter/material.dart';
import 'package:notey/Features/Auth/Models/password_constraint_model.dart';
import 'package:notey/Features/Auth/Widgets/password_constraint.dart';

class PasswordConstraintWidget extends StatelessWidget {
  const PasswordConstraintWidget({
    super.key,
    required this.constraints,
  });

  final List<PasswordConstraintModel> constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: constraints
          .map(
            (e) => ValueListenableBuilder(
              valueListenable: e.isAchieved,
              builder: (context, value, child) => PasswordConstraint(
                isAchieved: value,
                constraintTitle: e.title,
              ),
            ),
          )
          .toList(),
    );
  }
}
