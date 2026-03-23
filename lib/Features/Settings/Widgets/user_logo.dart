import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';

class UserLogo extends StatelessWidget {
  const UserLogo({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.logo,
          width: 4,
        ),
      ),
      child: CircleAvatar(
        radius: 60,
        backgroundColor: AppColors.logo.withValues(alpha: 0.5),
        child: Text(
          userInitials,
          style: AppText.bold28(context, color: Colors.white),
        ),
      ),
    );
  }

  String get userInitials {
    if (userName.isEmpty) return '';
    List<String> names = userName.split(' ');
    if (names.length == 1) {
      return names[0][0].toUpperCase() + names[0][1].toUpperCase();
    } else {
      return names[0][0].toUpperCase() + names[1][0].toUpperCase();
    }
  }
}
