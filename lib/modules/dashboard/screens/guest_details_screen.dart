import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/dashboard_widgets_exporter.dart';

class GuestDetailsScreen extends ConsumerWidget {
  const GuestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Guests Management",
          size: 18,
          weight: FontWeight.w700,
          color: HexColor("#171712"),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
            30.verticalSpace,
            CustomText(
              text: "Ethan Carter",
              weight: FontWeight.w500,
              color: ThemeColors.contentPrimary,
              size: 16,
            ),
            CustomText(
              text: "+1 (555) 123-4567 ·\nethan.carter@email.com",
              color: ThemeColors.contentTertiary,
            ),
            25.verticalSpace,
            GuestDetailsItemBox(label: "Bus Onboarded"),
            GuestDetailsItemBox(label: "Event Entrance"),
            GuestDetailsItemBox(label: "Gift Collected"),
            30.verticalSpace,
            CustomText(
              text: "Previously Scanned Guests",
              weight: FontWeight.w700,
              color: ThemeColors.contentPrimary,
              size: 18,
            ),
            const GuestRecentScannedListBuilder(),
          ],
        ),
      ),
    );
  }
}

class GuestDetailsItemBox extends StatelessWidget {
  final String label;
  const GuestDetailsItemBox({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: label,
            weight: FontWeight.w500,
            color: ThemeColors.contentPrimary,
            size: 16,
          ),
          IconBuilder(iconPath: AppImage.check, size: 20),
        ],
      ),
    );
  }
}
