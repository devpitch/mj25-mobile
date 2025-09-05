import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GuestInvitationItemBox extends ConsumerWidget {
  final GuestResponse guestInfo;
  const GuestInvitationItemBox({super.key, required this.guestInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);
    final isSelected = state.selectedGuests?.contains(guestInfo.id) ?? false;

    return GestureDetector(
      onTap: () {
        notifier.updateSelectedGuest(guestInfo.id!);
      },
      child: Container(
        height: 72,
        padding: EdgeInsets.symmetric(horizontal: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: isSelected
              ? ThemeColors.backgroundSecondary.withValues(alpha: .05)
              : context.backgroundColor,
          borderRadius: BorderRadius.circular(6.r),
        ),
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
                ref.read(globalBuildContextProvider.notifier).state = context;
                genRef!
                    .read(dashboardProvider.notifier)
                    .openSheet(
                      context: context,
                      type: "confirmDelete",
                      value: guestInfo,
                    );
                // .deleteGuest(context, guestInfo: guestInfo);
              },
            ),
          ],
        ),
      ),
    );
  }
}
