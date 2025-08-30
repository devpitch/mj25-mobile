import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension MediaQueryValue on BuildContext {
  double get deviceHeight => MediaQuery.of(this).size.height;
  double get deviceWidth => MediaQuery.of(this).size.width;
  double get toPadding => MediaQuery.of(this).viewPadding.top;
  double get bottom => MediaQuery.of(this).viewInsets.bottom;
}

extension ReadableDateTime on DateTime {
  String toFriendlyDateTimeString() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final thisDate = DateTime(year, month, day);

    final difference = today.difference(thisDate).inDays;
    final timeFormatted = DateFormat('hh:mm a').format(this);

    if (difference == 0) {
      return 'Today, $timeFormatted';
    } else if (difference == 1) {
      return 'Yesterday, $timeFormatted';
    } else {
      return '${DateFormat('MMM dd, yyyy').format(this)}, $timeFormatted';
    }
  }
}
