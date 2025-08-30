import 'dart:io';

import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme/app_theme.dart';

class CustomLabelTextField extends HookWidget {
  final String hintText;
  final String? labelText, labelFontFamily;
  final bool isPassword, isRequired, isNumber, isReadOnly, noBorder;
  final Widget? prefixIcon, suffixIcon;
  final Widget? customLabel;
  final double? radius, labelSize, boxHPadding;
  final int? maxLines;
  final double? height, minHeight;
  final bool noMaxLine;
  final FocusNode? focus;
  final TextInputAction? textInputAction;
  final Color? hintColor, fillColor;
  final FontWeight? labelWeight, hintWeight;
  final TextEditingController? textCtrl;
  final Function(String?)? onChange;
  final Function(String?)? onSubmitted;
  final List<TextInputFormatter>? textInputForm;
  final TextInputType? keyboardType;
  final BoxBorder? border;
  const CustomLabelTextField({
    super.key,
    this.hintWeight,
    required this.hintText,
    this.hintColor,
    this.fillColor,
    this.height,
    this.boxHPadding,
    this.noMaxLine = false,
    this.labelFontFamily,
    this.labelWeight,
    this.labelText,
    this.minHeight,
    this.customLabel,
    this.textInputForm,
    this.textInputAction,
    this.onSubmitted,
    this.radius,
    this.labelSize,
    this.maxLines,
    this.keyboardType,
    this.isPassword = false,
    this.isRequired = false,
    this.isNumber = false,
    this.isReadOnly = false,
    this.noBorder = false,
    this.textCtrl,
    this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.border,
    this.focus,
  });

  @override
  Widget build(BuildContext context) {
    final myFocusNode = useFocusNode();
    final ValueNotifier<bool> showPassword = useState(!isPassword);
    useEffect(() {
      myFocusNode.canRequestFocus = false;
      return null;
    }, []);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          Row(
            children: [
              CustomText(
                text: labelText ?? "",
                color: context.contentTertiary,
                weight: labelWeight,
                size: labelSize ?? 14,
                fontFamily: labelFontFamily ?? "Inter",
              ),
              if (isRequired) ...[
                2.horizontalSpace,
                CustomText(
                  text: "*",
                  color: context.contentNegative,
                  weight: FontWeight.w600,
                  size: 15,
                ),
              ],
            ],
          ),
          5.verticalSpace,
        ],
        Container(
          height:
              height ??
              (noMaxLine
                  ? null
                  : (maxLines != null)
                  ? (17 * maxLines!).toDouble()
                  : 52),
          constraints: BoxConstraints(minHeight: minHeight ?? 50),
          padding: EdgeInsets.symmetric(horizontal: boxHPadding ?? 12.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? (noBorder ? 0 : 22)),
            color:
                fillColor ?? context.backgroundSecondary.withValues(alpha: 0.6),
            border:
                border ??
                (noBorder
                    ? null
                    : Border.all(
                      color: fillColor ?? context.borderPrimary,
                      width: 1,
                    )),
          ),
          child: Row(
            children: [
              if (prefixIcon != null) prefixIcon!.paddingOnly(right: 8.w),
              Expanded(
                child: TextFormField(
                  obscureText: !showPassword.value,

                  keyboardType:
                      keyboardType ?? (isNumber ? TextInputType.number : null),
                  controller: textCtrl,
                  readOnly: isReadOnly,
                  focusNode: focus ?? myFocusNode,
                  textInputAction:
                      textInputAction ??
                      (Platform.isIOS ? TextInputAction.done : null),
                  maxLines: noMaxLine ? null : maxLines ?? 1,
                  cursorColor: context.contentPrimary,
                  inputFormatters: textInputForm,
                  style: GoogleFonts.inter(
                    color: context.contentPrimary,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: GoogleFonts.inter(
                      fontSize: 15,
                      color:
                          hintColor ??
                          context.contentPrimary.withValues(alpha: 0.8),
                      fontWeight: hintWeight,
                    ),
                  ),
                  onChanged: onChange,
                  onTapOutside: (e) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  onFieldSubmitted: onSubmitted,
                ),
              ),
              if (isPassword && suffixIcon == null)
                GestureDetector(
                  onTap: () {
                    showPassword.value = !showPassword.value;
                  },
                  child: Icon(
                    showPassword.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 24.sp,
                    color: context.contentPrimary,
                  ).paddingOnly(left: 8.sp),
                ),
              if (suffixIcon != null) suffixIcon!.paddingOnly(left: 8.w),
            ],
          ),
        ),
      ],
    );
  }
}
