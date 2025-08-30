import 'package:flutter/foundation.dart';
import 'package:loggy/loggy.dart';

/// Submit error can be called from any part of the app
void submitError(dynamic error, {StackTrace? stackTrace}) {
  if (kDebugMode) {
    logDebug(stackTrace);
    return;
  }
}