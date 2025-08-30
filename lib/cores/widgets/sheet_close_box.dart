import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SheetCloseBox extends StatelessWidget {
  final Function()? onTapped;
  const SheetCloseBox({super.key, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap:
            onTapped ??
            () {
              Navigator.of(context).maybePop();
            },
        child: CircleAvatar(
          radius: 20.r,
          backgroundColor: context.borderPrimary,
          child: Icon(
            Icons.close,
            color: context.backgroundColor,
            size: 25.sp,
            weight: 500,
          ),
        ),
      ),
    );
  }
}
