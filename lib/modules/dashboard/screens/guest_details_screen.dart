import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GuestDetailsScreen extends ConsumerWidget {
  const GuestDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);
    final GuestResponse guestInfo = state.activeGuest!;

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Guests Management",
          size: 18,
          weight: FontWeight.w700,
          color: HexColor("#171712"),
        ),
        centerTitle: true,
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
              text: "${guestInfo.firstName} ${guestInfo.lastName}",
              weight: FontWeight.w500,
              color: ThemeColors.contentPrimary,
              size: 16,
            ),
            CustomText(
              text: "${guestInfo.phone} ·\n${guestInfo.email}",
              color: ThemeColors.contentTertiary,
            ),
            25.verticalSpace,
            GuestDetailsItemBox(
              label: "Bus Onboarded",
              isSelected: guestInfo.isOnBoarded ?? false,
            ),
            GuestDetailsItemBox(
              label: "Event Entrance",
              isSelected: guestInfo.isInEvent ?? false,
            ),
            GuestDetailsItemBox(
              label: "Gift Collected",
              isSelected: guestInfo.isGifted ?? false,
            ),
            // 30.verticalSpace,
            // CustomText(
            //   text: "Previously Scanned Guests",
            //   weight: FontWeight.w700,
            //   color: ThemeColors.contentPrimary,
            //   size: 18,
            // ),
            // const GuestRecentScannedListBuilder(),
          ],
        ),
      ),
    );
  }
}

class GuestDetailsItemBox extends StatelessWidget {
  final String label;
  final bool isSelected;
  const GuestDetailsItemBox({
    super.key,
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        genRef!
            .read(dashboardProvider.notifier)
            .updateGuestStatus(context, label);
      },
      child: Container(
        height: 56,
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: label,
              weight: FontWeight.w500,
              color: isSelected
                  ? context.contentTertiary
                  : ThemeColors.contentPrimary,
              size: 16,
            ),
            IconBuilder(
              iconPath: isSelected ? AppImage.checkTicked : AppImage.check,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
