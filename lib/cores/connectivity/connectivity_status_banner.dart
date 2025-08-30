import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ConnectivityStatusBanner extends StatelessWidget {
  const ConnectivityStatusBanner({super.key, this.hasConnection = true});

  final bool hasConnection;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      left: 0,
      right: 0,
      child: Material(
        color:
            hasConnection
                ? context.backgroundPositiveSubtitle
                : context.backgroundNegativeSubtitle,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: CustomText(
            text: hasConnection ? "All good" : "No internet connection",
            isCenter: true,
            size: 13,
            color: hasConnection ? null : Colors.white,
          ),
        ),
      ),
    );
  }
}
