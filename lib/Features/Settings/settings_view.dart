import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/components/custom_back_button.dart';
import 'package:notey/Core/components/custom_loading_indicator.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:notey/Features/Settings/Widgets/about_app.dart';
import 'package:notey/Features/Settings/Widgets/biometric_switch.dart';
import 'package:notey/Features/Settings/Widgets/export_button.dart';
import 'package:notey/Features/Settings/Widgets/import_button.dart';
import 'package:notey/Features/Settings/Widgets/language_tile.dart';
import 'package:notey/Features/Settings/Widgets/profile.dart';
import 'package:notey/Features/Settings/Widgets/sync_switch.dart';
import 'package:notey/Features/Settings/Widgets/theme_switch.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:notey/generated/l10n.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      builder: (context, child) {
        User? user = context.watch<SettingsProvider>().currentUser;

        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(
                leading: CustomBackButton(),
                title: Text(
                  S.of(context).settings,
                  style: AppText.semiBold22(context, color: AppColors.logo),
                ),
                centerTitle: true,
              ),
              body: SafeArea(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom: 16,
                  ),
                  children: [
                    Profile(user: user),
                    SizedBox(height: 20),
                    LanguageTile(),
                    SizedBox(height: 20),
                    ThemeSwitch(),
                    SizedBox(height: 20),
                    SyncSwitch(
                      user: user,
                      isSyncEnabled: context
                          .watch<SettingsProvider>()
                          .isSyncEnabled,
                    ),
                    SizedBox(height: 20),
                    BiometricSwitch(),
                    SizedBox(height: 20),
                    ImportButton(),
                    SizedBox(height: 20),
                    ExportButton(),
                    SizedBox(height: 20),
                    AboutApp(),
                  ],
                ),
              ),
            ),

            CustomLoadingIndicator(
              isLoading: context.watch<SettingsProvider>().isLoading,
            ),
          ],
        );
      },
    );
  }
}
