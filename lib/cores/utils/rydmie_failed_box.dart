import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RydmieFailedBox extends StatelessWidget {
  final String? message;
  final Function()? onRetry;
  const RydmieFailedBox({super.key, this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight,
      width: context.deviceWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ThemedImage(
          //   lightImage: AppImage.connectionLostIcon,
          //   darkImage: AppImage.connectionLostBlackIcon,
          //   height: 220,
          // ),
          20.verticalSpace,
          CustomText(
            text: "Loading Failed",
            color: context.contentNegative,
            weight: FontWeight.w600,
            size: 22,
          ),
          5.verticalSpace,
          CustomText(
            text: message ?? "Please try again later",
            color: context.contentTertiary,
            size: 18,
            // isItalic: true,
          ),
          40.verticalSpace,
          if (onRetry != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RydmieButton(
                  width: 200,
                  height: 45,
                  text: "Try again",
                  onClick: onRetry,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
