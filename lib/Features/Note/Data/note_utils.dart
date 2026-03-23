import 'package:flutter/widgets.dart';
import 'package:notey/Core/Toast.dart';
import 'package:notey/generated/l10n.dart';
import 'package:share_plus/share_plus.dart';

class NoteUtils {
  Future<void> share({
    required BuildContext context,
    required String title,
    required String content,
  }) async {
    if (title.isNotEmpty || content.isNotEmpty) {
      await SharePlus.instance.share(
        ShareParams(
          title: title.isNotEmpty ? title : null,
          text: content.isNotEmpty ? content : ' ',
        ),
      );
    } else {
      Toast.showFailed(
        title: S.current.shareFailed,
        message: S.current.shareError,
      );
    }
  }
}
