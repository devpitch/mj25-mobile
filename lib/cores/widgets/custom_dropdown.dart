import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

class CustomLabelDropDown extends HookWidget {
  final String hintText;
  final String? selectedText;
  final String? labelText;
  final List<DropdownItem> items;
  final bool isDropFullWidth;
  final bool isOutline;
  final double? height;
  final FontWeight? labelWeight;
  final bool isRequired, isReadOnly;
  final Color? borderColor;
  final Widget? customLabel;
  final Widget? customSuffix;
  final double? maxWidth;
  final Color? hintColor;
  final Color? fillColor;
  final Function(DropdownItem?)? onChange;

  const CustomLabelDropDown({
    super.key,
    required this.hintText,
    this.hintColor,
    required this.items,
    this.labelText,
    this.labelWeight,
    this.maxWidth,
    this.selectedText,
    this.height,
    this.customLabel,
    this.borderColor,
    this.fillColor,
    this.customSuffix,
    this.isRequired = false,
    this.isOutline = false,
    this.isDropFullWidth = true,
    this.isReadOnly = false,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> showPassword = useState(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText!.isNotEmpty) ...[
          Row(
            children: [
              CustomText(
                text: labelText!,
                color: context.contentPrimary,
                weight: labelWeight,
              ),
              // addHorizontalSpacing(AppSpacing.xSmall),
              if (isRequired)
                CustomText(
                  text: "*",
                  color: context.contentNegative,
                  weight: FontWeight.w700,
                  size: 16,
                ),
            ],
          ),
          5.verticalSpace,
        ],
        PopupMenuButton(
          elevation: 4,
          splashRadius: 0,
          surfaceTintColor: Colors.transparent,

          enableFeedback: false,
          enabled: !isReadOnly,
          constraints:
              isDropFullWidth
                  ? BoxConstraints(
                    minWidth:
                        maxWidth != null
                            ? (maxWidth! - 60)
                            : context.deviceWidth - 100,
                    maxWidth: maxWidth ?? context.deviceWidth * .9,
                    maxHeight: context.deviceHeight * .6,
                  )
                  : null,
          position: PopupMenuPosition.under,
          color: context.backgroundColor,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
          onOpened: () {
            showPassword.value = true;
          },
          onCanceled: () {
            showPassword.value = false;
          },
          onSelected: (val) {
            showPassword.value = false;
          },
          itemBuilder: (context) {
            return items.map((item) {
              return PopupMenuItem<DropdownItem>(
                value: item,
                onTap: () {
                  onChange?.call(item);
                },
                child: SizedBox(
                  width: isDropFullWidth ? context.deviceWidth : null,
                  child: CustomText(
                    text: item.label,
                    color: context.contentTertiary,
                  ),
                ),
              );
            }).toList();
          },
          child: Container(
            height: height ?? 50,
            constraints: BoxConstraints(minHeight: 50),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isOutline ? 8 : 0),
              color: fillColor ?? Colors.transparent,
              // color: context.contentTertiary.withValues(alpha: 0.6),
              border:
                  isOutline
                      ? Border.all(
                        color: borderColor ?? context.borderPrimary,
                        width: 1,
                      )
                      : Border(
                        bottom: BorderSide(
                          color: context.borderPrimary,
                          width: 1,
                        ),
                      ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      if (customSuffix != null) customSuffix!,
                      Flexible(
                        child: CustomText(
                          text: selectedText ?? hintText,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          color:
                              selectedText != null
                                  ? context.contentPrimary
                                  : context.contentTertiary,
                          weight:
                              selectedText != null
                                  ? FontWeight.w500
                                  : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  showPassword.value
                      ? Icons.keyboard_arrow_up_rounded
                      : Icons.keyboard_arrow_down_outlined,
                  size: 24,
                  color:
                      selectedText != null
                          ? context.contentPrimary
                          : context.contentTertiary,
                ).paddingOnly(left: 8.sp),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DropdownItem {
  final String? value;
  final String label;
  final String? id;

  DropdownItem({this.value, required this.label, this.id});
}
