import 'package:flutter/material.dart';
import 'package:notey/Core/components/custom_switch_tile.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:notey/generated/l10n.dart';

class SyncSwitch extends StatelessWidget {
  const SyncSwitch({super.key, this.user, required this.isSyncEnabled});

  final User? user;

  final bool isSyncEnabled;

  @override
  Widget build(BuildContext context) {
    return CustomSwitchTile(
      icon: Icons.sync,
      title: S.of(context).syncNotes,
      subtitle: S.of(context).syncNotesSubtitle,
      value: isSyncEnabled,
      onChanged: user != null
          ? (value) async {
              context.read<SettingsProvider>().triggerSync(value);
            }
          : null,
    );
  }
}
