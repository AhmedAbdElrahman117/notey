import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:notey/Core/theme_helper.dart';

class CustomOverlay extends StatelessWidget {
  const CustomOverlay({
    super.key,
    required this.controller,
    required this.topPosition,
    required this.animationController,
    required this.child,
    this.horizontalMargin,
    this.borderRadius,
    this.height,
    this.width,
  });

  final OverlayPortalController controller;
  final Offset? topPosition;
  final AnimationController animationController;
  final Widget child;
  final double? horizontalMargin;
  final double? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: controller,
      overlayChildBuilder: (context) {
        return Positioned(
              top: height != null
                  ? topPosition!.dy - (height! + 20)
                  : topPosition!.dy - 90,
              right: 0,
              left: 0,
              child: Container(
                width: width ?? MediaQuery.sizeOf(context).width,
                margin: EdgeInsets.symmetric(
                  horizontal: horizontalMargin ?? 0,
                ),
                alignment: Alignment.center,
                height: height ?? 70,
                decoration: BoxDecoration(
                  color: ThemeHelper.noteColor(context),
                  border: Border(
                    top: BorderSide(
                      color: ThemeHelper.dividerColor(context),
                      width: 0.5,
                    ),
                    bottom: BorderSide(
                      color: ThemeHelper.dividerColor(context),
                      width: 0.5,
                    ),
                  ),
                  borderRadius: borderRadius != null
                      ? BorderRadius.circular(borderRadius!)
                      : null,
                ),
                child: child,
              ),
            )
            .animate(
              controller: animationController,
              autoPlay: false,
            )
            .fadeIn()
            .slideY(begin: 1);
      },
    );
  }
}
