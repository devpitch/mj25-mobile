import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBottomNavBox extends StatelessWidget {
  const AppBottomNavBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: context.contentPrimary.withValues(alpha: .16),
            width: .5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItemBox(label: "Links", svgPath: AppImage.linkIcon),
          NavItemBox(label: "Guests", svgPath: AppImage.guestIcon),
          NavItemBox(label: "Upload", svgPath: AppImage.uploadIcon),
        ],
      ),
    );
  }
}

class NavItemBox extends ConsumerWidget {
  final String label, svgPath;

  const NavItemBox({super.key, required this.label, required this.svgPath});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final bool isActive = state.activeTab == label;

    return GestureDetector(
      onTap: () {
        ref.read(dashboardProvider.notifier).updateState({"activeTab": label});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconBuilder(
            iconPath: svgPath,
            color: isActive
                ? HexColor("#5E8C73")
                : context.contentPrimary.withValues(alpha: .5),
          ),
          5.verticalSpace,
          CustomText(
            text: label,
            size: isActive ? 14 : 12,
            weight: isActive ? FontWeight.w700 : FontWeight.w500,
            color: isActive
                ? HexColor("#5E8C73")
                : context.contentPrimary.withValues(alpha: .5),
          ),
        ],
      ),
    );
  }
}
