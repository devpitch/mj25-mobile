import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: Container(
          height: context.deviceHeight,
          width: context.deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.pageHorizontalPadding,
          ),
          child: Column(
            children: [
              40.verticalSpace,
              Row(
                children: [
                  LandingItemBox(svgPath: AppImage.scanIcon, label: "Scan"),
                  15.horizontalSpace,
                  LandingItemBox(
                    svgPath: AppImage.generateIcon,
                    label: "Generate",
                    boxColor: context.primaryColor,
                  ),
                ],
              ),
              20.verticalSpace,
              Row(
                children: [
                  LandingItemBox(
                    svgPath: AppImage.findUserIcon,
                    label: "Find User",
                    boxColor: context.contentBrand,
                  ),
                  15.horizontalSpace,
                  LandingItemBox(
                    svgPath: AppImage.registerUserIcon,
                    label: "Register",
                    boxColor: context.contentSecondary,
                  ),
                ],
              ),
              20.verticalSpace,
              Row(
                children: [
                  LandingItemBox(
                    svgPath: AppImage.attendanceIcon,
                    label: "Attendance",
                    boxColor: context.backgroundBrandSubtitle,
                  ),
                  15.horizontalSpace,
                  Flexible(child: SizedBox()),
                  // LandingItemBox(
                  //   svgPath: AppImage.registerUserIcon,
                  //   label: "Register",
                  //   boxColor: context.contentSecondary,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LandingItemBox extends StatelessWidget {
  final String label;
  final String svgPath;
  final Function()? onTapped;
  final Color? boxColor;
  const LandingItemBox({
    super.key,
    required this.label,
    required this.svgPath,
    this.onTapped,
    this.boxColor,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTapped,
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: boxColor ?? context.borderPrimary,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconBuilder(
                iconPath: svgPath,
                size: 30,
                color: context.backgroundColor,
              ),
              10.verticalSpace,
              CustomText(text: label, size: 18, color: context.backgroundColor),
            ],
          ),
        ),
      ),
    );
  }
}
