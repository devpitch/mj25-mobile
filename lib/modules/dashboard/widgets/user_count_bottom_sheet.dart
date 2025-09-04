import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/cores/widgets/custom_dropdown.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/modules/dashboard/domain/constant.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserCountBottomSheet extends ConsumerWidget {
  const UserCountBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);
    final notifier = ref.read(dashboardProvider.notifier);

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLabelTextField(
            hintText: "",
            isNumber: true,
            labelSize: 16,
            labelWeight: FontWeight.w500,
            textInputAction: TextInputAction.next,
            labelText: "How many guests is involve?",
            hintColor: HexColor("#5E8C73"),
            textCtrl: getTextController(TextControllerStrings.guestCount),
          ),
          20.verticalSpace,
          CustomLabelTextField(
            hintText: "",
            isNumber: true,
            labelSize: 16,
            labelWeight: FontWeight.w500,
            labelText: "How many guests per entry?",
            hintColor: HexColor("#5E8C73"),
            textInputAction: TextInputAction.next,
            textCtrl: getTextController(TextControllerStrings.guestPerEntry),
          ),
          20.verticalSpace,
          CustomLabelTextField(
            hintText: "",
            isNumber: true,
            labelSize: 16,
            labelWeight: FontWeight.w500,
            labelText: "Link count",
            textInputAction: TextInputAction.next,
            hintColor: HexColor("#5E8C73"),
            textCtrl: getTextController(TextControllerStrings.linkCount),
          ),
          20.verticalSpace,
          CustomLabelDropDown(
            hintText: "Select Link Type",
            labelText: "Link Type",
            isOutline: true,
            borderColor: Colors.transparent,
            selectedText: state.selectedLinkType,
            fillColor: context.backgroundSecondary.withValues(alpha: 0.1),
            items: inviteLinkItems,
            onChange: (value) {
              notifier.updateState({"selectedLinkType": value!.label});
            },
          ),
          40.verticalSpace,
          EventButton(
            width: double.infinity,
            text: "Generate",
            isLoading: state.isGeneratingLink ?? false,
            onClick: () {
              notifier.generateInviteLink(context);
            },
          ),
        ],
      ),
    );
  }
}
