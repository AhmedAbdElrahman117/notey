import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_tile.dart';
import 'package:notey/generated/l10n.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      icon: Icons.info_outline,
      title: S.of(context).aboutNotey,
      onTap: () {
        showAboutDialog(
          context: context,
          applicationName: S.of(context).appTitle,
          applicationVersion: S.of(context).appVersion,
          applicationLegalese: S.of(context).appLegalese,
          applicationIcon: Image.asset(
            Assets.logo,
            height: 55,
            width: 55,
          ),
        );
      },
    );
  }
}
