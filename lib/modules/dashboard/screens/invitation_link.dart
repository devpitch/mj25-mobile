import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InvitationLinkScreen extends StatelessWidget {
  const InvitationLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppHeaderText(label: "Invitation Link"),
        centerTitle: true,
      ),
      bottomSheet: AppFooterBox(
        child: Column(
          children: [
            EventButton(
              width: double.infinity,
              textColor: context.contentSecondary,
              fillColor: context.contentPrimary,
              text: "Add New Guest",
              onClick: () {
                Get.toNamed(AppRouter.addGuestView);
              },
            ),
            8.verticalSpace,
            EventButton(
              width: double.infinity,
              fillColor: context.contentNegative,
              textColor: context.backgroundColor,
              text: "Delete Guests",
              onClick: () {},
            ),
          ],
        ),
      ),
      body: Container(
        height: context.deviceHeight,
        width: context.deviceWidth,
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.pageHorizontalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            AppHeaderText(label: "Link"),
            Container(
              height: 72,
              width: double.infinity,
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "https://mj.url/invite/12345",
                    weight: FontWeight.w500,
                    color: ThemeColors.contentPrimary,
                    size: 16,
                  ),

                  IconBuilder(
                    iconPath: AppImage.copyIcon,
                    size: 14,
                    onTapped: () {
                      // Get.toNamed(AppRouter.guestDetailsView);
                    },
                  ),
                ],
              ),
            ),
            AppHeaderText(label: "Guests"),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(bottom: 100, top: 15),
              itemBuilder: (cxt, index) => GuestInvitationItemBox(),
              separatorBuilder: (_, __) => 10.verticalSpace,
              itemCount: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class GuestInvitationItemBox extends StatelessWidget {
  const GuestInvitationItemBox({super.key});

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
                text: "Sarah Jones",
                weight: FontWeight.w500,
                color: ThemeColors.contentPrimary,
                size: 16,
              ),
              CustomText(
                text: "sarah.jones@email.com",
                color: ThemeColors.contentTertiary,
              ),
              CustomText(
                text: "555-123-4567",
                color: ThemeColors.contentTertiary,
              ),
            ],
          ),
          10.horizontalSpace,
          IconBuilder(
            iconPath: AppImage.deleteIcon,
            size: 14,
            onTapped: () {
              // Get.toNamed(AppRouter.guestDetailsView);
            },
          ),
        ],
      ),
    );
  }
}
