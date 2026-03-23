import 'package:flutter/material.dart';
import 'package:notey/generated/l10n.dart';

extension TimeAgo on DateTime {
  String timeAgo() {
    final difference = DateTime.now().difference(this);

    if (difference.inSeconds < 60) {
      final seconds = difference.inSeconds;
      return S.current.secondsAgo(seconds);
    } else if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return S.current.minutesAgo(minutes);
    } else if (difference.inHours < 24) {
      final hours = difference.inHours;
      return S.current.hoursAgo(hours);
    } else if (difference.inDays < 30) {
      final days = difference.inDays;
      return S.current.daysAgo(days);
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return S.current.monthsAgo(months);
    } else {
      return '$day/$month/$year';
    }
  }
}

extension HexColor on Color {
  String toHex({bool leadingHashSign = true, bool includeAlpha = true}) {
    // UPDATED: use toArgb32() instead of value
    final int intValue = toARGB32();

    final hex = includeAlpha
        ? intValue.toRadixString(16).padLeft(8, '0')
        : intValue.toRadixString(16).padLeft(8, '0').substring(2);

    return leadingHashSign ? '#$hex' : hex;
  }
}
