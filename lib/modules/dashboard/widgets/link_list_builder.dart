import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/domain/constant.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'dashboard_widgets_exporter.dart';

class LinkListBuilder extends HookConsumerWidget {
  const LinkListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(dashboardProvider.notifier);
    final state = ref.watch(dashboardProvider);
    final bool isLoading = state.loadingLinks ?? false;

    final List<InvitationLinkResponse> dataList = isLoading
        ? dummyInvitationLinks
        : state.invitationLinks?.items ?? [];

    useEffect(() {
      Future.microtask(() {
        notifier.getInvitationLinks();
      });
    }, []);

    return Column(
      children: [
        10.verticalSpace,
        EventButton(
          width: double.infinity,
          fillColor: context.contentSecondary,
          textColor: context.contentPrimary,
          text: "Generate Invitation Link",
          onClick: () {
            genRef!
                .read(dashboardProvider.notifier)
                .openSheet(context: context, type: "generateLink");
          },
        ),
        if (dataList.isEmpty && !isLoading)
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconBuilder(iconPath: AppImage.inviteLink, size: 80),
                15.verticalSpace,
                CustomText(text: "Invitation links will shown here."),
                30.verticalSpace,
                EventButton(
                  width: 150,
                  text: "Reload",
                  onClick: () {
                    notifier.getInvitationLinks();
                  },
                ),
              ],
            ),
          )
        else
          Expanded(
            child: Skeletonizer(
              enabled: isLoading,
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: 100, top: 15),
                itemBuilder: (cxt, index) =>
                    LinkItemBox(linkInfo: dataList[index]),
                separatorBuilder: (_, __) => 10.verticalSpace,
                itemCount: dataList.length,
              ),
            ),
          ),
      ],
    );
  }
}
