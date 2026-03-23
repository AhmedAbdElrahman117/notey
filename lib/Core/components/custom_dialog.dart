import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/generated/l10n.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    this.image,
    required this.title,
    required this.description,
    this.body,
    this.buttonType = ButtonType.both,
    this.confirmButtonColor,
    this.confirmButtonText,
    this.confirmButtonIcon,
    this.onConfirm,
    this.onCancel,
    this.extraText,
    this.extraTextStyle,
  });

  final String? image;
  final String title;
  final String description;
  final String? extraText;
  final TextStyle? extraTextStyle;
  final Widget? body;
  final ButtonType buttonType;
  final Color? confirmButtonColor;
  final String? confirmButtonText;
  final IconData? confirmButtonIcon;
  final void Function()? onConfirm;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            dialogImage(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppText.bold28(context),
            ),
            SizedBox(height: 12),
            Text(
              description,
              style: AppText.regular20(context),
              textAlign: TextAlign.center,
            ),

            extraText != null
                ? Column(
                    children: [
                      SizedBox(height: 12),
                      Text(
                        extraText!,
                        style: extraTextStyle ?? AppText.regular20(context),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 12),
                    ],
                  )
                : SizedBox.shrink(),

            if (body != null) SizedBox(height: 24),
            ?body,
            if (buttonType != ButtonType.none) SizedBox(height: 24),
            checkButtonType(context),
          ],
        ),
      ),
    );
  }

  Widget checkButtonType(BuildContext context) {
    switch (buttonType) {
      case ButtonType.confirm:
        return confirm(context);
      case ButtonType.cancel:
        return cancel(context);
      case ButtonType.both:
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            cancel(context),
            confirm(context),
          ],
        );
      case ButtonType.none:
        return SizedBox.shrink();
    }
  }

  dynamic dialogImage() {
    if (image != null) {
      if (image!.endsWith('.svg')) {
        return Column(
          children: [
            SvgPicture.asset(
              image!,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 32),
          ],
        );
      } else {
        return Column(
          children: [
            Image.asset(
              image!,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 32),
          ],
        );
      }
    } else {
      return SizedBox();
    }
  }

  OutlinedButton confirm(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onConfirm,
      style: OutlinedButton.styleFrom(
        backgroundColor: onConfirm != null
            ? confirmButtonColor ?? AppColors.logo
            : Colors.grey,
        side: BorderSide(
          color: onConfirm == null
              ? Colors.grey
              : confirmButtonColor ?? Colors.grey,
        ),
      ),
      icon: Icon(
        confirmButtonIcon ?? Icons.check,
        color: Colors.white,
      ),
      label: Text(
        confirmButtonText ?? S.of(context).confirm,
        style: AppText.regular16(
          context,
          color: Colors.white,
        ),
      ),
    );
  }

  OutlinedButton cancel(BuildContext context) {
    return OutlinedButton.icon(
      onPressed:
          onCancel ??
          () {
            Navigator.of(context).pop();
          },
      icon: Icon(
        Icons.close,
        color: ThemeHelper.iconColor(context),
      ),
      label: Text(
        S.of(context).cancel,
        style: AppText.regular16(context),
      ),
    );
  }
}

enum ButtonType {
  confirm,
  cancel,
  both,
  none,
}
