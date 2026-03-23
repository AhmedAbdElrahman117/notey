import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Features/Onboarding/Models/onboarding_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(24),
              child: SvgPicture.asset(model.image),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Text(
            model.title,
            style: AppText.bold28(context, color: AppColors.logo),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            model.description,
            style: AppText.semiBold20(context),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
