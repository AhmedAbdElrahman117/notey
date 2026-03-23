import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';

class BackgroundShape extends StatelessWidget {
  const BackgroundShape({
    super.key,
    this.alpha,
    required this.alignment,
    required this.curve,
    required this.backgroundController,
  });

  final Alignment alignment;
  final double curve;
  final double? alpha;
  final AnimationController backgroundController;

  @override
  Widget build(BuildContext context) {
    return AlignTransition(
      alignment: Tween<AlignmentGeometry>(
        begin: AlignmentGeometry.lerp(
          alignment,
          Alignment.center,
          -0.6,
        )!,
        end: AlignmentGeometry.lerp(
          alignment,
          Alignment.center,
          curve,
        )!,
      ).animate(backgroundController),
      child: Container(
        width: 220,
        height: 220,
        decoration: BoxDecoration(
          color: AppColors.logo.withValues(alpha: alpha),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.logo.withValues(alpha: 0.3),
              blurRadius: 30,
              spreadRadius: 4,
              offset: Offset(0, 12),
            ),
            BoxShadow(
              color: AppColors.logo.withValues(alpha: 0.3),
              blurRadius: 30,
              spreadRadius: 4,
              offset: Offset(0, -12),
            ),
          ],
        ),
      ),
    );
  }
}
