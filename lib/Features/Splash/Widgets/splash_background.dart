import 'package:flutter/material.dart';
import 'package:notey/Features/Splash/Widgets/background_shape.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({
    super.key,
    required this.backgroundController,
    required this.body,
  });

  final AnimationController backgroundController;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundShape(
          alignment: Alignment.topLeft,
          curve: -0.3,
          alpha: 0.9,
          backgroundController: backgroundController,
        ),
        BackgroundShape(
          alignment: Alignment.bottomRight,
          curve: -0.3,
          alpha: 0.9,
          backgroundController: backgroundController,
        ),
        body,
      ],
    );
  }
}
