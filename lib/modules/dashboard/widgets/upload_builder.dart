import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:event_handler/config/theme/app_colors.dart';
import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/cores/widgets/app_header.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:event_handler/modules/dashboard/models/upload_image_model.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dashboard_widgets_exporter.dart';

class UploadViewBuilder extends ConsumerWidget {
  const UploadViewBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(dashboardProvider.notifier);
    final state = ref.watch(dashboardProvider);
    final List<UploadImageModel> images = state.images ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppHeaderText(label: images.isEmpty ? "Select Images" : "Photos"),
            if (state.images?.isNotEmpty ?? false)
              IconBuilder(
                iconPath: AppImage.serverUpload,
                size: 30,
                color: ThemeColors.contentSecondary,
                onTapped: () {
                  notifier.uploadImages(context);
                },
              ),
          ],
        ),
        10.verticalSpace,
        if (images.isEmpty)
          DottedBorder(
            options: RoundedRectDottedBorderOptions(
              radius: Radius.circular(12.r),
              strokeCap: StrokeCap.round,
              color: context.contentTertiary,
              padding: EdgeInsets.zero,
              dashPattern: [3, 2],
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
              width: double.infinity,
              height: 253,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppHeaderText(label: "Tap to select images"),
                  10.verticalSpace,
                  CustomText(
                    text: "Choose images from your gallery or take new photos.",
                    isCenter: true,
                  ),
                  15.verticalSpace,
                  EventButton(
                    width: 129,
                    height: 40,
                    text: "Select Images",
                    textColor: context.contentPrimary,
                    textSize: 13.5,
                    fillColor: HexColor("#F0F5F2"),
                    onClick: () {
                      notifier.pickImages(context);
                    },
                  ),
                ],
              ),
            ),
          )
        else ...[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(bottom: 10, top: 15),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (cxt, index) {
                      final image = images[index];
                      return Stack(
                        children: [
                          Positioned.fill(
                            child: GestureDetector(
                              onTap: () {
                                notifier.openDetails(context, imageInfo: image);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.r),
                                child: Image.file(
                                  File(image.path),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: GestureDetector(
                              onTap: () {
                                notifier.removeImage(image);
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: context.contentSecondary,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),
                  ),
                  15.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: EventButton(
                          width: double.infinity,
                          text: "+ Tag Guests",
                          textColor: context.backgroundSecondary,
                          fillColor: context.contentSecondary,
                          onClick: () {
                            notifier.openSheet(
                              context: context,
                              type: "tagGuest",
                            );
                          },
                        ),
                      ),
                      15.horizontalSpace,
                      Flexible(
                        child: EventButton(
                          width: double.infinity,
                          text: "Upload More",
                          onClick: () {
                            notifier.pickImages(context, isMore: true);
                          },
                        ),
                      ),
                    ],
                  ),
                  if (state.generalTaggedGuest?.isNotEmpty ??
                      false || (state.isGeneralTag ?? false)) ...[
                    20.verticalSpace,
                    if (state.isGeneralTag ?? false)
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Center(
                          child: CustomText(
                            text: "Tagged Everyone",
                            weight: FontWeight.w800,
                            color: context.contentSecondary,
                            size: 20,
                          ),
                        ),
                      )
                    else
                      TaggedGuestBuilder(noPadding: true, isFlex: false),
                  ],
                ],
              ),
            ),
          ),

          // 120.verticalSpace,
        ],
      ],
    );
  }
}
