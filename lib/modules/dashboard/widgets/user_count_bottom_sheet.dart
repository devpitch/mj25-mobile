import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserCountBottomSheet extends StatelessWidget {
  const UserCountBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "How many guests is involve?",
          size: 16,
          weight: FontWeight.w500,
          color: context.contentTertiary,
        ),
        10.verticalSpace,
        CustomLabelTextField(
          hintText: "",
          isNumber: true,
          hintColor: HexColor("#5E8C73"),
        ),
        40.verticalSpace,
        EventButton(
          width: 300,
          text: "Generate",
          onClick: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
