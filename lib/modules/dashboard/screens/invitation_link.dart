import 'dart:developer';

import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/helper_functions.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/dashboard_widgets_exporter.dart';

class InvitationLinkScreen extends ConsumerWidget {
  const InvitationLinkScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);
    final InvitationLinkResponse activeLink = state.activeInviteLink!;
    final bool canAddGuest =
        (activeLink.guests?.length ?? 0) < activeLink.guestSize!;
    final bool isDeleting = state.isDeletingGuest ?? false;

    log("::: This is the active link ::: ${activeLink.guestSize}");

    return Scaffold(
      appBar: AppBar(
        title: const AppHeaderText(label: "Invitation Link"),
        centerTitle: true,
      ),

      /// Animated Bottom Sheet
      bottomSheet: Container(
        color: context.backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              transitionBuilder: (child, anim) => SizeTransition(
                sizeFactor: anim,
                axisAlignment: -1,
                child: child,
              ),
              child: isDeleting
                  ? Container(
                      key: const ValueKey("deleting"),
                      color: context.backgroundColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoActivityIndicator(
                            color: context.contentSecondary,
                            radius: 15,
                          ),
                        ],
                      ).paddingOnly(bottom: 30),
                    )
                  : AppFooterBox(
                      key: const ValueKey("footer"),
                      child: Column(
                        children: [
                          if (canAddGuest)
                            EventButton(
                              width: double.infinity,
                              textColor: context.contentSecondary,
                              fillColor: context.contentPrimary,
                              text: "Add New Guest",
                              onClick: () {
                                ref
                                        .read(
                                          globalBuildContextProvider.notifier,
                                        )
                                        .state =
                                    context;
                                notifier.initiateAddNewGuest();
                                Get.toNamed(AppRouter.addGuestView);
                              },
                            ),
                          if (state.selectedGuests?.isNotEmpty ?? false) ...[
                            8.verticalSpace,
                            EventButton(
                              width: double.infinity,
                              fillColor: context.contentNegative,
                              textColor: context.backgroundColor,
                              text: "Delete Guests",
                              onClick: () {
                                ref
                                        .read(
                                          globalBuildContextProvider.notifier,
                                        )
                                        .state =
                                    context;
                                notifier.openSheet(
                                  context: context,
                                  type: "deleteGuests",
                                );
                              },
                            ),
                          ],
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),

      body: Container(
        height: context.deviceHeight,
        width: context.deviceWidth,
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.pageHorizontalPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            const AppHeaderText(label: "Link"),

            /// Invitation link with fade animation
            AnimatedOpacity(
              opacity: activeLink.inviteUrl?.isNotEmpty ?? false ? 1 : 0,
              duration: const Duration(milliseconds: 400),
              child: Container(
                height: 72,
                width: double.infinity,
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustomText(
                        text: activeLink.inviteUrl!,
                        weight: FontWeight.w500,
                        color: context.contentLink,
                        size: 13,
                      ),
                    ),
                    IconBuilder(
                      iconPath: AppImage.copyIcon,
                      size: 14,
                      onTapped: () {
                        HelperFunctions.copyToClipboard(
                          item: activeLink.inviteUrl!,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const AppHeaderText(label: "Guests"),

            /// Guests Section with AnimatedSwitcher
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                transitionBuilder: (child, anim) => SlideTransition(
                  position:
                      Tween<Offset>(
                        begin: const Offset(0.1, 0.1),
                        end: Offset.zero,
                      ).animate(
                        CurvedAnimation(parent: anim, curve: Curves.easeOut),
                      ),
                  child: FadeTransition(opacity: anim, child: child),
                ),
                child: (activeLink.guests?.isNotEmpty ?? false)
                    ? SingleChildScrollView(
                        child: Column(
                          key: const ValueKey("guests"),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(
                                bottom: 100,
                                top: 15,
                              ),
                              itemBuilder: (cxt, index) =>
                                  GuestInvitationItemBox(
                                    guestInfo: activeLink.guests![index],
                                  ),
                              separatorBuilder: (_, __) => 10.verticalSpace,
                              itemCount: activeLink.guests!.length,
                            ),
                          ],
                        ),
                      )
                    : Center(
                        key: const ValueKey("noGuests"),
                        child: CustomText(
                          text: "No guest added yet.",
                          size: 16,
                          weight: FontWeight.w600,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
