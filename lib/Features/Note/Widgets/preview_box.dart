import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/theme_helper.dart';

class PreviewBox extends StatelessWidget {
  const PreviewBox({
    super.key,
    this.color,
    this.onTap,
    required this.isSelected,
    this.image,
  });

  final Color? color;
  final String? image;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Material(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: isSelected
                  ? BorderSide(color: AppColors.logo, width: 6)
                  : BorderSide(
                      color: ThemeHelper.borderColor(context) ?? Colors.white,
                      width: 2,
                    ),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: onTap,
              child: image != null
                  ? ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: SvgPicture.asset(
                        image!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : null,
            ),
          ),
        ),
        Visibility(
          visible: isSelected,
          child: Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.logo,
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
