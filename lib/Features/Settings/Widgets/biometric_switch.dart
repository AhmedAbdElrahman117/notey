import 'package:flutter/material.dart';
import 'package:notey/Core/biometric_service.dart';
import 'package:notey/Core/components/custom_switch_tile.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Settings/View%20Model/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class BiometricSwitch extends StatelessWidget {
  const BiometricSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    bool isBiometricAvailable = context
        .watch<ThemeCubit>()
        .state
        .isBiometricEnabled;

    bool enableBiometric = context.watch<SettingsProvider>().enableFingerprint;

    return CustomSwitchTile(
      value: isBiometricAvailable,
      icon: Icons.lock,
      title: isBiometricAvailable
          ? S.of(context).disableAppLock
          : S.of(context).enableAppLock,
      subtitle: S.of(context).appLockSubtitle,
      onChanged: enableBiometric
          ? (value) async {
              var success = await BiometricService().auth(
                reason: S.of(context).authToChangeAppLock,
              );
              success.fold(
                (l) => Toast.showFailed(message: l.getException()),
                (r) {
                  if (r) {
                    context.read<ThemeCubit>().toggleBiometric(value);
                  } else {
                    Toast.showFailed(
                      message: S.of(context).authFailed,
                    );
                  }
                },
              );
            }
          : null,
    );
  }
}
