import 'package:flutter/material.dart';
import 'package:notey/Core/app_dialogs.dart';
import 'package:notey/Core/components/custom_tile.dart';
import 'package:notey/Features/Settings/Dialogs/pick_language_dialog.dart';
import 'package:notey/generated/l10n.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      icon: Icons.language,
      title: S.of(context).language,
      subtitle: S.of(context).languageSubtitle,
      onTap: () {
        AppDialogs().show(
          context,
          PickLanguageDialog(),
        );
      },
    );
  }
}
