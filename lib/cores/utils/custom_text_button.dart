import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_theme.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Function()? onClick;
  final Color? color;
  final bool isItalic;
  final FontWeight? weight;
  final TextDecoration? textDecoration;
  final double? textSize;
  final Widget? child;
  const CustomTextButton({
    super.key,
    required this.text,
    this.onClick,
    this.color,
    this.textSize,
    this.weight,
    this.child,
    this.isItalic = false,
    this.textDecoration,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child:
          child ??
          CustomText(
            text: text,
            isCenter: true,
            letterHeight: 1,
            textDecoration: textDecoration,
            isItalic: isItalic,
            size: textSize ?? 16,
            color: color ?? context.primaryColor,
            weight: weight ?? FontWeight.w600,
          ),
    );
  }
}
