import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/app_theme.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final double? letterSpacing, letterHeight;
  final bool? isCenter;
  final bool isSelectable;
  final int? maxLines;
  final List<FontFeature>? fontFeatures;
  final bool isItalic;
  final Color? color;
  final TextStyle? customStyle;
  final TextOverflow? overflow;
  final TextDecoration? textDecoration;
  final FontWeight? weight;
  final String fontFamily; // New parameter for dynamic font family

  const CustomText({
    super.key,
    required this.text,
    this.size = 14,
    this.color,
    this.weight,
    this.isCenter,
    this.isItalic = false,
    this.overflow,
    this.isSelectable = false,
    this.letterSpacing,
    this.maxLines,
    this.letterHeight,
    this.textDecoration,
    this.fontFeatures,
    this.customStyle,
    this.fontFamily = 'SFProDisplay', // Default font family
  });

  @override
  Widget build(BuildContext context) {
    final textStyle =
        customStyle ??
        TextStyle(
          fontFamily: fontFamily, // Dynamically get the font family
          decoration: textDecoration,
          height: letterHeight,
          fontFeatures: fontFeatures,
          letterSpacing: letterSpacing ?? 0,
          fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
          decorationColor: color ?? context.contentPrimary,
          fontWeight: weight,
          color: color ?? context.contentPrimary,
          fontSize: size!.sp,
        );

    return isSelectable
        ? SelectableText(
          text,
          maxLines: maxLines,
          textAlign: (isCenter == true) ? TextAlign.center : TextAlign.left,
          style: textStyle,
        )
        : Text(
          text,
          maxLines: maxLines,
          textAlign: (isCenter == true) ? TextAlign.center : TextAlign.left,
          overflow: overflow ?? TextOverflow.clip,
          style: textStyle,
        );
  }
}
