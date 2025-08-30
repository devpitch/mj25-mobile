import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        title: CustomText(text: "Login", size: 18, weight: FontWeight.w700),
        automaticallyImplyLeading: false,
      ),
      bottomSheet: AppFooterBox(buttonText: "Login", onTapped: () {}),
      body: Container(
        height: context.deviceHeight,
        width: context.deviceWidth,
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.pageHorizontalPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Email",
                hintColor: HexColor("#5E8C73"),
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Password",
                hintColor: HexColor("#5E8C73"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
