import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class AppHeaderText extends StatelessWidget {
  final String label;
  const AppHeaderText({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: label,
      size: 18,
      weight: FontWeight.w700,
      color: HexColor("#171712"),
    );
  }
}
