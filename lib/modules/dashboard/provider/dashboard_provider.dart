import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/image_service.dart';
import 'package:event_handler/cores/utils/rydmie_alerts.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/cores/widgets/app_bottom_sheet.dart';
import 'package:event_handler/cores/widgets/custom_dropdown.dart';
import 'package:event_handler/injections/injector.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/request/add_guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/create_invitation_link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:event_handler/modules/dashboard/models/response/rsvp_model.dart';
import 'package:event_handler/modules/dashboard/models/upload_image_model.dart';
import 'package:event_handler/modules/dashboard/services/dashboard_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/dashboard_widgets_exporter.dart';

class DashboardNotifier extends StateNotifier<DashboardState> {
  final DashboardService _service;
  DashboardNotifier(this._service) : super(DashboardState());

  updateState(Map<String, dynamic> data) {
    state = state.copyWith(
      activeTab: data["activeTab"],
      selectedLinkType: data["selectedLinkType"],
      activeInviteLink: data["activeInviteLink"],
      selectedTitle: data["selectedTitle"],
    );
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

  getInvitationLinks({bool showLoader = true}) async {
    try {
      if ((!showLoader && (state.invitationLinks?.items?.isEmpty ?? false)) ||
          showLoader) {
        state = state.copyWith(loadingLinks: true);
      }

      LinkRequestModel request = LinkRequestModel(
        limit: 50,
        page: 1,
        search: "",
        input: InvitationFilterInput(),
      );

      final response = await _service.getInvitationLink(request);

      if (response != null) {
        state = state.copyWith(invitationLinks: response);
      }
    } catch (e) {
      log("There is an error from get invitation flow::: e");
    } finally {
      state = state.copyWith(loadingLinks: false);
    }
  }

  openSheet({required BuildContext context, required String type}) async {
    try {
      switch (type) {
        case "generateLink":
          {
            genRef!
                .read(textControllersProvider.notifier)
                .initializeTextController([
                  TextControllerStrings.guestCount,
                  TextControllerStrings.linkCount,
                  TextControllerStrings.guestPerEntry,
                ]);
            state = state.copyWith(clearLinkGen: "yes");
            AppBottomSheet.show(
              context,
              title: "Invite Link Generator",
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

  generateInviteLink(BuildContext context) async {
    try {
      state = state.copyWith(isGeneratingLink: true);
      // Get raw values
      final guestPerEntryText =
          getTextController(TextControllerStrings.guestPerEntry)?.text.trim() ??
          '';
      final guestSizeText =
          getTextController(TextControllerStrings.guestCount)?.text.trim() ??
          '';
      final linkCountText =
          getTextController(TextControllerStrings.linkCount)?.text.trim() ?? '';

      // Validation
      if (guestPerEntryText.isEmpty) {
        _showError(context, "Guest per entry is required");
        return;
      }
      if (guestSizeText.isEmpty) {
        _showError(context, "Guest count is required");
        return;
      }
      if (linkCountText.isEmpty) {
        _showError(context, "Link count is required");
        return;
      }

      final guestPerEntry = int.tryParse(guestPerEntryText);
      final guestSize = int.tryParse(guestSizeText);
      final linkCount = int.tryParse(linkCountText);

      if (guestPerEntry == null || guestPerEntry <= 0) {
        _showError(context, "Guest per entry must be a positive number");
        return;
      }
      if (guestSize == null || guestSize <= 0) {
        _showError(context, "Guest count must be a positive number");
        return;
      }
      if (linkCount == null || linkCount <= 0) {
        _showError(context, "Link count must be a positive number");
        return;
      }
      if (state.selectedLinkType == null) {
        _showError(context, "Please select a link type");
        return;
      }

      // Build request model only after successful validation
      final requestModel = CreateInvitationLinkRequestModel(
        guestPerEntry: guestPerEntry,
        guestSize: guestSize,
        linkCount: linkCount,
        linkType: state.selectedLinkType!,
      );

      final response = await _service.createInvitationLink(requestModel);

      if (response != null) {
        String message = response["message"] ?? "Link generated successfully";
        getInvitationLinks(showLoader: false);
        Navigator.pop(context);
        EventAlert.showSuccess(context, message: message);
      }
    } catch (e) {
      log(":::: There is an error during link generation :::: $e");
    } finally {
      state = state.copyWith(isGeneratingLink: false);
    }
  }

  deleteGuest(BuildContext context, {required GuestResponse guestInfo}) async {
    try {
      state = state.copyWith(isDeletingGuest: true);
      final response = await _service.deleteGuest(guestInfo.id!);

      if (response != null) {
        EventAlert.showSuccess(context, message: "Guest deleted successfully");
        getInvitationLinks(showLoader: false);
        _removeGuestFromList(guestInfo);
      }
    } catch (e) {
      log(":::: There is an error during guest deletion :::: $e");
    } finally {
      state = state.copyWith(isDeletingGuest: false);
    }
  }

  Future<void> attachGuest(BuildContext context) async {
    try {
      state = state.copyWith(isAddingGuest: true);

      String? title = state.selectedTitle?.label;
      String firstName = getTextController(
        TextControllerStrings.firstName,
      )!.text.trim();
      String lastName = getTextController(
        TextControllerStrings.lastName,
      )!.text.trim();
      String phone = getTextController(
        TextControllerStrings.phoneNumber,
      )!.text.trim();
      String email = getTextController(
        TextControllerStrings.email,
      )!.text.trim();

      // ✅ Run validation before proceeding
      final validationError = validateGuestInput(
        title: title,
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        email: email,
      );

      if (validationError != null) {
        EventAlert.showError(context, message: validationError);
        return;
      }

      // Build request if inputs are valid
      final request = AddGuestRequestModel(
        code: state.activeInviteLink!.id!,
        guest: GuestInput(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phone,
          title: title!,
        ),
      );

      final RsvpResponse? response = await _service.rsvp(request);

      if (response != null) {
        Navigator.pop(context);
        EventAlert.showSuccess(context, message: "Guest added successfully");
        if (response.rsvp?.isNotEmpty ?? false) {
          _attachGuestToList(response.rsvp!.first);
        }
        getInvitationLinks(showLoader: false);
      }
    } catch (e) {
      log(":::: There is an error during guest attach :::: $e");
      EventAlert.showError(
        context,
        message: "Something went wrong. Please try again.",
      );
    } finally {
      state = state.copyWith(isAddingGuest: false);
    }
  }

  // Validation logic extracted
  String? validateGuestInput({
    required String? title,
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
  }) {
    if (title == null || title.isEmpty) {
      return "Please select a title";
    }
    if (firstName.isEmpty) {
      return "First name is required";
    }
    if (lastName.isEmpty) {
      return "Last name is required";
    }
    if (phone.isEmpty) {
      return "Phone number is required";
    }
    if (!RegExp(r'^\+?[0-9]{7,15}$').hasMatch(phone)) {
      return "Enter a valid phone number";
    }
    if (email.isEmpty) {
      return "Email is required";
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      return "Enter a valid email address";
    }
    return null; // ✅ Valid
  }

  _removeGuestFromList(GuestResponse guestInfo) {
    final currentList = state.activeInviteLink;

    currentList?.guests?.remove(guestInfo);

    state = state.copyWith(activeInviteLink: currentList);
  }

  _attachGuestToList(GuestResponse response) {
    final currentLink = state.activeInviteLink;

    if (currentLink != null) {
      currentLink.guests?.add(response);
      state = state.copyWith(activeInviteLink: currentLink);
    }
  }

  initiateAddNewGuest() {
    genRef!.read(textControllersProvider.notifier).initializeTextController([
      TextControllerStrings.firstName,
      TextControllerStrings.lastName,
      TextControllerStrings.email,
      TextControllerStrings.phoneNumber,
    ]);

    getTextController(TextControllerStrings.firstName)!.clear();
    getTextController(TextControllerStrings.lastName)!.clear();
    getTextController(TextControllerStrings.email)!.clear();
    getTextController(TextControllerStrings.phoneNumber)!.clear();
    state = state.copyWith(clearAddGuest: "yes");
  }
}

void _showError(BuildContext context, String message) {
  EventAlert.showWarning(context, message: message);
}

final dashboardProvider = StateNotifierProvider(
  (_) => DashboardNotifier(DashboardService(getIt())),
);

class DashboardState {
  final String activeTab;
  final List<UploadImageModel>? images;
  final UploadImageModel? activeImage;
  final bool? loadingLinks;
  final bool? isGeneratingLink;
  final PaginatedInvitationLinkResponse? invitationLinks;
  final String? selectedLinkType;
  final InvitationLinkResponse? activeInviteLink;
  final List<InvitationLinkResponse>? selectedLinks;
  final bool? isDeletingGuest;
  final bool? isAddingGuest;
  final DropdownItem? selectedTitle;

  DashboardState({
    this.activeTab = "Links",
    this.images,
    this.activeImage,
    this.loadingLinks,
    this.invitationLinks,
    this.selectedLinkType,
    this.isGeneratingLink,
    this.activeInviteLink,
    this.selectedLinks,
    this.isDeletingGuest,
    this.selectedTitle,
    this.isAddingGuest,
  });

  DashboardState copyWith({
    String? activeTab,
    List<UploadImageModel>? images,
    UploadImageModel? activeImage,
    bool? loadingLinks,
    PaginatedInvitationLinkResponse? invitationLinks,
    String? selectedLinkType,
    String? clearLinkGen,
    bool? isGeneratingLink,
    InvitationLinkResponse? activeInviteLink,
    List<InvitationLinkResponse>? selectedLinks,
    bool? isDeletingGuest,
    DropdownItem? selectedTitle,
    String? clearAddGuest,
    bool? isAddingGuest,
  }) {
    return DashboardState(
      activeTab: activeTab ?? this.activeTab,
      images: images ?? this.images,
      activeImage: activeImage ?? this.activeImage,
      loadingLinks: loadingLinks ?? this.loadingLinks,
      invitationLinks: invitationLinks ?? this.invitationLinks,
      selectedLinkType: clearLinkGen == "yes"
          ? null
          : selectedLinkType ?? this.selectedLinkType,
      isGeneratingLink: isGeneratingLink ?? this.isGeneratingLink,
      activeInviteLink: activeInviteLink ?? this.activeInviteLink,
      selectedLinks: selectedLinks ?? this.selectedLinks,
      isDeletingGuest: isDeletingGuest ?? this.isDeletingGuest,
      selectedTitle: clearAddGuest == "yes"
          ? null
          : selectedTitle ?? this.selectedTitle,
      isAddingGuest: isAddingGuest ?? this.isAddingGuest,
    );
  }
}
