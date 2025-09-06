import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GuestAttachRequestSheet extends StatelessWidget {
  const GuestAttachRequestSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: "No Guest attached to this card yet.",
          weight: FontWeight.w700,
          size: 20,
          isCenter: true,
        ),
        40.verticalSpace,
        Row(
          children: [
            Flexible(
              child: EventButton(
                width: 180,
                text: "Cancel",
                outline: true,
                onClick: () {
                  Navigator.of(context).maybePop();
                },
              ),
            ),
            20.horizontalSpace,
            Flexible(
              child: EventButton(
                width: 180,
                text: "Attach Guest",
                onClick: () async {
                  genRef!
                      .read(dashboardProvider.notifier)
                      .initiateAddNewGuest();
                  await Navigator.of(context).maybePop();
                  Get.toNamed(AppRouter.addGuestView);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
