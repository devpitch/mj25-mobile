import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/authentication/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogoutEventDialog extends StatelessWidget {
  const LogoutEventDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.sp),
      width: double.infinity,
      margin: EdgeInsets.only(top: 55, left: .1.sw, right: .1.sw),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.r),
        color: Colors.white,
      ),
      child: Column(
        children: [
          20.verticalSpace,
          SizedBox(
            width: 200.w,
            child: CustomText(
              text: "Are you sure you want to Log out?",
              size: 18,
              isCenter: true,
              letterHeight: 0,
              weight: FontWeight.w700,
              color: HexColor("#D92D20"),
            ),
          ),
          10.verticalSpace,
          SizedBox(
            width: 232.w,
            child: CustomText(
              text: "You will be redirected to the Login screen",
              size: 13,
              isCenter: true,
              color: HexColor("#7F7F92"),
            ),
          ),
          15.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: EventButton(
                  width: 117,
                  height: 40,
                  text: "Cancel",
                  onClick: () {
                    Get.close(1);
                  },
                ),
              ),
              15.horizontalSpace,
              Flexible(
                child: EventButton(
                  width: 117,
                  text: "Log Out",
                  height: 40,
                  outline: true,
                  color: HexColor("#FF0000"),
                  textColor: HexColor("#FF0000"),
                  onClick: () {
                    genRef!.read(authProvider.notifier).logoutApp(context);
                  },
                ),
              ),
            ],
          ),
          5.verticalSpace,
        ],
      ),
    );
  }
}
