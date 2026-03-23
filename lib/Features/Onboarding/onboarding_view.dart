import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Features/Onboarding/Provider/onboarding_provider.dart';
import 'package:notey/Features/Onboarding/Widgets/onboarding_pages.dart';
import 'package:notey/Features/Onboarding/Widgets/page_buttons.dart';
import 'package:notey/Features/Onboarding/Widgets/page_indicator.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingProvider(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            S.of(context).appTitle,
            style: AppText.bold28(context, color: AppColors.logo),
          ),
        ),
        body: Column(
          children: [
            OnboardingPages(
              pageController: pageController,
            ),
            PageIndicator(
              pageController: pageController,
            ),
            PageButtons(
              pageController: pageController,
            ),
          ],
        ),
      ),
    );
  }
}
