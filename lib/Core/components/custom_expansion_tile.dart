import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.leadingIcon,
    required this.children,
    this.initiallyExpanded = false,
  });

  final String title;
  final String? subtitle;
  final IconData leadingIcon;
  final List<Widget> children;
  final bool initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        leadingIcon,
        color: ThemeHelper.iconColor(context),
      ),
      title: Text(
        title,
        style: AppText.semiBold20(context),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: AppText.regular16(
                context,
                color: ThemeHelper.descriptionColor(context),
              ),
            )
          : null,
      initiallyExpanded: initiallyExpanded,
      maintainState: true,
      childrenPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      children: children,
    );
  }
}
