import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.svgIcon,
    this.onPressed,
  });

  final String svgIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: Colors.grey.withAlpha(48),
        padding: EdgeInsets.all(8),
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(
        svgIcon,
        width: 50,
        height: 50,
      ),
    );
  }
}
