import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_dropdown.dart';
import 'package:event_handler/modules/dashboard/domain/constant.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddNewGuestScreen extends ConsumerWidget {
  const AddNewGuestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);

    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(title: AppHeaderText(label: "Add Guest Details")),
      bottomSheet: AppFooterBox(
        bottomPadding: 20,
        isLoading: state.isAddingGuest ?? false,
        buttonText: "Add Guest",
        onTapped: () {
          notifier.attachGuest(context);
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
              CustomLabelDropDown(
                hintText: "Select",
                items: titles,
                labelText: "Title",
                borderColor: Colors.transparent,
                isOutline: true,
                selectedText: state.selectedTitle?.label,
                fillColor: HexColor("#5E8C73").withValues(alpha: .1),
                onChange: (value) {
                  notifier.updateState({"selectedTitle": value});
                },
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Enter first name",
                labelText: "First Name",
                textCtrl: getTextController(TextControllerStrings.firstName),
                isRequired: true,
                textInputAction: TextInputAction.next,
                hintColor: HexColor("#5E8C73"),
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Enter last name",
                labelText: "Last Name",
                textInputAction: TextInputAction.next,
                textCtrl: getTextController(TextControllerStrings.lastName),
                isRequired: true,
                hintColor: HexColor("#5E8C73"),
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Enter phone number",
                labelText: "Phone Number",
                isRequired: true,
                textInputAction: TextInputAction.next,
                textCtrl: getTextController(TextControllerStrings.phoneNumber),
                hintColor: HexColor("#5E8C73"),
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Enter email address",
                labelText: "Email Address",
                textInputAction: TextInputAction.done,
                textCtrl: getTextController(TextControllerStrings.email),
                isRequired: true,
                hintColor: HexColor("#5E8C73"),
              ),
              150.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
