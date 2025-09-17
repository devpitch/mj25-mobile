import 'dart:async';
import 'dart:math' as math;

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/modules/dashboard/domain/constant.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'guest_item_box.dart';

class GuestListBuilder extends HookConsumerWidget {
  const GuestListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);

    final bool hasNextPage =
        (state.guestList?.guests?.items?.length ?? 0) % 50 == 0;

    final bool isLoading = state.loadingGuests ?? false;
    final List<GuestResponse> guestList =
        isLoading && (state.guestList?.guests?.items?.isEmpty ?? true)
        ? dummyGuestList
        : state.guestList?.guests?.items ?? [];

    // 🔹 Search state
    final searchQuery = useState<String>("");
    final debouncedQuery = useState<String>("");
    final isSearching = useState<bool>(false);
    final results = useState<List<GuestResponse>>([]);

    // 🔹 ScrollController for pagination
    final scrollController = useScrollController();

    // 🔹 Debounce effect
    useEffect(() {
      final timer = Timer(const Duration(seconds: 2), () {
        debouncedQuery.value = searchQuery.value;
      });
      return timer.cancel;
    }, [searchQuery.value]);

    // 🔹 Remote search effect
    useEffect(() {
      if (debouncedQuery.value.isEmpty) {
        results.value = guestList; // fallback to normal list if no search
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

    // 🔹 Initial fetch
    useEffect(() {
      Future.microtask(() {
        notifier.getGuests(showLoader: guestList.isEmpty);
      });
      return null;
    }, []);

    // 🔹 Pagination listener
    useEffect(() {
      void scrollListener() {
        if (scrollController.position.pixels >=
                scrollController.position.maxScrollExtent - 200 &&
            !(state.loadingMoreGuests ?? false) &&
            hasNextPage) {
          notifier.getGuests(nextPage: true);
        }
      }

      scrollController.addListener(scrollListener);
      return () => scrollController.removeListener(scrollListener);
    }, [scrollController, state.loadingMoreGuests, hasNextPage]);

    final listToRender = debouncedQuery.value.isEmpty
        ? guestList
        : results.value;

    return SizedBox(
      height: context.deviceHeight,
      child: Column(
        children: [
          10.verticalSpace,

          EventButton(
            width: double.infinity,
            fillColor: context.contentSecondary,
            textColor: context.contentPrimary,
            text: "Scan QR Code",
            isLoading: state.loadingGuest ?? false,
            onClick: () {
              ref.read(globalBuildContextProvider.notifier).state = context;
              notifier.scanQrCode(context);
            },
          ),

          // 🔹 Search input
          20.verticalSpace,
          CustomLabelTextField(
            hintText: "Search guests...",
            hintColor: HexColor("#5E8C73"),
            textCtrl: getTextController(TextControllerStrings.search),
            onChange: (val) => searchQuery.value = val?.trim() ?? "",
            prefixIcon: IconBuilder(
              iconPath: AppImage.searchIcon,
              color: context.contentPrimary,
            ),
          ),

          if (isSearching.value)
            const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: CupertinoActivityIndicator()),
            )
          else if (listToRender.isEmpty && !isLoading)
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconBuilder(iconPath: AppImage.guestUser, size: 80),
                  15.verticalSpace,
                  CustomText(text: "No guests found."),
                  30.verticalSpace,
                  if (searchQuery.value.isEmpty) ...[
                    EventButton(
                      width: 150,
                      text: "Reload",
                      onClick: () => notifier.getGuests(),
                    ),
                  ],
                ],
              ),
            )
          else
            Flexible(
              child: CustomMaterialIndicator(
                onRefresh: () async {
                  return await notifier.getGuests();
                },
                backgroundColor: Colors.white,
                indicatorBuilder: (context, controller) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircularProgressIndicator(
                      color: context.contentSecondary,
                      value: controller.state.isLoading
                          ? null
                          : math.min(controller.value, 1.0),
                    ),
                  );
                },
                child: Skeletonizer(
                  enabled: isLoading,
                  child: ListView.separated(
                    controller: scrollController,
                    padding: const EdgeInsets.only(bottom: 100, top: 15),
                    itemBuilder: (cxt, index) {
                      if (index == listToRender.length &&
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
                      return GuestItemBox(guestInfo: listToRender[index]);
                    },
                    separatorBuilder: (_, __) => 10.verticalSpace,
                    itemCount:
                        listToRender.length +
                        ((state.loadingMoreGuests ?? false) ? 1 : 0),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
