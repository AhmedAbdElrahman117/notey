import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notey/Core/components/custom_switch_tile.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:notey/generated/l10n.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeCubit>().state.themeMode;
    return CustomSwitchTile(
      value: theme == ThemeMode.dark,
      icon: Icons.dark_mode,
      title: S.of(context).darkMode,
      subtitle: theme == ThemeMode.dark
          ? S.of(context).disableDarkMode
          : S.of(context).enableDarkMode,
      onChanged: (value) {
        context.read<ThemeCubit>().toggleTheme();
      },
    );
  }
}
