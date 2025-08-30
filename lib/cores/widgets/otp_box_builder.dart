import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';

import 'custom_text.dart';

class OtpBoxBuilder extends StatefulHookConsumerWidget {
  final ValueChanged<String?>? onChanged;
  final int pinCount;

  const OtpBoxBuilder({super.key, this.onChanged, this.pinCount = 6});

  @override
  ConsumerState<OtpBoxBuilder> createState() => _OtpBoxBuilderState();
}

class _OtpBoxBuilderState extends ConsumerState<OtpBoxBuilder> {
  late final FocusNode _focusNode;
  late final TextEditingController otpController;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.requestFocus();
    otpController = ref
        .read(textControllersProvider.notifier)
        .getTextController(TextControllerStrings.otp);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color bgColor = Colors.transparent;
    final Color focusedBorderColor = ThemeColors.black;

    final PinTheme defaultPinTheme = PinTheme(
      width: 25,
      height: 46,
      textStyle: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: context.contentPrimary,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: context.contentBrand, width: 2),
        ),
      ),
    );

    final PinTheme focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        border: Border(
          bottom: BorderSide(color: context.contentPrimary, width: 2),
        ),
      ),
    );

    final PinTheme submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: bgColor,
        border: Border(
          bottom: BorderSide(color: context.contentPrimary, width: 2),
        ),
      ),
    );

    final PinTheme errorPinTheme = defaultPinTheme.copyBorderWith(
      border: Border(
        bottom: BorderSide(color: context.contentPrimary, width: 2),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        length: widget.pinCount,
        separatorBuilder: (index) => 8.horizontalSpace,
        controller: otpController,
        focusNode: _focusNode,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        submittedPinTheme: submittedPinTheme,
        errorPinTheme: errorPinTheme,
        mainAxisAlignment: MainAxisAlignment.center,
        obscureText: false,
        obscuringCharacter: "•",
        preFilledWidget: CustomText(text: "•"),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        cursor: CustomText(text: '|', size: 20, color: focusedBorderColor),
        isCursorAnimationEnabled: true,
        showCursor: true,
        onChanged: widget.onChanged,
        onCompleted: (value) {
          _focusNode.unfocus(); // Hide the keyboard
          otpController.text = value;
          widget.onChanged?.call(value);
        },
      ),
    );
  }
}

///
///
///
// class OtpBoxBuilder extends StatefulHookConsumerWidget {
//   final ValueChanged<String?>? onChanged;
//   final int pinCount;
//
//   const OtpBoxBuilder({super.key, this.onChanged, this.pinCount = 6});
//
//   @override
//   ConsumerState<OtpBoxBuilder> createState() => _OtpBoxBuilderState();
// }
//
// class _OtpBoxBuilderState extends ConsumerState<OtpBoxBuilder> {
//   late final FocusNode _focusNode;
//
//   @override
//   void initState() {
//     super.initState();
//     _focusNode = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     _focusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final Color bgColor = Colors.transparent;
//     final Color focusedBorderColor = ThemeColors.black;
//     final otpController = ref
//         .read(textControllersProvider.notifier)
//         .getTextController(TextControllerStrings.otp);
//
//     final PinTheme defaultPinTheme = PinTheme(
//       width: 25,
//       height: 46,
//       textStyle: GoogleFonts.inter(
//         fontSize: 16,
//         fontWeight: FontWeight.w700,
//         color: context.contentPrimary,
//       ),
//       decoration: BoxDecoration(
//         // color: bgColor,
//         border: Border(
//           bottom: BorderSide(color: context.contentBrand, width: 2),
//         ),
//       ),
//     );
//
//     final PinTheme focusedPinTheme = defaultPinTheme.copyWith(
//       decoration: defaultPinTheme.decoration?.copyWith(
//         // borderRadius: BorderRadius.circular(100),
//         border: Border(
//           bottom: BorderSide(color: context.contentPrimary, width: 2),
//         ),
//         // border: Border.,
//       ),
//     );
//
//     final PinTheme submittedPinTheme = defaultPinTheme.copyWith(
//       decoration: defaultPinTheme.decoration?.copyWith(
//         color: bgColor,
//         // borderRadius: BorderRadius.circular(100),
//         border: Border(
//           bottom: BorderSide(color: context.contentPrimary, width: 2),
//         ),
//       ),
//     );
//
//     final PinTheme errorPinTheme = defaultPinTheme.copyBorderWith(
//       border: Border(
//         bottom: BorderSide(color: context.contentPrimary, width: 2),
//       ),
//     );
//
//     return Directionality(
//       textDirection: TextDirection.ltr,
//       child: Pinput(
//         length: widget.pinCount,
//         separatorBuilder: (index) => 8.horizontalSpace,
//         defaultPinTheme: defaultPinTheme,
//         focusedPinTheme: focusedPinTheme,
//         submittedPinTheme: submittedPinTheme,
//         errorPinTheme: errorPinTheme,
//         controller: otpController,
//         mainAxisAlignment: MainAxisAlignment.center,
//         onChanged: widget.onChanged,
//         obscureText: false,
//         obscuringCharacter: "•",
//         preFilledWidget: CustomText(text: "•"),
//         focusNode: _focusNode,
//         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//         cursor: CustomText(text: '|', size: 20, color: focusedBorderColor),
//         isCursorAnimationEnabled: true,
//         showCursor: true,
//       ),
//     );
//   }
// }

///
///
///
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:pinput/pinput.dart';
// import 'package:swipe/config/theme/app_theme.dart';
// import 'package:swipe/core/widget/core_widget_exporter.dart';
// import 'package:swipe/core/widget/spacer.dart';
//
// class OtpBoxBuilder extends StatefulHookWidget {
//   final Function(String? val)? onChanged;
//   final int pinCount;
//   const OtpBoxBuilder({
//     super.key,
//     this.onChanged,
//     this.pinCount = 4,
//   });
//
//   @override
//   State<OtpBoxBuilder> createState() => _OtpBoxBuilderState();
// }
//
// class _OtpBoxBuilderState extends State<OtpBoxBuilder> {
//   final FocusNode _pinPutFocusNode = FocusNode();
//   @override
//   Widget build(BuildContext context) {
//     Color bgColor = context.fieldColor.withOpacity(
//       0.6,
//     );
//     Color focusedBorderColor = context.secondaryColor;
//     Color fillColor = bgColor;
//     final defaultPinTheme = PinTheme(
//       width: 56,
//       height: 56,
//       textStyle: GoogleFonts.inter(
//         fontSize: 16,
//         fontWeight: FontWeight.w700,
//         color: context.blackColor,
//       ),
//       decoration: BoxDecoration(
//           color: bgColor,
//           borderRadius: BorderRadius.circular(
//             100,
//           ),
//           border: Border.all(
//             color: context.borderColor,
//           )),
//     );
//
//     return Directionality(
//       // Specify direction if desired
//       textDirection: TextDirection.ltr,
//       child: Pinput(
//         length: widget.pinCount,
//         separatorBuilder: (index) => addHorizontalSpacing(
//           15,
//         ),
//         defaultPinTheme: defaultPinTheme,
//         mainAxisAlignment: MainAxisAlignment.start,
//         // controller: widget.textCtrl,
//         onChanged: widget.onChanged,
//         obscureText: false,
//         obscuringCharacter: "•",
//         focusNode: _pinPutFocusNode,
//         inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//         focusedPinTheme: defaultPinTheme.copyWith(
//           decoration: defaultPinTheme.decoration!.copyWith(
//             borderRadius: BorderRadius.circular(
//               100,
//             ),
//             border: Border.all(
//               color: context.secondaryColor,
//             ),
//           ),
//         ),
//         submittedPinTheme: defaultPinTheme.copyWith(
//           decoration: defaultPinTheme.decoration!.copyWith(
//             color: fillColor,
//             borderRadius: BorderRadius.circular(
//               100,
//             ),
//             border: Border.all(
//               color: context.secondaryColor,
//             ),
//           ),
//         ),
//         errorPinTheme: defaultPinTheme.copyBorderWith(
//           border: Border.all(
//             color: Colors.redAccent,
//           ),
//         ),
//         cursor: CustomText(
//           text: '|',
//           size: context.isTablet ? 15 : 30,
//           color: context.secondaryColor,
//         ),
//         isCursorAnimationEnabled: true,
//         showCursor: true,
//       ),
//     );
//   }
// }
