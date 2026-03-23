import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/theme_helper.dart';
import 'package:notey/generated/l10n.dart';

class FavouriteWarning extends StatelessWidget {
  const FavouriteWarning({
    super.key,
    this.show = false,
  });

  final bool show;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: show,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: ThemeHelper.noteColor(context),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text(
                S.of(context).favouriteModeOn,
                textAlign: TextAlign.center,
                style: AppText.semiBold16(
                  context,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
