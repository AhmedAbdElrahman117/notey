import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/Features/Auth/login_view.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class NoLoggedUser extends StatelessWidget {
  const NoLoggedUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: AppColors.logo,
          child: Icon(
            Icons.person,
            size: 52,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 28),
        Text(
          S.of(context).guestUser,
          maxLines: 1,
          style: AppText.bold24(context, color: AppColors.logo),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 8),
        Text(
          S.of(context).loginToSync,
          textAlign: TextAlign.center,
          style: AppText.regular18(
            context,
            color: ThemeHelper.descriptionColor(context),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {
            AppTransitions().pushTo(
              context,
              to: LoginView(
                showSkipButton: false,
                onSuccess: () {
                  Navigator.pop(context);
                  context.read<SettingsProvider>().isLoggedIn();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.logo,
            elevation: 4,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          icon: Icon(Icons.login, color: Colors.white),
          label: Text(
            S.of(context).login,
            style: AppText.semiBold18(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
