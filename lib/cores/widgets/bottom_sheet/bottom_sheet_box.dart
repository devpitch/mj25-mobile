import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_bottom_sheet.dart';

Future<void> showRydmieBottomSheet(
  BuildContext context, {
  required Widget child,
  bool isOrdinary = false,
  double? height,
  Color? bgColor,
  EdgeInsetsGeometry? customPadding,
  bool showCloseIcon = false,
  bool canDismiss = false,
  String? sheetTitle,
}) async {
  await Get.bottomSheet(
    AnimatedBottomSheet(
      height: height,
      backgroundColor: bgColor ?? context.backgroundColor,
      padding: customPadding ?? const EdgeInsets.all(20),
      showDragHandle: !isOrdinary,
      showCloseIcon: showCloseIcon || canDismiss,
      sheetTitle: sheetTitle,
      child: child,
    ),
    elevation: 0,
    ignoreSafeArea: true,
    isDismissible: !showCloseIcon && canDismiss,
    isScrollControlled: true,
    enableDrag: canDismiss,
    enterBottomSheetDuration: const Duration(milliseconds: 0),
    exitBottomSheetDuration: const Duration(milliseconds: 0),
  );
}

///
///
///
// showRydmieBottomSheet(
//   BuildContext context, {
//   required Widget child,
//   bool isOrdinary = false,
//   double? height,
//   Color? bgColor,
//   EdgeInsetsGeometry? customPadding,
//   bool showCloseIcon = false,
//   bool canDismiss = false,
// }) async {
//   Get.bottomSheet(
//     Stack(
//       children: [
//         Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               width: context.deviceWidth,
//               height: height,
//               margin: EdgeInsets.only(top: 15),
//               padding: customPadding ?? EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: bgColor ?? context.backgroundColor,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(12.27.r),
//                   topRight: Radius.circular(12.27.r),
//                 ),
//               ),
//               child: child,
//             ),
//           ],
//         ),
//         if (!isOrdinary)
//           Positioned(
//             left: 15,
//             right: 15,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: context.backgroundSecondary,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(12.27.r),
//                   topRight: Radius.circular(12.27.r),
//                 ),
//               ),
//               width: context.deviceWidth,
//               height: 15,
//             ),
//           ),
//       ],
//     ),
//     elevation: 0,
//     ignoreSafeArea: true,
//     isDismissible: !showCloseIcon && canDismiss,
//     isScrollControlled: true,
//     enableDrag: true,
//     enterBottomSheetDuration: const Duration(milliseconds: 340),
//     exitBottomSheetDuration: const Duration(milliseconds: 340),
//   );
// }
