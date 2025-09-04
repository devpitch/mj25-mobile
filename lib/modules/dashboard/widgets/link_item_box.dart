import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkItemBox extends StatelessWidget {
  final InvitationLinkResponse linkInfo;
  const LinkItemBox({super.key, required this.linkInfo});

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
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: linkInfo.inviteUrl ?? "",
                  weight: FontWeight.w600,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  color: ThemeColors.contentPrimary,
                  size: 13,
                ),
                CustomText(
                  text: "${linkInfo.status?.title.replaceAll("_", " ")}",
                  color: ThemeColors.contentTertiary,
                  size: 12,
                ),
              ],
            ),
          ),
          20.horizontalSpace,
          IconBuilder(
            iconPath: AppImage.refer,
            size: 14,
            onTapped: () {
              Get.toNamed(AppRouter.linkInvitationView);
            },
          ),
        ],
      ),
    );
  }
}
