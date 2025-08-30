import 'package:event_handler/cores/utils/loaders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/app_theme.dart';
import 'custom_text.dart';

class RydmieButton extends StatelessWidget {
  final double width;
  final double? height;
  final String text;
  final String? textFamily;
  final double? textSize;
  final FontWeight? textFontWeight;
  final Color? color, textColor, fillColor;
  final Widget? child;
  final bool isLoading;
  final bool outline;
  final double? radius, borderWidth;
  final VoidCallback? onClick;

  const RydmieButton({
    super.key,
    required this.width,
    required this.text,
    this.onClick,
    this.height,
    this.color,
    this.textFamily,
    this.fillColor,
    this.textFontWeight,
    this.outline = false,
    this.textColor,
    this.isLoading = false,
    this.borderWidth,
    this.child,
    this.radius,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = onClick == null;
    final Color resolvedTextColor = isDisabled
        ? context.backgroundColor
        : textColor ??
              (outline ? context.primaryColor : context.contentSecondary);

    final Color resolvedButtonColor = isDisabled
        ? context.backgroundDisabled
        : outline
        ? Colors.transparent
        : fillColor ?? color ?? context.buttonBackground;

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius ?? 60),
      child: InkWell(
        onTap: isDisabled ? null : onClick,
        borderRadius: BorderRadius.circular(radius ?? 60),
        splashColor: resolvedTextColor.withOpacity(0.2),
        highlightColor: resolvedTextColor.withOpacity(0.1),
        child: Container(
          constraints: BoxConstraints(minWidth: width),
          alignment: Alignment.center,
          child: Ink(
            decoration: BoxDecoration(
              color: resolvedButtonColor,
              borderRadius: BorderRadius.circular(radius ?? 60),
              border: Border.all(
                color: outline
                    ? (color ?? context.primaryColor)
                    : Colors.transparent,
                width: outline ? (borderWidth ?? 1.2) : 0,
              ),
            ),
            height: height ?? 53.h,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: isLoading
                ? itemLoader(context, color: resolvedTextColor)
                : Center(
                    child:
                        child ??
                        CustomText(
                          fontFamily: textFamily ?? "SFProDisplay",
                          text: text,
                          size: textSize ?? 16,
                          isCenter: true,
                          weight: textFontWeight ?? (FontWeight.w700),
                          color: resolvedTextColor,
                        ),
                  ),
          ),
        ),
      ),
    );
  }

  ///
  ///
  ///
  // @override
  // Widget build(BuildContext context) {
  //   final bool isDisabled = onClick == null;
  //   final Color resolvedTextColor =
  //       isDisabled
  //           ? context.backgroundColor
  //           : textColor ?? (outline ? context.primaryColor : ThemeColors.white);
  //   final Color resolvedButtonColor =
  //       isDisabled
  //           ? context.backgroundDisabled
  //           : outline
  //           ? Colors.transparent
  //           : fillColor ?? color ?? context.buttonBackground;
  //
  //   return GestureDetector(
  //     onTap: onClick,
  //     child: Container(
  //       constraints: BoxConstraints(minWidth: width),
  //       height: height ?? 53.h,
  //       padding: const EdgeInsets.symmetric(horizontal: 5),
  //       alignment: Alignment.center,
  //       decoration: BoxDecoration(
  //         color: resolvedButtonColor,
  //         borderRadius: BorderRadius.circular(radius ?? 60),
  //         border: Border.all(
  //           color:
  //               outline ? (color ?? context.primaryColor) : Colors.transparent,
  //           width: outline ? (borderWidth ?? 1.2) : 0,
  //         ),
  //       ),
  //       child:
  //           isLoading
  //               ? itemLoader(context, color: resolvedTextColor)
  //               : child ??
  //                   CustomText(
  //                     fontFamily: textFamily ?? "SFProDisplay",
  //                     text: text,
  //                     size: textSize ?? 16,
  //                     isCenter: true,
  //                     weight:
  //                         textFontWeight ??
  //                         (outline ? FontWeight.w700 : FontWeight.w600),
  //                     color: resolvedTextColor,
  //                   ),
  //     ),
  //   );
  // }
}
