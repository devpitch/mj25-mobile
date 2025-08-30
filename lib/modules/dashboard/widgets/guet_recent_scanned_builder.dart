import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GuestRecentScannedListBuilder extends StatelessWidget {
  const GuestRecentScannedListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: 100, top: 15),
        itemBuilder: (cxt, index) => GuestRecentItemBox(),
        separatorBuilder: (_, __) => 2.verticalSpace,
        itemCount: 15,
      ),
    );
  }
}

class GuestRecentItemBox extends StatelessWidget {
  const GuestRecentItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouter.guestDetailsView);
      },
      child: Container(
        height: 72,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Sophia Carter",
              weight: FontWeight.w500,
              color: ThemeColors.contentPrimary,
              size: 16,
            ),
            CustomText(text: "Onboarded", color: ThemeColors.contentTertiary),
          ],
        ),
      ),
    );
  }
}
