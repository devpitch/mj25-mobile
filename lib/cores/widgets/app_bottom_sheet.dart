import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'custom_text.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    super.key,
    required this.child,
    this.title,
    this.isDismissible = true,
    this.horizontalPadding = 24,
    this.isScrollable = true,
  });

  final Widget child;
  final String? title;
  final bool isDismissible;
  final double horizontalPadding;
  final bool isScrollable;

  static Future show(
    BuildContext context, {
    required Widget child,
    String title = "",
    bool isDismissible = true,
    double horizontalPadding = 24,
    bool isScrollable = true,
    bool expand = false,
  }) {
    return showCupertinoModalBottomSheet(
      context: context,
      isDismissible: isDismissible,
      topRadius: const Radius.circular(18),
      expand: expand,
      builder: (_) => AppBottomSheet(
        title: title,
        horizontalPadding: horizontalPadding,
        isDismissible: isDismissible,
        isScrollable: isScrollable,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: isScrollable
              ? SingleChildScrollView(child: _buildBody(context))
              : _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title ?? "",
                color: context.contentPrimary,
                size: 16,
                weight: FontWeight.w700,
              ),
              Visibility(
                visible: isDismissible,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.clear, color: context.contentTertiary),
                ),
              ),
            ],
          ),
        ),
        isScrollable ? child : Expanded(child: child),
        const SizedBox(height: 16),
      ],
    );
  }
}
