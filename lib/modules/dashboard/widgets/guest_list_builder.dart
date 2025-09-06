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

    // 🔹 Local filter state using hooks
    final searchQuery = useState<String>("");

    // 🔹 ScrollController for pagination
    final scrollController = useScrollController();

    // 🔹 Filter logic
    final filteredList = useMemoized(() {
      if (searchQuery.value.isEmpty) return guestList;
      final query = searchQuery.value.toLowerCase();
      return guestList.where((guest) {
        return (guest.firstName?.toLowerCase().contains(query) ?? false) ||
            (guest.lastName?.toLowerCase().contains(query) ?? false) ||
            (guest.email?.toLowerCase().contains(query) ?? false) ||
            (guest.phone?.toLowerCase().contains(query) ?? false);
      }).toList();
    }, [searchQuery.value, guestList]);

    // 🔹 Initial fetch
    useEffect(() {
      Future.microtask(() {
        notifier.getGuests(showLoader: filteredList.isEmpty);
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

          // 🔹 Filter/Search input
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

          if (filteredList.isEmpty && !isLoading)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconBuilder(iconPath: AppImage.guestUser, size: 80),
                15.verticalSpace,
                CustomText(text: "No guests found."),
                30.verticalSpace,
                if (getTextController(
                  TextControllerStrings.search,
                )!.text.isEmpty) ...[
                  EventButton(
                    width: 150,
                    text: "Reload",
                    onClick: () => notifier.getGuests(),
                  ),
                ],
              ],
            )
          else
            Flexible(
              child: Skeletonizer(
                enabled: isLoading,
                child: ListView.separated(
                  controller: scrollController,
                  padding: const EdgeInsets.only(bottom: 100, top: 15),
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
                    return GuestItemBox(guestInfo: filteredList[index]);
                  },
                  separatorBuilder: (_, __) => 10.verticalSpace,
                  itemCount:
                      filteredList.length +
                      ((state.loadingMoreGuests ?? false) ? 1 : 0),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

///
///
///
// class GuestListBuilder extends HookConsumerWidget {
//   const GuestListBuilder({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(dashboardProvider);
//     final notifier = ref.read(dashboardProvider.notifier);
//
//     final bool isLoading = state.loadingGuests ?? false;
//     final List<GuestResponse> guestList = isLoading
//         ? dummyGuestList
//         : state.guestList?.guests?.items ?? [];
//
//     // 🔹 Local filter state using hooks
//     final searchQuery = useState<String>("");
//
//     // 🔹 Filter logic
//     final filteredList = useMemoized(() {
//       if (searchQuery.value.isEmpty) return guestList;
//       return guestList.where((guest) {
//         final query = searchQuery.value.toLowerCase();
//         return (guest.firstName?.toLowerCase().contains(query) ?? false) ||
//             (guest.lastName?.toLowerCase().contains(query) ?? false) ||
//             (guest.email?.toLowerCase().contains(query) ?? false) ||
//             (guest.phone?.toLowerCase().contains(query) ?? false);
//       }).toList();
//     }, [searchQuery.value, guestList]);
//
//     // 🔹 Initial fetch
//     useEffect(() {
//       Future.microtask(() {
//         notifier.getGuests(showLoader: filteredList.isEmpty);
//       });
//       return null;
//     }, []);
//
//     return SizedBox(
//       height: context.deviceHeight,
//       child: Column(
//         children: [
//           10.verticalSpace,
//
//           EventButton(
//             width: double.infinity,
//             fillColor: context.contentSecondary,
//             textColor: context.contentPrimary,
//             text: "Scan QR Code",
//             isLoading: state.loadingGuest ?? false,
//             onClick: () {
//               ref.read(globalBuildContextProvider.notifier).state = context;
//               notifier.scanQrCode(context);
//             },
//           ),
//
//           // 🔹 Filter/Search input
//           20.verticalSpace,
//           CustomLabelTextField(
//             hintText: "Search guests...",
//             hintColor: HexColor("#5E8C73"),
//             textCtrl: getTextController(TextControllerStrings.search),
//             onChange: (val) => searchQuery.value = val?.trim() ?? "",
//             prefixIcon: IconBuilder(
//               iconPath: AppImage.searchIcon,
//               color: context.contentPrimary,
//             ),
//           ),
//
//           if (filteredList.isEmpty && !isLoading)
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconBuilder(iconPath: AppImage.guestUser, size: 80),
//                 15.verticalSpace,
//                 CustomText(text: "No guests found."),
//                 30.verticalSpace,
//                 if (getTextController(
//                   TextControllerStrings.search,
//                 )!.text.isEmpty) ...[
//                   EventButton(
//                     width: 150,
//                     text: "Reload",
//                     onClick: () => notifier.getGuests(),
//                   ),
//                 ],
//               ],
//             )
//           else
//             Flexible(
//               child: Skeletonizer(
//                 enabled: isLoading,
//                 child: ListView.separated(
//                   shrinkWrap: true,
//                   // physics: const NeverScrollableScrollPhysics(),
//                   padding: const EdgeInsets.only(bottom: 100, top: 15),
//                   itemBuilder: (cxt, index) =>
//                       GuestItemBox(guestInfo: filteredList[index]),
//                   separatorBuilder: (_, __) => 10.verticalSpace,
//                   itemCount: filteredList.length,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
