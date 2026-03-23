import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/generated/l10n.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
    required this.isLoading,
    this.loadingStatus,
  });

  final bool isLoading;
  final String? loadingStatus;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: Container(
        color: Colors.black.withValues(alpha: 0.82),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            spacing: 32,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoadingAnimationWidget.threeArchedCircle(
                color: AppColors.logo,
                size: MediaQuery.sizeOf(context).height * 0.06,
              ),
              Material(
                type: MaterialType.transparency,
                child: Text(
                  loadingStatus ?? S.of(context).pleaseWait,
                  style: AppText.semiBold20(
                    context,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
