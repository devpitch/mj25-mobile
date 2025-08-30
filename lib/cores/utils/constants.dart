import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final globalBuildContextProvider = StateProvider<BuildContext?>((_) => null);

class AppConstants {
  static WidgetRef? genRef;
  static const double pageHorizontalPadding = 20;
}
