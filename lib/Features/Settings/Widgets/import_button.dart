import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/components/custom_tile.dart';
import 'package:notey/Features/Settings/Dialogs/file_password_dialog.dart';
import 'package:notey/Features/Settings/Dialogs/import_conflict_dialog.dart';
import 'package:notey/Features/Settings/Services/import_service.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class ImportButton extends StatelessWidget {
  const ImportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      icon: FontAwesomeIcons.fileImport,
      title: S.of(context).importNotes,
      onTap: () async => await context.read<SettingsProvider>().importNotes(
        onConflict: (db) async {
          var res = await AppDialogs<ConflictAction>().show(
            context,
            ImportConflictDialog(dbType: db),
          );
          return res;
        },
        filePassword: () async {
          var password = await AppDialogs<String?>().show(
            context,
            FilePasswordDialog(),
          );

          return password;
        },
      ),
    );
  }
}
