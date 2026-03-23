import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class PasswordConstraint extends StatelessWidget {
  const PasswordConstraint({
    super.key,
    required this.isAchieved,
    required this.constraintTitle,
  });

  final bool isAchieved;
  final String constraintTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: AnimatedContainer(
        duration: 350.ms,
        decoration: BoxDecoration(
          color: isAchieved ? Colors.green : Colors.grey.shade300,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.check,
          color: isAchieved ? Colors.white : Colors.black,
        ),
      ),
      title: Text(constraintTitle),
    );
  }
}
