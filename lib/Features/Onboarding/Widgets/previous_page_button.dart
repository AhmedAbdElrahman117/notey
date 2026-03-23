import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Features/Onboarding/Provider/onboarding_provider.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class PreviousPageButton extends StatelessWidget {
  const PreviousPageButton({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        context.read<OnboardingProvider>().previousPage();
        await pageController.previousPage(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
        );
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.logo,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(36),
        ),
        side: BorderSide(color: AppColors.logo, width: 2.5),
      ),
      child: Text(
        S.of(context).previous,
        style: AppText.regular16(context),
      ),
    );
  }
}
