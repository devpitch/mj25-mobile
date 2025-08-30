import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/cores/utils/image_service.dart';
import 'package:event_handler/cores/widgets/app_bottom_sheet.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/upload_image_model.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/dashboard_widgets_exporter.dart';

class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier() : super(DashboardState());

  updateState(Map<String, dynamic> data) {
    state = state.copyWith(activeTab: data["activeTab"]);
  }

  pickImages(BuildContext context, {bool isMore = false}) async {
    try {
      final imageService = genRef!.read(imageServiceProvider);
      final List<File> images = await imageService.pickMultipleImages();

      if (images.isNotEmpty) {
        List<UploadImageModel> imagesList = images
            .map(
              (e) =>
                  UploadImageModel(path: e.path, id: generateImageId(e.path)),
            )
            .toList();
        if (isMore) {
          final currentImage = {...state.images!, ...imagesList};
          imagesList = currentImage.toList();
        }
        state = state.copyWith(images: imagesList);
      }
    } catch (e) {
      log(":::: This is the error during upload ::: $e");
    }
  }

  String generateImageId(String imagePath) {
    // Use SHA1 (or MD5) to hash the path
    final bytes = utf8.encode(imagePath);
    final digest = sha1.convert(bytes);

    // Convert to hex string
    return digest.toString();
  }

  openDetails(BuildContext context, {required UploadImageModel imageInfo}) {
    try {
      state = state.copyWith(activeImage: imageInfo);
      Get.toNamed(AppRouter.photoDetailsView);
    } catch (e) {
      log(":: This is the error during file opening::: $e");
    }
  }

  openSheet({required BuildContext context, required String type}) async {
    try {
      switch (type) {
        case "generateLink":
          {
            AppBottomSheet.show(
              context,
              title: "Guest count",
              child: UserCountBottomSheet(),
            );
            break;
          }
        case "tagGuest":
          {
            AppBottomSheet.show(
              context,
              title: "Tag Guests",
              child: GuestListSheet(),
            );
            break;
          }
      }
    } catch (e) {
      log(":::: This is the error link generate :::: $e");
    }
  }
}

final dashboardProvider = StateNotifierProvider((_) => DashboardNotifier());

class DashboardState {
  final String activeTab;
  final List<UploadImageModel>? images;
  final UploadImageModel? activeImage;

  DashboardState({this.activeTab = "Links", this.images, this.activeImage});

  DashboardState copyWith({
    String? activeTab,
    List<UploadImageModel>? images,
    UploadImageModel? activeImage,
  }) {
    return DashboardState(
      activeTab: activeTab ?? this.activeTab,
      images: images ?? this.images,
      activeImage: activeImage ?? this.activeImage,
    );
  }
}
