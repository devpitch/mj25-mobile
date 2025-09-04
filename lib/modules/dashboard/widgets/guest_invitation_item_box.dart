import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestInvitationItemBox extends StatelessWidget {
  final GuestResponse guestInfo;
  const GuestInvitationItemBox({super.key, required this.guestInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "${guestInfo.firstName} ${guestInfo.lastName}",
                weight: FontWeight.w500,
                color: ThemeColors.contentPrimary,
                size: 16,
              ),
              CustomText(
                text: "${guestInfo.email}",
                color: ThemeColors.contentTertiary,
              ),
              CustomText(
                text: "${guestInfo.phone}",
                color: ThemeColors.contentTertiary,
              ),
            ],
          ),
          10.horizontalSpace,
          IconBuilder(
            iconPath: AppImage.deleteIcon,
            size: 14,
            color: context.contentNegative,
            onTapped: () {
              genRef!
                  .read(dashboardProvider.notifier)
                  .deleteGuest(guestInfo: guestInfo);
              // Get.toNamed(AppRouter.guestDetailsView);
            },
          ),
        ],
      ),
    );
  }
}
