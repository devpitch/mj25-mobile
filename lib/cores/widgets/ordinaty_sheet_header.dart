import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_text.dart';

class OrdinarySheetHeader extends StatelessWidget {
  final String title;
  final dynamic subTitle;
  final Function()? onTapped;
  final bool hideLine;
  final bool showCloseButton;
  const OrdinarySheetHeader({
    super.key,
    required this.title,
    this.subTitle,
    this.onTapped,
    this.hideLine = false,
    this.showCloseButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            if (!hideLine) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 30,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: context.contentTertiary,
                    ),
                  ),
                ],
              ),
              12.verticalSpace,
            ] else
              SizedBox(height: 20, width: double.infinity),
            CustomText(
              text: title,
              customStyle: GoogleFonts.poppins(
                fontSize: 18,
                color: context.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (subTitle is String)
              CustomText(
                text: subTitle,
                size: 12,
                weight: FontWeight.w500,
                color: context.contentSecondary,
              ),
            if (subTitle is Widget) subTitle,
          ],
        ),
        if (showCloseButton)
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: onTapped ?? () => Navigator.of(context).maybePop(),
              child: CircleAvatar(
                radius: 18.r,
                backgroundColor: context.contentPrimary.withValues(alpha: .2),
                child: Icon(
                  Icons.close,
                  size: 22.sp,
                  color: context.backgroundColor,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
