import 'dart:async';

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

    final searchQuery = useState<String>("");
    final debouncedQuery = useState<String>("");
    final isSearching = useState<bool>(false);
    final results = useState<List<GuestResponse>>([]);

    // debounce effect
    useEffect(() {
      final timer = Timer(const Duration(seconds: 2), () {
        debouncedQuery.value = searchQuery.value;
      });
      return timer.cancel;
    }, [searchQuery.value]);

    // fetch guests whenever debounced query changes
    useEffect(() {
      if (debouncedQuery.value.isEmpty) {
        results.value = [];
        return null;
      }

      isSearching.value = true;
      notifier
          .fetchGuestViaQuery(query: debouncedQuery.value.toLowerCase())
          .then((guestList) {
            results.value = guestList;
          })
          .whenComplete(() {
            isSearching.value = false;
          });

      return null;
    }, [debouncedQuery.value]);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => notifier.updateState({"isGeneral": !isGeneral}),
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
        ...[
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

        // loader while searching
        if (isSearching.value)
          const Padding(
            padding: EdgeInsets.all(20),
            child: Center(child: CupertinoActivityIndicator()),
          ),

        // results list
        if (results.value.isNotEmpty && !isSearching.value)
          Flexible(
            child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              itemBuilder: (cxt, index) {
                if (index == results.value.length &&
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
                final guest = results.value[index];
                return GuestItemBox(
                  guestInfo: guest,
                  isActive:
                      state.generalTaggedGuest?.contains(guest.id) ?? false,
                  onTapped: () => notifier.addGuest(guest),
                );
              },
              separatorBuilder: (_, __) => 10.verticalSpace,
              itemCount: results.value.length,
            ),
          ),

        40.verticalSpace,
        EventButton(
          width: 300,
          text: "Continue",
          onClick: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
