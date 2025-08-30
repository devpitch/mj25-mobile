import 'dart:io';

import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:event_handler/modules/dashboard/widgets/tagged_guest_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            Flexible(child: TaggedGuestBuilder()),
          ],
        ),
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
