import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/country_model.dart';
import '../utils/util.dart';

/// [Item]
class Item extends StatelessWidget {
  final Country? country;
  final bool? showFlag;
  final bool? useEmoji;
  final TextStyle? textStyle;
  final bool withCountryNames;
  final double? leadingPadding;
  final bool trailingSpace;
  final String? label;

  const Item({
    super.key,
    this.country,
    this.showFlag,
    this.useEmoji,
    this.textStyle,
    this.withCountryNames = false,
    this.leadingPadding = 12,
    this.trailingSpace = true,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    String dialCode = (country?.dialCode ?? '');
    if (trailingSpace) {
      dialCode = dialCode.padRight(5, "   ");
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(text: label ?? "Country ", weight: FontWeight.w600),
            if (label == null)
              CustomText(
                text: "*",
                weight: FontWeight.w600,
                color: context.contentNegative,
              ),
          ],
        ),
        5.verticalSpace,
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: context.backgroundSecondary.withValues(alpha: 0.1),
            // border: Border.all(color: context.borderPrimary, width: 1.5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _Flag(country: country, showFlag: showFlag, useEmoji: useEmoji),
              SizedBox(width: 8.w),
              Text(
                "${country?.dialCode?.toUpperCase()}",
                // textDirection: TextDirection.ltr,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  color: HexColor("#5E8C73"),
                ),
              ),
              4.horizontalSpace,
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: HexColor("#5E8C73"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Flag extends StatelessWidget {
  final Country? country;
  final bool? showFlag;
  final bool? useEmoji;

  const _Flag({this.country, this.showFlag, this.useEmoji});

  @override
  Widget build(BuildContext context) {
    return country != null && showFlag!
        ? Container(
            child: useEmoji!
                ? Text(
                    Utils.generateFlagEmojiUnicode(country?.alpha2Code ?? ''),
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                : Image.asset(
                    country!.flagUri,
                    width: 30,
                    height: 18,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox.shrink();
                    },
                  ),
          )
        : const SizedBox.shrink();
  }
}
