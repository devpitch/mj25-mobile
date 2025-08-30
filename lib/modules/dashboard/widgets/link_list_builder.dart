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

class LinkListBuilder extends StatelessWidget {
  const LinkListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        10.verticalSpace,
        EventButton(
          width: double.infinity,
          fillColor: context.contentSecondary,
          textColor: context.contentPrimary,
          text: "Generate Invitation Link",
          onClick: () {},
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 100, top: 15),
            itemBuilder: (cxt, index) => LinkItemBox(),
            separatorBuilder: (_, __) => 10.verticalSpace,
            itemCount: 15,
          ),
        ),
      ],
    );
  }
}

class LinkItemBox extends StatelessWidget {
  const LinkItemBox({super.key});

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
                text: "mj.url/xyz123",
                weight: FontWeight.w500,
                color: ThemeColors.contentPrimary,
                size: 16,
              ),
              CustomText(text: "Used", color: ThemeColors.contentTertiary),
            ],
          ),
          10.horizontalSpace,
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
