import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/custom_textfield.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TaggedGuestBuilder extends StatelessWidget {
  final bool noPadding, isFlex;
  const TaggedGuestBuilder({
    super.key,
    this.noPadding = false,
    this.isFlex = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeaderText(label: "Tagged Guests").paddingSymmetric(
          horizontal: noPadding ? 0 : AppConstants.pageHorizontalPadding,
        ),
        ...[
          20.verticalSpace,
          CustomLabelTextField(
            hintText: "search guest...",
            hintColor: HexColor("#5E8C73"),
            prefixIcon: IconBuilder(
              iconPath: AppImage.searchIcon,
              color: context.contentTertiary,
            ),
          ),
        ],
        if (isFlex)
          Expanded(
            child: TaggedGuestListBuilder(noPadding: noPadding, isFlex: isFlex),
          )
        else
          TaggedGuestListBuilder(noPadding: noPadding, isFlex: isFlex),
      ],
    );
  }
}

class TaggedGuestListBuilder extends StatelessWidget {
  const TaggedGuestListBuilder({
    super.key,
    required this.noPadding,
    required this.isFlex,
  });

  final bool noPadding, isFlex;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: !isFlex ? const NeverScrollableScrollPhysics() : null,
      padding: EdgeInsets.only(
        bottom: 80,
        top: 20,
        left: noPadding ? 0 : AppConstants.pageHorizontalPadding,
        right: noPadding ? 0 : AppConstants.pageHorizontalPadding,
      ),
      itemBuilder: (cxt, index) => PhotoGuestInfo(),
      separatorBuilder: (_, __) => 10.verticalSpace,
      itemCount: 15,
    );
  }
}

class PhotoGuestInfo extends StatelessWidget {
  const PhotoGuestInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: "Sarah Jones",
            weight: FontWeight.w500,
            color: ThemeColors.contentPrimary,
            size: 16,
          ),
          CustomText(
            text: "sarah.jones@email.com",
            color: ThemeColors.contentTertiary,
          ),
        ],
      ),
    );
  }
}
