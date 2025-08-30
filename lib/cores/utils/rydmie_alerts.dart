import 'package:another_flushbar/flushbar.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

const kFlushBarDuration = 4;

class RydmieAlert {
  RydmieAlert._();

  static Flushbar<dynamic>? _currentFlushbar;

  static void performActionWithSuccessAlert(
    BuildContext context, {
    required Future<void> Function() action,
    required String message,
  }) async {
    await action();
    showSuccess(context, message: message);
  }

  static void performActionWithErrorAlert(
    BuildContext context, {
    required Future<void> Function() action,
    required String message,
  }) async {
    await action();
    showError(context, message: message);
  }

  static void showSuccess(
    BuildContext context, {
    String title = "Success!",
    required String message,
    VoidCallback? afterAction,
  }) {
    _showFlushbar(
      context,
      message: message,
      icon: Icons.check,
      textColor: ThemeColors.contentPositive,
      backgroundColor: ThemeColors.backgroundPositiveSubtitle,
      afterAction: afterAction,
    );
  }

  static showSuccessWithButton(
    BuildContext context, {
    String title = "Success!",
    required String message,
    required Widget mainButton,
  }) {
    _showFlushbar(
      context,
      message: message,
      icon: Icons.check,
      textColor: ThemeColors.contentPositive,
      backgroundColor: ThemeColors.backgroundPositiveSubtitle,
      mainButton: mainButton,
      duration: const Duration(seconds: 4),
    );
  }

  static void showError(
    BuildContext context, {
    String title = "Error",
    required String message,
    VoidCallback? afterAction,
  }) {
    _showFlushbar(
      context,
      message: message,
      icon: Icons.info_outline_rounded,
      textColor: ThemeColors.contentNegative,
      backgroundColor: ThemeColors.backgroundNegativeSubtitle,
      afterAction: afterAction,
    );
  }

  static void showWarning(
    BuildContext context, {
    String title = "Warning!",
    required String message,
    VoidCallback? afterAction,
  }) {
    _showFlushbar(
      context,
      message: message,
      icon: Icons.warning_rounded,
      textColor: const Color(0xFF9A3412), // Dark orange text
      backgroundColor: const Color(0xFFFED7AA), // Light orange background
      iconColor: const Color(0xFFEA580C), // Orange icon
      afterAction: afterAction,
    );
  }

  static void showInfo(
    BuildContext context, {
    String title = "Info!",
    required String message,
    VoidCallback? afterAction,
  }) {
    _showFlushbar(
      context,
      message: message,
      icon: Icons.info_outline_rounded,
      textColor: ThemeColors.contentPrimary,
      backgroundColor: ThemeColors.backgroundPrimary,
      afterAction: afterAction,
    );
  }

  static void dismiss() {
    _currentFlushbar?.dismiss();
    _currentFlushbar = null;
  }

  static void _showFlushbar(
    BuildContext context, {
    required String message,
    required IconData icon,
    required Color textColor,

    Color? iconColor,
    required Color backgroundColor,
    Duration duration = const Duration(seconds: kFlushBarDuration),
    Widget? mainButton,
    VoidCallback? afterAction,
  }) {
    _currentFlushbar?.dismiss(); // dismiss any existing toast

    _currentFlushbar = Flushbar(
      message: message,
      icon: Icon(icon, color: iconColor ?? textColor),
      messageColor: textColor,
      backgroundColor: backgroundColor,
      duration: duration,
      flushbarPosition: FlushbarPosition.TOP,
      borderRadius: BorderRadius.circular(8),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 18),
      isDismissible: true,
      shouldIconPulse: false,
      mainButton: mainButton,
    );

    _currentFlushbar!.show(context).then((_) {
      _currentFlushbar = null;
      afterAction?.call();
    });
  }
}
