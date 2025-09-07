import 'package:event_handler/config/route/route_mapping.dart';
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
import 'package:get/get.dart';

class LinkItemBox extends StatelessWidget {
  final InvitationLinkResponse linkInfo;
  const LinkItemBox({super.key, required this.linkInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        genRef!.read(dashboardProvider.notifier).updateState({
          "activeInviteLink": linkInfo,
        });
        Get.toNamed(AppRouter.linkInvitationView);
      },
      child: Container(
        height: 72,
        width: double.infinity,
        color: ThemeColors.backgroundPrimary,
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
                  8.verticalSpace,
                  Row(
                    children: [
                      Row(
                        children: [
                          IconBuilder(iconPath: AppImage.status, size: 15),
                          5.horizontalSpace,
                          CustomText(
                            text:
                                "${linkInfo.status?.title.replaceAll("_", " ")}"
                                    .toUpperCase(),
                            color: ThemeColors.contentTertiary,
                            size: 12,
                            weight: FontWeight.w800,
                          ),
                        ],
                      ),
                      15.horizontalSpace,
                      Row(
                        children: [
                          IconBuilder(iconPath: AppImage.size, size: 15),
                          5.horizontalSpace,
                          CustomText(
                            text: "${linkInfo.guestSize}".toUpperCase(),
                            color: ThemeColors.contentTertiary,
                            size: 12,
                            weight: FontWeight.w800,
                          ),
                        ],
                      ),
                      15.horizontalSpace,
                      Row(
                        children: [
                          IconBuilder(iconPath: AppImage.registered, size: 15),
                          5.horizontalSpace,
                          CustomText(
                            text: "${linkInfo.guestsRegistered}".toUpperCase(),
                            color: ThemeColors.contentTertiary,
                            size: 12,
                            weight: FontWeight.w800,
                          ),
                        ],
                      ),
                      15.horizontalSpace,
                      Row(
                        children: [
                          IconBuilder(
                            iconPath: AppImage.entry,
                            size: 15,
                            color: context.contentSecondary,
                          ),
                          5.horizontalSpace,
                          CustomText(
                            text: "${linkInfo.guestPerEntry}".toUpperCase(),
                            color: ThemeColors.contentTertiary,
                            size: 12,
                            weight: FontWeight.w800,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            20.horizontalSpace,
            IconBuilder(
              iconPath: AppImage.refer,
              size: 18,
              onTapped: () {
                genRef!
                    .read(dashboardProvider.notifier)
                    .shareLink(context, linkInfo: linkInfo);
                // Get.toNamed(AppRouter.linkInvitationView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
