// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/components/custom_tile.dart';
import 'package:notey/Features/Settings/Dialogs/create_password_dialog.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class ExportButton extends StatelessWidget {
  const ExportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      icon: FontAwesomeIcons.download,
      title: S.of(context).exportNotes,
      onTap: () async {
        var password =
            await AppDialogs().show(context, CreatePasswordDialog()) as String?;

        if (password != null && password.trim().isNotEmpty) {
          await context.read<SettingsProvider>().exportNotes(
            password: password,
          );
        }
      },
    );
  }
}
