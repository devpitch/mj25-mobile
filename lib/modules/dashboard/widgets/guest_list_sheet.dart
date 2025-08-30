import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestListSheet extends StatelessWidget {
  const GuestListSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconBuilder(iconPath: AppImage.check, size: 18),
            10.horizontalSpace,
            CustomText(
              text: "General",
              size: 16,
              weight: FontWeight.w800,
              color: context.contentTertiary,
            ),
          ],
        ),
        10.verticalSpace,
        CustomLabelTextField(
          hintText: "search guest...",
          hintColor: HexColor("#5E8C73"),
          prefixIcon: IconBuilder(
            iconPath: AppImage.searchIcon,
            color: context.contentTertiary,
          ),
        ),
        40.verticalSpace,
        EventButton(
          width: 300,
          text: "Continue",
          onClick: () {
            // Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
