import 'dart:developer';

import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TaggedGuestBuilder extends HookConsumerWidget {
  final bool noPadding, isFlex;
  const TaggedGuestBuilder({
    super.key,
    this.noPadding = false,
    this.isFlex = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);
    List<GuestResponse> allGuests = notifier.getTaggedGuests();
    final taggedGuests = state.generalTaggedGuest ?? [];

    log(":::: you called me :::0 ::: ${taggedGuests.length}");
    log(":::: you called me :::00 ::: ${allGuests.length}");

    final searchController = useTextEditingController();
    final filteredList = useState<List<GuestResponse>>(allGuests);

    if (allGuests.length != filteredList.value.length &&
        searchController.text.isEmpty) {
      log(":::: you called me :::1");
      filteredList.value = notifier.getTaggedGuests();
    }
    useEffect(() {
      searchController.addListener(() {
        final query = searchController.text.toLowerCase();
        filteredList.value = allGuests
            .where(
              (g) =>
                  ("${g.title} ${g.firstName} ${g.lastName}".toLowerCase())
                      .contains(query) ||
                  (g.email?.toLowerCase() ?? "").contains(query),
            )
            .toList();
      });
      return null;
    }, []);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderText(label: "Tagged Guests").paddingSymmetric(
          horizontal: noPadding ? 0 : AppConstants.pageHorizontalPadding,
        ),
        20.verticalSpace,
        CustomLabelTextField(
          textCtrl: searchController,
          hintText: "Search guest...",
          hintColor: HexColor("#5E8C73"),
          prefixIcon: IconBuilder(
            iconPath: AppImage.searchIcon,
            color: context.contentTertiary,
          ),
        ).paddingSymmetric(
          horizontal: noPadding ? 0 : AppConstants.pageHorizontalPadding,
        ),
        10.verticalSpace,
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          child: filteredList.value.isEmpty
              ? SizedBox(
                  height: 300,
                  child: Center(
                    key: const ValueKey("empty"),
                    child: Text(
                      "No guests found",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                )
              : TaggedGuestListBuilder(
                  key: const ValueKey("list"),
                  noPadding: noPadding,
                  isFlex: isFlex,
                  taggedGuests: filteredList.value,
                ),
        ),
      ],
    );
  }
}

class TaggedGuestListBuilder extends StatelessWidget {
  final bool noPadding, isFlex;
  final List<GuestResponse> taggedGuests;

  const TaggedGuestListBuilder({
    super.key,
    required this.noPadding,
    required this.isFlex,
    required this.taggedGuests,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: !isFlex ? const NeverScrollableScrollPhysics() : null,
      padding: EdgeInsets.only(
        bottom: 110,
        top: 10,
        left: noPadding ? 0 : AppConstants.pageHorizontalPadding,
        right: noPadding ? 0 : AppConstants.pageHorizontalPadding,
      ),
      itemCount: taggedGuests.length,
      itemBuilder: (context, index) {
        final guest = taggedGuests[index];
        return TweenAnimationBuilder<double>(
          key: ValueKey(guest.email ?? index),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
          tween: Tween(begin: 0, end: 1),
          builder: (context, value, child) => Transform.translate(
            offset: Offset(0, (1 - value) * 20),
            child: Opacity(opacity: value, child: child),
          ),
          child: PhotoGuestInfo(guestInfo: guest),
        );
      },
      separatorBuilder: (_, __) => 10.verticalSpace,
    );
  }
}

class PhotoGuestInfo extends StatelessWidget {
  final GuestResponse guestInfo;
  const PhotoGuestInfo({super.key, required this.guestInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ThemeColors.backgroundSecondary.withValues(alpha: .15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text:
                    "${guestInfo.title} ${guestInfo.firstName} ${guestInfo.lastName}",
                weight: FontWeight.w600,
                color: ThemeColors.contentPrimary,
                size: 16,
              ),
              const SizedBox(height: 4),
              CustomText(
                text: guestInfo.email ?? "",
                color: ThemeColors.contentTertiary,
                size: 13,
              ),
            ],
          ),
          IconBuilder(
            iconPath: AppImage.deleteIcon,
            size: 20,
            color: context.contentNegative,
            onTapped: () {
              genRef!.read(dashboardProvider.notifier).addGuest(guestInfo);
            },
          ),
        ],
      ),
    );
  }
}
