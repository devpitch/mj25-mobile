import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class RydmieDivider extends StatelessWidget {
  final Color? color;
  const RydmieDivider({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 1,
      color: color ?? context.borderPrimary,
    );
  }
}
