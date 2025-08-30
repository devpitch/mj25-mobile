import 'dart:io';

import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PhotoDetailsScreen extends ConsumerWidget {
  const PhotoDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Photo",
          size: 18,
          weight: FontWeight.w700,
          color: HexColor("#171712"),
        ),
        centerTitle: true,
      ),
      bottomSheet: AppFooterBox(
        buttonText: "+ Tag Guests",
        bottomPadding: 20,
        onTapped: () {
          // Get.toNamed(AppRouter.dashboardView);
        },
      ),
      body: SizedBox(
        height: context.deviceHeight,
        width: context.deviceWidth,
        // padding: EdgeInsets.symmetric(
        //   horizontal: AppConstants.pageHorizontalPadding,
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.file(
              File(state.activeImage!.path),
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            30.verticalSpace,
            TaggedGuestBuilder(),
          ],
        ),
      ),
    );
  }
}

class TaggedGuestBuilder extends StatelessWidget {
  final bool noPadding;
  const TaggedGuestBuilder({super.key, this.noPadding = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeaderText(label: "Tagged Guests").paddingSymmetric(
            horizontal: noPadding ? 0 : AppConstants.pageHorizontalPadding,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                bottom: 80,
                top: 20,
                left: noPadding ? 0 : AppConstants.pageHorizontalPadding,
                right: noPadding ? 0 : AppConstants.pageHorizontalPadding,
              ),
              itemBuilder: (cxt, index) => PhotoGuestInfo(),
              separatorBuilder: (_, __) => 10.verticalSpace,
              itemCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoGuestInfo extends StatelessWidget {
  const PhotoGuestInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: "Sarah Jones",
            weight: FontWeight.w500,
            color: ThemeColors.contentPrimary,
            size: 16,
          ),
          CustomText(
            text: "sarah.jones@email.com",
            color: ThemeColors.contentTertiary,
          ),
        ],
      ),
    );
  }
}

// class GuestDetailsItemBox extends StatelessWidget {
//   final String label;
//   const GuestDetailsItemBox({super.key, required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 56,
//       width: double.infinity,
//       alignment: Alignment.center,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CustomText(
//             text: label,
//             weight: FontWeight.w500,
//             color: ThemeColors.contentPrimary,
//             size: 16,
//           ),
//           IconBuilder(iconPath: AppImage.check, size: 20),
//         ],
//       ),
//     );
//   }
// }
