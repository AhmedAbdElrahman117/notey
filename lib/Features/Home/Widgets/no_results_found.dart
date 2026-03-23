import 'package:flutter/material.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/generated/l10n.dart';

class NoResultsFound extends StatelessWidget {
  const NoResultsFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Icon(Icons.search_off, size: 40),
          Text(
            S.of(context).noResultsFound,
            style: AppText.bold20(context),
          ),
        ],
      ),
    );
  }
}
