import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmGuestDeleteBox extends StatelessWidget {
  final GuestResponse? guestInfo;
  const ConfirmGuestDeleteBox({super.key, this.guestInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: context.deviceWidth * .8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: context.backgroundColor,
      ),

      child: Column(
        children: [
          IconBuilder(
            iconPath: AppImage.caution,
            size: 60,
            color: context.contentSecondary,
          ),
          10.verticalSpace,
          SizedBox(
            width: 240,
            child: CustomText(
              text:
                  "Are you sure, you want to delete this guest${guestInfo == null ? "(s)" : ""}?",
              weight: FontWeight.w700,
              size: 18,
              isCenter: true,
            ),
          ),
          30.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EventButton(
                width: 140,
                height: 45,
                text: "Cancel",
                onClick: () {
                  Navigator.pop(context);
                },
              ),
              EventButton(
                width: 140,
                height: 45,
                outline: true,
                text: "Confirm",
                onClick: () {
                  Navigator.pop(context);
                  if (guestInfo != null) {
                    genRef!
                        .read(dashboardProvider.notifier)
                        .deleteGuest(context, guestInfo: guestInfo!);
                  } else {
                    genRef!
                        .read(dashboardProvider.notifier)
                        .deleteGuests(context);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
