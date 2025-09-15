import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/phone_number_formatter/formatted_phone_box.dart';
import 'package:event_handler/modules/authentication/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    useEffect(() {
      Future.microtask(() {
        ref.read(textControllersProvider.notifier).initializeStartups();
        getTextController(TextControllerStrings.password)?.clear();
      });

      return null;
    }, []);

    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        title: CustomText(text: "Login", size: 18, weight: FontWeight.w700),
        automaticallyImplyLeading: false,
      ),
      bottomSheet: AppFooterBox(
        buttonText: "Login",
        isLoading: state.isLoading,
        onTapped: () {
          ref.read(authProvider.notifier).login(context);
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
              // CustomLabelTextField(
              //   hintText: "Phone Number",
              //   keyboardType: TextInputType.phone,
              //   hintColor: HexColor("#5E8C73"),
              //   textCtrl: getTextController(TextControllerStrings.phoneNumber),
              // ),
              FormattedPhoneNumberBox(
                onNumberChange: (number) {
                  getTextController(TextControllerStrings.phoneNumber)!.text =
                      number.phoneNumber ?? "";
                  // log("::: The number is ${number.phoneNumber}");
                },
              ),
              20.verticalSpace,
              CustomLabelTextField(
                hintText: "Password",
                isPassword: true,
                hintColor: HexColor("#5E8C73"),
                textCtrl: getTextController(TextControllerStrings.password),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
