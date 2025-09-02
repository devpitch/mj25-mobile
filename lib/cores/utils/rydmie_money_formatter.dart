// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:event_handler/config/theme/app_theme.dart';
// import 'package:event_handler/cores/utils/assets_mangment.dart';
// import 'package:event_handler/cores/utils/icon_builder.dart';
// import 'package:event_handler/cores/utils/money_formatter.dart';
// import 'package:event_handler/cores/widgets/custom_text.dart';
// import 'package:skeletonizer/skeletonizer.dart';
//
// class RydmieMoneyFormatter extends StatelessWidget {
//   final String amount;
//   final int? digitDecimal;
//   final Color? color;
//   final FontWeight? weight;
//   final TextDecoration? textDecoration;
//   final TextStyle? customStyle;
//   final double? textSize, iconSize;
//   const RydmieMoneyFormatter({
//     super.key,
//     this.amount = "0",
//     this.digitDecimal,
//     this.color,
//     this.weight,
//     this.textSize,
//     this.iconSize,
//     this.textDecoration,
//     this.customStyle,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Skeleton.replace(
//           child: IconBuilder(
//             iconPath: AppImage.walletAppLogoIcon,
//             size: iconSize ?? 28,
//             noColor: color == null,
//             color:
//                 color ??
//                 (context.isDarkMode
//                     ? context.contentPrimary
//                     : context.backgroundColor),
//           ),
//         ),
//         1.5.horizontalSpace,
//         CustomText(
//           text: formatMoney(
//             amount: amount,
//             nairaName: "",
//             digitDecimal: digitDecimal,
//           ),
//           customStyle: customStyle,
//           size: textSize ?? 28,
//           letterHeight: 0,
//           letterSpacing: 0,
//           weight: weight ?? FontWeight.w600,
//           textDecoration: textDecoration,
//           color:
//               color ??
//               (context.isDarkMode
//                   ? context.contentPrimary
//                   : context.backgroundColor),
//         ),
//       ],
//     );
//   }
// }
