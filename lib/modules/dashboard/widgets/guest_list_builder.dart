import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GuestListBuilder extends StatelessWidget {
  const GuestListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        EventButton(
          width: double.infinity,
          fillColor: context.contentSecondary,
          textColor: context.contentPrimary,
          text: "Scan QR Code",
          onClick: () {},
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 100, top: 15),
            itemBuilder: (cxt, index) => GuestItemBox(),
            separatorBuilder: (_, __) => 10.verticalSpace,
            itemCount: 15,
          ),
        ),
      ],
    );
  }
}

class GuestItemBox extends StatelessWidget {
  const GuestItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouter.guestDetailsView);
      },
      child: Container(
        height: 72,
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          children: [
            IconBuilder(iconPath: AppImage.guestUser, size: 48),
            10.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Sophia Carter",
                  weight: FontWeight.w500,
                  color: ThemeColors.contentPrimary,
                  size: 16,
                ),
                CustomText(
                  text: "sophia.carter@example.com",
                  color: ThemeColors.contentTertiary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
