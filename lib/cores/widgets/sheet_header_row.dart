import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class SheetHeaderRow extends StatelessWidget {
  final String label;
  final Function()? onTapped;
  final bool? isReloading;

  const SheetHeaderRow({
    super.key,
    required this.label,
    this.onTapped,
    this.isReloading,
  });

  @override
  Widget build(BuildContext context) {
    // final walletState = ref.watch(walletProvider);
    // final bool isLoading = walletState.loadingTransactions ?? false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // if (isReloading ?? false)
        //   RotatingImageLoader(
        //     imagePath: AppImage.reloadIcon,
        //     size: 24.r,
        //     iconColor: context.contentPrimary,
        //   )
        // else if (onTapped != null)
        //   IconBuilder(
        //     iconPath: AppImage.reloadIcon,
        //     color: context.contentPrimary,
        //     onTapped: onTapped,
        //   )
        // else
        //   SizedBox.shrink(),
        CustomText(text: label, weight: FontWeight.w600, size: 16),

        GestureDetector(
          onTap: () => Navigator.of(context).maybePop(),
          child: CircleAvatar(
            radius: 18.r,
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.close,
              size: 18.41.sp,
              color: context.contentPrimary,
            ),
          ),
        ),
      ],
    );
  }
}

class SheetHeader extends StatelessWidget {
  final String label;
  final Function()? onTapped;
  final bool? isReloading;
  final bool canDismiss;
  const SheetHeader({
    super.key,
    required this.label,
    this.onTapped,
    this.isReloading,
    this.canDismiss = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: context.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        boxShadow: [
          BoxShadow(
            color: context.contentTertiary.withValues(alpha: .08),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // if (isReloading ?? false)
          //   RotatingImageLoader(
          //     imagePath: AppImage.reloadIcon,
          //     size: 24.r,
          //     iconColor: context.contentPrimary,
          //   )
          // else if (onTapped != null)
          //   IconBuilder(
          //     iconPath: AppImage.reloadIcon,
          //     color: context.contentPrimary,
          //     onTapped: onTapped,
          //   )
          // else
          //   SizedBox(width: 50),
          CustomText(text: label, weight: FontWeight.w600, size: 16),
          if (canDismiss)
            GestureDetector(
              onTap: () => Navigator.of(context).maybePop(),
              child: CircleAvatar(
                radius: 18.r,
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.close,
                  size: 18.41.sp,
                  color: context.contentPrimary,
                ),
              ).paddingOnly(right: 10),
            )
          else
            SizedBox(width: 50),
        ],
      ),
    );
  }
}
