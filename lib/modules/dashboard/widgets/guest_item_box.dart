import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GuestItemBox extends StatelessWidget {
  final GuestResponse guestInfo;
  const GuestItemBox({super.key, required this.guestInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        genRef!.read(dashboardProvider.notifier).updateState({
          "activeGuest": guestInfo,
        });
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
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "${guestInfo.firstName} ${guestInfo.lastName}",
                    weight: FontWeight.w500,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    color: ThemeColors.contentPrimary,
                    size: 16,
                  ),
                  CustomText(
                    text: "${guestInfo.email}",
                    color: ThemeColors.contentTertiary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
