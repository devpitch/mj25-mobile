import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skeletonizer/skeletonizer.dart';

class IconBuilder extends StatelessWidget {
  final String iconPath;
  final double size;
  final Color? color;
  final bool noColor;
  final VoidCallback? onTapped;
  const IconBuilder({
    super.key,
    required this.iconPath,
    this.size = 24,
    this.noColor = false,
    this.color,
    this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    bool isSvg = iconPath.endsWith(".svg");
    return Skeleton.shade(
      child: GestureDetector(
        onTap: onTapped,
        child:
            isSvg
                ? SvgPicture.asset(
                  iconPath,
                  colorFilter:
                      noColor
                          ? null
                          : ColorFilter.mode(
                            color ?? context.contentPrimary,
                            BlendMode.srcIn,
                          ),
                  height: size.sp,
                )
                : Image.asset(iconPath, height: size, fit: BoxFit.cover),
      ),
    );
  }
}
