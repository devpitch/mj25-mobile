import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'guest_item_box.dart';

class GuestListSheet extends HookConsumerWidget {
  const GuestListSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);

    final bool isGeneral = state.isGeneralTag ?? false;

    final List<GuestResponse> guestList = state.guestList?.guests?.items ?? [];

    final searchQuery = useState<String>("");

    final filteredList = useMemoized(() {
      if (searchQuery.value.isEmpty) return [];
      final query = searchQuery.value.toLowerCase();
      return guestList.where((guest) {
        return (guest.firstName?.toLowerCase().contains(query) ?? false) ||
            (guest.lastName?.toLowerCase().contains(query) ?? false) ||
            (guest.email?.toLowerCase().contains(query) ?? false) ||
            (guest.phone?.toLowerCase().contains(query) ?? false);
      }).toList();
    }, [searchQuery.value, guestList]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            notifier.updateState({"isGeneral": !isGeneral});
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              children: [
                IconBuilder(
                  iconPath: isGeneral ? AppImage.checkTicked : AppImage.check,
                  size: 18,
                ),
                10.horizontalSpace,
                CustomText(
                  text: "General",
                  size: 16,
                  weight: FontWeight.w800,
                  color: context.contentTertiary,
                ),
              ],
            ),
          ),
        ),
        if (!isGeneral) ...[
          10.verticalSpace,
          CustomLabelTextField(
            hintText: "search guest...",
            hintColor: HexColor("#5E8C73"),
            onChange: (val) => searchQuery.value = val?.trim() ?? "",
            prefixIcon: IconBuilder(
              iconPath: AppImage.searchIcon,
              color: context.contentTertiary,
            ),
          ),
        ],
        if (filteredList.isNotEmpty && !isGeneral)
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              // physics: ,
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              itemBuilder: (cxt, index) {
                if (index == filteredList.length &&
                    (state.loadingMoreGuests ?? false)) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: CupertinoActivityIndicator(
                        color: context.contentPrimary,
                      ),
                    ),
                  );
                }
                return GuestItemBox(
                  guestInfo: filteredList[index],
                  isActive:
                      state.generalTaggedGuest?.contains(
                        filteredList[index].id,
                      ) ??
                      false,
                  onTapped: () {
                    notifier.addGuest(filteredList[index].id);
                  },
                );
              },
              separatorBuilder: (_, __) => 10.verticalSpace,
              itemCount: filteredList.length,
            ),
          ),
        40.verticalSpace,
        EventButton(
          width: 300,
          text: "Continue",
          onClick: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
