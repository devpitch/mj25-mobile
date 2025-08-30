import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewGuestScreen extends StatelessWidget {
  const AddNewGuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        title: AppHeaderText(label: "Add Guest Details"),
        automaticallyImplyLeading: false,
      ),
      bottomSheet: AppFooterBox(
        buttonText: "Add Guest",
        onTapped: () {
          // Get.toNamed(AppRouter.dashboardView);
        },
      ),
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
                hintText: "Enter full name",
                labelText: "Full Name",
                isRequired: true,
                hintColor: HexColor("#5E8C73"),
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Enter phone number",
                labelText: "Phone Number",
                isRequired: true,
                hintColor: HexColor("#5E8C73"),
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Enter email address",
                labelText: "Email Address",
                isRequired: true,
                hintColor: HexColor("#5E8C73"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
