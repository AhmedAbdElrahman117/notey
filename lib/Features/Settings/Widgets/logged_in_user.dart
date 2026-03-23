import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Settings/Dialogs/logout_dialog.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:notey/Features/Settings/Widgets/user_logo.dart';
import 'package:notey/generated/l10n.dart';

class LoggedInUser extends StatelessWidget {
  const LoggedInUser({super.key, required this.email, required this.name});

  final String email;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UserLogo(userName: name),
        SizedBox(height: 28),
        userName(context),
        SizedBox(height: 8),
        userEmail(context),
        SizedBox(height: 28),
        logoutButton(context),
      ],
    );
  }

  ElevatedButton logoutButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        AppDialogs().show(
          context,
          LogoutDialog(
            onConfirm: () {
              Navigator.pop(context);
              context.read<SettingsProvider>().logout();
            },
          ),
        );
      },
      label: Text(
        S.of(context).logout,
        style: AppText.semiBold16(context).copyWith(
          color: Colors.white,
        ),
      ),

      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        elevation: 8,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      icon: Icon(Icons.logout),
    );
  }

  Text userEmail(BuildContext context) {
    return Text(
      email,
      maxLines: 1,
      style: AppText.regular18(
        context,
        color: ThemeHelper.descriptionColor(context),
      ),
      overflow: TextOverflow.ellipsis,
    );
  }

  Text userName(BuildContext context) {
    return Text(
      name,
      maxLines: 1,
      style: AppText.bold24(context, color: AppColors.logo),
      overflow: TextOverflow.ellipsis,
    );
  }
}
