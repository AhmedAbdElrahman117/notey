import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_text.dart';
import 'package:notey/Core/assets.dart';
import 'package:notey/Core/components/custom_dialog.dart';
import 'package:notey/Core/app_database.dart';
import 'package:notey/Core/notes_db.dart';
import 'package:notey/Features/Settings/Services/import_service.dart';
import 'package:notey/generated/l10n.dart';

class ImportConflictDialog extends StatelessWidget {
  const ImportConflictDialog({super.key, required this.dbType});

  final AppDatabase dbType;

  @override
  Widget build(BuildContext context) {
    String dbName = getDBName(context);
    return CustomDialog(
      title: S.of(context).conflictDetected(dbName),
      description: S.of(context).conflictDescription(dbName),
      image: Assets.questions,
      buttonType: ButtonType.none,
      body: Column(
        children: [
          optionButton(
            context,
            S.of(context).replaceExistingData,
            Colors.deepPurple,
            ConflictAction.replace,
          ),
          SizedBox(height: 20),
          optionButton(
            context,
            S.of(context).mergeWithExistingData,
            AppColors.logo,
            ConflictAction.merge,
          ),
          SizedBox(height: 20),
          optionButton(
            context,
            S.of(context).cancelImport,
            Colors.red,
            ConflictAction.cancel,
          ),
        ],
      ),
    );
  }

  ElevatedButton optionButton(
    BuildContext context,
    String title,
    Color backgroundColor,
    ConflictAction action,
  ) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop(action);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 4,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: AppText.regular16(context).copyWith(
          color: Colors.white,
        ),
      ),
    );
  }

  String getDBName(BuildContext context) {
    if (dbType is NoteDB) {
      return S.of(context).notes;
    } else {
      return S.of(context).categories;
    }
  }
}
