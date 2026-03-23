import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SmoothPageIndicator(
        controller: pageController,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.logo,
          spacing: 12,
        ),
        onDotClicked: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
