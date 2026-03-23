// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/biometric_service.dart';
import 'package:notey/Core/app_transitions.dart';
import 'package:notey/Core/theme_cubit.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Auth/login_view.dart';
import 'package:notey/Features/Home/home_view.dart';
import 'package:notey/Features/Onboarding/onboarding_view.dart';
import 'package:notey/Features/Splash/View%20Model/splash_cubit.dart';
import 'package:notey/Features/Splash/Widgets/splash_background.dart';
import 'package:notey/Features/Splash/Widgets/splash_body.dart';
import 'package:notey/generated/l10n.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late final AnimationController backgroundController;
  late final AnimationController textController;
  late final AnimationController logoController;
  late final AnimationController progressController;

  @override
  void initState() {
    initController();
    forwardControllers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBackground(
        backgroundController: backgroundController,
        body: SplashBody(
          logoController: logoController,
          textController: textController,
          progressController: progressController,
        ),
      ),
    );
  }

  void initController() {
    backgroundController = AnimationController(
      vsync: this,
      duration: 800.milliseconds,
    );
    textController = AnimationController(
      vsync: this,
      duration: 1000.milliseconds,
    );
    logoController = AnimationController(
      vsync: this,
      duration: 800.milliseconds,
    );
    progressController = AnimationController(
      vsync: this,
      duration: 400.milliseconds,
    );
  }

  void forwardControllers() async {
    await backgroundController.forward();

    await Future.wait(
      [
        textController.forward(),
        logoController.forward(),
      ],
    );

    // await Future.delayed(350.ms);

    await progressController.forward();

    await checkOnboardingStatus();
  }

  Future<void> checkOnboardingStatus() async {
    var state = context.read<SplashCubit>().state;
    bool isBiometricEnabled = context
        .read<ThemeCubit>()
        .state
        .isBiometricEnabled;

    if (state.showOnBoarding == false) {
      if (isBiometricEnabled) {
        bool biometricSuccess = await checkBiometric();
        if (biometricSuccess) {
          AppTransitions().pushTo(
            context,
            type: AppTransitionType.fadeScale,
            replace: true,
            to: HomeView(),
          );
        } else {
          return;
        }
      } else {
        if (state.isLoggedIn || state.skipLogin) {
          AppTransitions().pushTo(
            context,
            type: AppTransitionType.fadeScale,
            replace: true,
            to: HomeView(),
          );
        } else {
          await cacheLoginImages();
          AppTransitions().pushTo(
            context,
            type: AppTransitionType.fadeScale,
            replace: true,
            to: LoginView(),
          );
        }
      }
    } else {
      await cacheOnboardingImages();
      AppTransitions().pushTo(
        context,
        type: AppTransitionType.fadeScale,
        replace: true,
        to: OnboardingView(),
      );
    }
  }

  Future<bool> checkBiometric() async {
    var res = await BiometricService().auth(
      reason: S.of(context).biometricAuthReason,
    );

    return res.fold(
      (l) {
        Toast.showFailed(message: l.getException());
        return false;
      },
      (r) => true,
    );
  }

  Future<void> cacheLoginImages() async {
    await precacheImage(Svg(Assets.google), context);
  }

  Future<void> cacheOnboardingImages() async {
    await precacheImage(Svg(Assets.formats), context);
    await precacheImage(Svg(Assets.secure), context);
    await precacheImage(Svg(Assets.sync), context);
  }
}
