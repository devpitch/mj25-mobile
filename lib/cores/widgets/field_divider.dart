import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

class FieldDivider extends StatelessWidget {
  const FieldDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(height: 0, color: context.contentPrimary, thickness: 1);
  }
}
