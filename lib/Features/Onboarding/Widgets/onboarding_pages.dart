import 'package:flutter/material.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Features/Onboarding/Models/onboarding_model.dart';
import 'package:notey/Features/Onboarding/Provider/onboarding_provider.dart';
import 'package:notey/Features/Onboarding/Widgets/onboarding_page.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> pages = [
      OnboardingModel(
        image: Assets.sync,
        title: S.of(context).onboardingTitle1,
        description: S.of(context).onboardingDescription1,
      ),

      OnboardingModel(
        image: Assets.formats,
        title: S.of(context).onboardingTitle2,
        description: S.of(context).onboardingDescription2,
      ),

      OnboardingModel(
        image: Assets.secure,
        title: S.of(context).onboardingTitle3,
        description: S.of(context).onboardingDescription3,
      ),
    ];
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {
          context.read<OnboardingProvider>().setCurrentPage(value);
        },
        itemCount: pages.length,
        itemBuilder: (context, index) => OnboardingPage(
          model: pages[index],
        ),
      ),
    );
  }
}
