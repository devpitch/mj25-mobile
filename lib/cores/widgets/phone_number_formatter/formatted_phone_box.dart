import 'dart:developer';

import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/providers/phone_number_validator.dart';
import 'src/utils/phone_number.dart';
import 'src/utils/selector_config.dart';
import 'src/widgets/input_widget.dart';

class FormattedPhoneNumberBox extends ConsumerStatefulWidget {
  final bool isRequired;
  final String? label1;
  final String? label2;
  final Function(PhoneNumber number) onNumberChange;

  const FormattedPhoneNumberBox({
    super.key,
    this.isRequired = true,
    required this.onNumberChange,
    this.label1,
    this.label2,
  });

  @override
  ConsumerState<FormattedPhoneNumberBox> createState() =>
      _FormattedPhoneNumberBoxState();
}

String initialCountry = 'NG';
PhoneNumber number = PhoneNumber(isoCode: 'NG');

class _FormattedPhoneNumberBoxState
    extends ConsumerState<FormattedPhoneNumberBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InternationalPhoneNumberInput(
          onInputChanged: widget.onNumberChange,
          onInputValidated: (bool value) {},
          label1: widget.label1,
          label2: widget.label2,
          inputBorder: InputBorder.none,
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG,
            setSelectorButtonAsPrefixIcon: true,
          ),
          ignoreBlank: false,
          hintText: "(999) 999-9999",
          autoValidateMode: AutovalidateMode.onUserInteraction,
          selectorTextStyle: TextStyle(
            // color: context.contentPrimary,
            fontSize: 16.sp,
          ),
          initialValue: number,
          formatInput: true,
          keyboardType: const TextInputType.numberWithOptions(
            signed: true,
            decimal: true,
          ),
          onSaved: (PhoneNumber number) {
            log('On Saved: $number');
          },
        ),
        5.verticalSpace,
        if (!ref.watch(phoneVerificationProvider).isNumberVerified)
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: "Invalid phone number!",
              color: context.contentNegative,
              size: 13,
              weight: FontWeight.w500,
            ),
          ),
      ],
    );
  }
}
