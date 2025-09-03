import 'dart:io' show Platform, exit;
import 'dart:math' show Random;

import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
// import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class HelperFunctions {
  // static final Random _random = Random();
  static final sharePlus = SharePlus.instance;

  static showStyledToast({
    BuildContext? context,
    required String message,
    bool isError = false,
    String? svgPath,
  }) {
    BuildContext cxt =
        context ?? genRef!.read(globalBuildContextProvider) ?? Get.context!;
    showToastWidget(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: cxt.deviceWidth * 0.95,
            padding: EdgeInsets.all(7.sp),
            constraints: BoxConstraints(minHeight: 60),
            decoration: BoxDecoration(
              color:
                  (isError
                          ? cxt.contentNegative
                          : (cxt.isDarkMode
                                ? cxt.backgroundSecondary
                                : cxt.primaryColor))
                      .withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Container(
              padding: EdgeInsets.all(5.sp),
              decoration: BoxDecoration(
                color: isError
                    ? cxt.contentNegative
                    : (cxt.isDarkMode
                          ? cxt.backgroundSecondary
                          : cxt.primaryColor),
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    svgPath ?? "assets/svgs/notify.svg",
                    height: 20,
                    colorFilter: ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  10.horizontalSpace,
                  Expanded(
                    child: CustomText(
                      text: message,
                      weight: FontWeight.w500,
                      // size: 1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      context: cxt,
      animation: StyledToastAnimation.scale,
      reverseAnimation: StyledToastAnimation.fade,
      position: StyledToastPosition.top,
      dismissOtherToast: true,
      animDuration: Duration(milliseconds: 800),
      duration: Duration(seconds: 4),
      curve: Curves.elasticOut,
      reverseCurve: Curves.bounceIn,
    );
  }

  static SfBarcodeGenerator drawBarcode(String value) {
    return SfBarcodeGenerator(
      value: value,
      barColor: Get.context!.contentPrimary,
    );
  }

  // static Future<AssetEntity?>? openCameraRecord(BuildContext context) async {
  //   final AssetEntity? entity = await CameraPicker.pickFromCamera(
  //     context,
  //     locale: Locale("en"),
  //     pickerConfig: const CameraPickerConfig(
  //       enableAudio: true,
  //       enableRecording: true,
  //       enableTapRecording: true,
  //     ),
  //   );
  //
  //   return entity;
  // }

  // static void showPageLoader(BuildContext cxt) {
  //   showCustomDialog(
  //     cxt,
  //     allowDismissal: false,
  //     child: RotatingImageLoader(
  //       imagePath: AppImage.loadingIcon,
  //       size: 50,
  //       iconColor: Get.context!.primaryColor,
  //     ),
  //   );
  // }

  static Future<void> shareItem({
    required bool isFile,
    String? item,
    XFile? file,
    String? description,
  }) async {
    if (isFile) {
      _shareFile(file, description);
    } else {
      _shareText(item, description);
    }
  }

  static Future<void> _shareFile(XFile? file, String? description) async {
    if (file != null && file.path.isNotEmpty) {
      final result = await sharePlus.share(
        ShareParams(files: [file], text: description),
      );
      if (result.status == ShareResultStatus.success) {
        showStyledToast(message: "File shared successfully.");
      }
    } else {
      showStyledToast(
        message: "Invalid operation: file cannot be null or empty.",
        isError: true,
      );
    }
  }

  static Future<void> _shareText(String? item, String? description) async {
    if (item != null && item.isNotEmpty) {
      await sharePlus.share(ShareParams(text: item, subject: description));
    } else {
      showStyledToast(
        message: "Item attribute cannot be empty.",
        isError: true,
      );
    }
  }

  static String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  static sendMail({
    required String to,
    required String subject,
    String? body,
  }) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: to,
      query: encodeQueryParameters(<String, String>{
        'subject': subject,
        'body': body ?? '',
      }),
    );

    launchUrl(emailLaunchUri);
  }

  static exitApp() {
    if (Platform.isAndroid) {
      // Closes the app on Android
      SystemNavigator.pop();
    } else if (Platform.isIOS) {
      // Closes the app on iOS
      exit(0); // Force exit (not recommended for App Store apps)
    }
  }

  static String getInitials(String fullName) {
    if (fullName.isEmpty) {
      return '-';
    }
    final List<String> parts = fullName.split(' ');
    return parts.map((String part) => part[0]).join('');
  }

  static DateTime? getDateTimeFromLoginExpiryDate(String durationOrDate) {
    final isoDateRegex = RegExp(r'^\d{4}-\d{2}-\d{2}T.*Z$');
    final durationRegex = RegExp(r'^(\d+)([smhdwmy])$');

    // Try ISO 8601 format
    if (isoDateRegex.hasMatch(durationOrDate)) {
      try {
        return DateTime.parse(
          durationOrDate,
        ).toLocal(); // Adjust to local time if needed
      } catch (e) {
        return null;
      }
    }

    // Try duration format like "30m"
    final match = durationRegex.firstMatch(durationOrDate);
    if (match == null) {
      return null;
    }

    final value = int.parse(match.group(1)!);
    final unit = match.group(2);
    final now = DateTime.now();

    switch (unit) {
      case 's':
        return now.add(Duration(seconds: value));
      case 'm':
        return now.add(Duration(minutes: value));
      case 'h':
        return now.add(Duration(hours: value));
      case 'd':
        return now.add(Duration(days: value));
      case 'w':
        return now.add(Duration(days: value * 7));
      case 'y':
        return DateTime(
          now.year + value,
          now.month,
          now.day,
          now.hour,
          now.minute,
          now.second,
        );
      default:
        return null;
    }
  }

  static bool checkIfDateIsInTheFuture(DateTime date) {
    final now = DateTime.now();
    return date.isAfter(now);
  }

  static Future<DateTime?> pickDate(
    BuildContext context, {
    bool isBirthDate = false,
    DateTime? initialDate,
    DateTime? lastDate,
  }) async {
    double screenHeight = context.deviceHeight;
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      firstDate: initialDate ?? (isBirthDate ? DateTime(1800) : DateTime.now()),
      lastDate:
          lastDate ??
          (isBirthDate ? DateTime.now() : DateTime(DateTime.now().year + 10)),
      builder: (BuildContext context, Widget? child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: screenHeight < 750
                  ? 650.h
                  : 500.h, // 50% of screen height
              child: Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: ColorScheme.light(
                    primary: context.primaryColor,
                    onPrimary: context.backgroundColor,
                    onSurface: context.contentPrimary,
                  ),
                  dialogBackgroundColor: context.backgroundColor,
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      foregroundColor: context.contentPrimary,
                    ),
                  ),
                ),
                child: child!,
              ),
            ),
          ],
        );
      },
    );

    if (picked != null) return picked;
    return null;
  }

  static Color generateRandomColor() {
    final Random random = Random();
    return Color.fromARGB(
      255, // Full opacity
      random.nextInt(256), // Red: 0–255
      random.nextInt(256), // Green: 0–255
      random.nextInt(256), // Blue: 0–255
    );
  }

  static void copyToClipboard({required String item}) {
    Clipboard.setData(ClipboardData(text: item));
    showStyledToast(message: "Copied to clipboard");
  }

  static Future<void> openLink({required String link}) async {
    final Uri urlApp = Uri.parse(link);
    // final Uri urlApp = Uri.parse("twitter://user?screen_name=$username");
    final Uri urlWeb = Uri.parse(link);
    // final Uri urlWeb = Uri.parse("https://x.com/$username");

    if (await canLaunchUrl(urlApp)) {
      await launchUrl(urlApp);
    } else {
      await launchUrl(urlWeb, mode: LaunchMode.externalApplication);
    }
  }

  static formatDuration(Duration d) {
    final h = d.inHours.toString().padLeft(2, '0');
    final m = (d.inMinutes % 60).toString().padLeft(2, '0');
    final s = (d.inSeconds % 60).toString().padLeft(2, '0');
    return "$h:$m:$s";
  }
}
