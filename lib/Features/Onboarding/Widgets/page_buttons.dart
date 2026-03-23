import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Features/Auth/login_view.dart';
import 'package:notey/Features/Onboarding/Provider/onboarding_provider.dart';
import 'package:notey/Features/Onboarding/Widgets/onboarding_button.dart';
import 'package:notey/Features/Onboarding/Widgets/previous_page_button.dart';
import 'package:notey/Features/Splash/View%20Model/splash_cubit.dart';
import 'package:provider/provider.dart';
import 'package:notey/generated/l10n.dart';

class PageButtons extends StatelessWidget {
  const PageButtons({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: context.watch<OnboardingProvider>().isLastPage,
            child: PreviousPageButton(
              pageController: pageController,
            ),
          ),
          Visibility(
            //if true show next button else show get started button
            visible: context.watch<OnboardingProvider>().isFirstPage,
            replacement: OnboardingButton(
              text: S.of(context).getStarted,
              onPressed: () {
                submit(context);
              },
            ),
            child: OnboardingButton(
              text: S.of(context).next,
              onPressed: () {
                next(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void submit(BuildContext context) async {
    context.read<SplashCubit>().setShowOnBoarding(false);
    AppTransitions().pushTo(
      context,
      replace: true,
      type: AppTransitionType.fadeSlideRight,
      to: LoginView(),
    );
  }

  void next(BuildContext context) async {
    context.read<OnboardingProvider>().nextPage();
    await pageController.nextPage(
      duration: 300.ms,
      curve: Curves.easeInOut,
    );
  }
}
