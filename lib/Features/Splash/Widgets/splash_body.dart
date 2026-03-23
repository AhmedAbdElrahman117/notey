import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Features/Splash/Widgets/type_writer_text.dart';
import 'package:notey/generated/l10n.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    super.key,
    required this.logoController,
    required this.textController,
    required this.progressController,
  });

  final AnimationController logoController;
  final AnimationController textController;
  final AnimationController progressController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          logo(),
          TypewriterText(
            controller: textController,
            text: S.current.appTitle,
            style: AppText.bold36(context).copyWith(
              color: AppColors.logo,
            ),
          ),
          SizedBox(height: 60),
          loading(),
        ],
      ),
    );
  }

  Animate logo() {
    return SizedBox(
          height: 300,
          child: Image.asset(Assets.logo),
        )
        .animate(autoPlay: false, controller: logoController)
        .fadeIn(duration: logoController.duration!);
  }

  Animate loading() {
    return CircularProgressIndicator(color: AppColors.logo)
        .animate(autoPlay: false, controller: progressController)
        .fadeIn(duration: progressController.duration);
  }
}
