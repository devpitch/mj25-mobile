import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_status_enum.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_type_enum.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/custom_dialog.dart';
import 'package:event_handler/cores/utils/helper_functions.dart';
import 'package:event_handler/cores/utils/image_service.dart';
import 'package:event_handler/cores/utils/rydmie_alerts.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/cores/widgets/app_bottom_sheet.dart';
import 'package:event_handler/injections/injector.dart';
import 'package:event_handler/main.dart';
import 'package:event_handler/modules/dashboard/models/dashboard_state_model.dart';
import 'package:event_handler/modules/dashboard/models/request/add_guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/create_invitation_link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/guests_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/update_guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/models/response/guests_management_response.dart';
import 'package:event_handler/modules/dashboard/models/response/rsvp_model.dart';
import 'package:event_handler/modules/dashboard/models/upload_image_model.dart';
import 'package:event_handler/modules/dashboard/services/dashboard_service.dart';
import 'package:event_handler/modules/dashboard/widgets/filter_list_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../cores/utils/constants.dart' show globalBuildContextProvider;
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
      selectedFilterType: data["selectedFilterType"],
      selectedFilterStatus: data["selectedFilterStatus"],
      activeGuest: data["activeGuest"],
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

  getInvitationLinks({
    bool showLoader = true,
    LinkRequestModel? queryRequest,
  }) async {
    try {
      if ((!showLoader && (state.invitationLinks?.items?.isEmpty ?? false)) ||
          showLoader) {
        state = state.copyWith(loadingLinks: true);
      }

      LinkRequestModel request =
          queryRequest ??
          LinkRequestModel(
            limit: 50,
            page: 1,
            search: "",
            input: InvitationFilterInput(),
          );

      final response = await _service.getInvitationLink(request);

      if (response != null) {
        final guestFilter = state.guestFilters ?? {};
        if (queryRequest != null) {
          guestFilter['applied'] = true;
        }

        state = state.copyWith(
          invitationLinks: response,
          guestFilters: guestFilter,
        );
      }
    } catch (e) {
      log("There is an error from get invitation flow::: e");
    } finally {
      state = state.copyWith(loadingLinks: false);
    }
  }

  getGuests({bool showLoader = true}) async {
    try {
      if ((!showLoader && (state.guestList?.guests?.items?.isEmpty ?? false)) ||
          showLoader) {
        state = state.copyWith(loadingGuests: true);
      }

      GuestsRequestModel request = GuestsRequestModel(
        limit: 50,
        page: 1,
        search: "",
      );

      final GuestsResponse? response = await _service.guests(request);

      if (response != null) {
        state = state.copyWith(guestList: response);
      }
    } catch (e) {
      log("There is an error from get guests flow::: e");
    } finally {
      state = state.copyWith(loadingGuests: false);
    }
  }

  getGuest({
    bool showLoader = true,
    required String guestCode,
    required String first3Letters,
  }) async {
    try {
      if (
      // (!showLoader && (state.invitationLinks?.items?.isEmpty ?? false)) ||
      showLoader) {
        state = state.copyWith(loadingGuest: true);
      }

      GuestRequestModel request = GuestRequestModel(
        code: guestCode,
        first3Letters: first3Letters,
      );

      final response = await _service.guestScan(request);
      //
      // if (response != null) {
      //   state = state.copyWith(activeGuest: response);
      // }
    } catch (e) {
      log("There is an error from get guest flow::: e");
    } finally {
      state = state.copyWith(loadingGuests: false);
    }
  }

  openSheet({
    required BuildContext context,
    required String type,
    dynamic value,
  }) async {
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
        case "qrCodeScan":
          {
            state = state.copyWith(
              guestActionType: "qrCodeScan",
              activeGuest: GuestResponse(id: value),
            );
            AppBottomSheet.show(
              context,
              title: "Guest Request",
              child: GuestAttachRequestSheet(),
            );
            break;
          }
        case "confirmDelete":
        case "deleteGuests":
          {
            showCustomDialog(
              context,
              child: ConfirmGuestDeleteBox(guestInfo: value as GuestResponse?),
              allowDismissal: false,
            );
            break;
          }
        case "filter":
          {
            await _initiateFilter();
            AppBottomSheet.show(
              context,
              title: "Filter",
              child: GuestFilterSheet(),
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

  deleteGuest(
    BuildContext context, {
    required GuestResponse guestInfo,
    bool fromList = false,
  }) async {
    try {
      if (!fromList) {
        state = state.copyWith(isDeletingGuest: true);
      }

      final response = await _service.deleteGuest(guestInfo.id!);

      if (response != null) {
        if (!fromList) {
          EventAlert.showSuccess(
            genRef!.read(globalBuildContextProvider) ?? context,
            message: "Guest deleted successfully",
          );
          getInvitationLinks(showLoader: false);
        }
        _removeGuestFromList(guestInfo);
      }
    } catch (e) {
      log(":::: There is an error during guest deletion :::: $e");
    } finally {
      if (!fromList) {
        state = state.copyWith(isDeletingGuest: false);
      }
    }
  }

  updateGuest(
    BuildContext context, {
    required String type,
    required bool value,
  }) async {
    try {
      UpdateGuestRequestModel requestModel = UpdateGuestRequestModel(
        isGifted: type == "Gift Collected" ? value : null,
        isInEvent: type == "Event Entrance" ? value : null,
        isOnBoarded: type == "Bus Onboarded" ? value : null,
        id: state.activeGuest!.id!,
      );

      final GuestResponse? response = await _service.updateGuest(requestModel);

      if (response != null) {
        EventAlert.showSuccess(
          genRef!.read(globalBuildContextProvider) ?? context,
          message: "Guest updated successfully",
        );
        getGuests(showLoader: false);
      }
    } catch (e) {
      log(":::: There is an error during guest deletion :::: $e");
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
        code: state.activeGuest!.id!,
        guest: GuestInput(
          firstName: firstName,
          lastName: lastName,
          email: email,
          phoneNumber: phone,
          title: title!,
        ),
      );

      final GuestResponse? response = await _service.attachGuest(request);

      if (response != null) {
        Navigator.pop(context);
        EventAlert.showSuccess(context, message: "Guest attached successfully");
        state = state.copyWith(activeGuest: response);
        Get.toNamed(AppRouter.guestDetailsView);
        getGuests(showLoader: false);
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

  Future<void> inviteGuest(BuildContext context) async {
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

  updateSelectedGuest(String guestId) {
    final currentList = state.selectedGuests ?? [];
    if (currentList.contains(guestId) ?? false) {
      currentList.remove(guestId);
    } else {
      currentList.add(guestId);
    }
    log(":::: currentList is ::: ::: $currentList");
    state = state.copyWith(selectedGuests: currentList);
  }

  deleteGuests(BuildContext context) async {
    try {
      state = state.copyWith(isDeletingGuest: true);
      List<String> guestIds = state.selectedGuests ?? [];

      for (String guestId in guestIds) {
        await deleteGuest(
          context,
          guestInfo: GuestResponse(id: guestId),
          fromList: guestIds.last != guestId,
        );
      }
      state = state.copyWith(selectedGuests: []);
    } catch (e) {
      log(":::: There is an error during guest deletion :::: $e");
    } finally {
      state = state.copyWith(isDeletingGuest: false);
    }
  }

  manageFilter(BuildContext context, {required String type}) async {
    final Map<String, dynamic> guestFilters = state.guestFilters ?? {};

    switch (type) {
      case "Code":
        {
          guestFilters[type] = state.filterCode!.text.trim() ?? "";
          break;
        }
      case "GuestPerEntry":
        {
          guestFilters[type] = state.filterGuestPerEntry!.text.trim() ?? "";
          break;
        }
      case "GuestSize":
        {
          guestFilters[type] = state.filterGuestsSize!.text.trim() ?? "";
          break;
        }
      case "GuestRegistered":
        {
          guestFilters[type] = state.filterGuestRegistered!.text.trim() ?? "";
          break;
        }
      case "Type":
        {
          guestFilters[type] = state.selectedFilterType;
          break;
        }
      case "Status":
        {
          guestFilters[type] = state.selectedFilterStatus;
          break;
        }
      case "createdSince":
        {
          final pickedDate = await HelperFunctions.pickDate(
            context,
            isBirthDate: false,
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            final formatedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            state.createdSinceCtrl!.text = formatedDate;
            state = state.copyWith(filterCreatedSince: pickedDate);
            guestFilters[type] = formatedDate;
          }
          break;
        }
      case "createdUtil":
        {
          final pickedDate = await HelperFunctions.pickDate(
            context,
            isBirthDate: false,
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            final formatedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            state.createdUtilCtrl!.text = formatedDate;
            state = state.copyWith(filterCreatedUntil: pickedDate);
            guestFilters[type] = formatedDate;
          }
          break;
        }
      case "updatedSince":
        {
          final pickedDate = await HelperFunctions.pickDate(
            context,
            isBirthDate: false,
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            final formatedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            state.updatedSinceCtrl!.text = formatedDate;
            state = state.copyWith(filterUpdatedSince: pickedDate);
            guestFilters[type] = formatedDate;
          }
          break;
        }
      case "updatedUtil":
        {
          final pickedDate = await HelperFunctions.pickDate(
            context,
            isBirthDate: false,
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            final formatedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            state.updatedUtilCtrl!.text = formatedDate;
            state = state.copyWith(filterUpdatedUntil: pickedDate);
            guestFilters[type] = formatedDate;
          }
          break;
        }
    }

    if (guestFilters["applied"] == null) {
      guestFilters['applied'] = false;
    }

    state = state.copyWith(guestFilters: guestFilters);

    log("::::The current filterInfo is :: $guestFilters");
  }

  Future _initiateFilter() async {
    state = state.copyWith(
      filterCode: TextEditingController(),
      filterGuestPerEntry: TextEditingController(),
      filterGuestsSize: TextEditingController(),
      filterGuestRegistered: TextEditingController(),
      createdUtilCtrl: TextEditingController(),
      createdSinceCtrl: TextEditingController(),
      updatedUtilCtrl: TextEditingController(),
      updatedSinceCtrl: TextEditingController(),
      clearFilter: "yes",
    );

    final currentData = state.guestFilters ?? {};
    if (currentData["applied"] == true) {
      currentData.forEach((key, value) {
        switch (key) {
          case "Code":
            {
              state.filterCode!.text = value ?? "";
              break;
            }
          case "GuestPerEntry":
            {
              state.filterGuestPerEntry!.text = value ?? "";
              break;
            }
          case "GuestSize":
            {
              state.filterGuestsSize!.text = value ?? "";
              break;
            }
          case "GuestRegistered":
            {
              state.filterGuestRegistered!.text = value ?? "";
              break;
            }
          case "Type":
            {
              state = state.copyWith(selectedFilterType: value);
              break;
            }
          case "Status":
            {
              state = state.copyWith(selectedFilterStatus: value);
              break;
            }
          case "createdSince":
            {
              state.createdSinceCtrl!.text = value ?? "";
              state = state.copyWith(
                filterCreatedSince: value != null
                    ? DateTime.tryParse(value)
                    : null,
              );
              break;
            }
          case "createdUtil":
            {
              state.createdUtilCtrl!.text = value ?? "";
              state = state.copyWith(
                filterCreatedUntil: value != null
                    ? DateTime.tryParse(value)
                    : null,
              );
              break;
            }
          case "updatedSince":
            {
              state.updatedSinceCtrl!.text = value ?? "";
              state = state.copyWith(
                filterUpdatedSince: value != null
                    ? DateTime.tryParse(value)
                    : null,
              );
              break;
            }
          case "updatedUtil":
            {
              state.updatedUtilCtrl!.text = value ?? "";
              state = state.copyWith(
                filterUpdatedUntil: value != null
                    ? DateTime.tryParse(value)
                    : null,
              );
              break;
            }
        }
      });
    }
  }

  applyFilter(BuildContext context) async {
    try {
      if (!validateAtLeastOneFilterSelected()) {
        EventAlert.showWarning(
          context,
          message: "Please select at least one filter.",
        );
        return;
      }

      LinkRequestModel request = LinkRequestModel(
        limit: 30,
        page: 1,
        search: "",
        input: InvitationFilterInput(
          code: state.filterCode?.text.trim(),
          createdSince: state.filterCreatedSince,
          createdUntil: state.filterCreatedUntil,
          guestPerEntry: int.tryParse(
            state.filterGuestPerEntry?.text.trim() ?? "",
          ),
          guestSize: int.tryParse(state.filterGuestsSize?.text.trim() ?? ""),
          guestsRegistered: int.tryParse(
            state.filterGuestRegistered?.text.trim() ?? "",
          ),
          status: state.selectedFilterStatus != null
              ? linkStatusEnumFromJson(
                  state.selectedFilterStatus?.toUpperCase().replaceAll(
                    " ",
                    "_",
                  ),
                )
              : null,
          type: state.selectedFilterType != null
              ? linkTypeEnumFromJson(
                  state.selectedFilterType?.toUpperCase().replaceAll(" ", "_"),
                )
              : null,
          updatedSince: state.filterUpdatedSince,
          updatedUntil: state.filterUpdatedUntil,
        ),
      );
      log("::::: Applying filter 10");
      log("::::The explore request info: ${jsonEncode(request.toJson())}");
      Navigator.pop(context);
      await getInvitationLinks(showLoader: true, queryRequest: request);
    } catch (e) {
      log("::::: There is an error in advance search $e");
    } finally {
      state = state.copyWith(applyingFilter: false);
    }
  }

  bool validateAtLeastOneFilterSelected() {
    return (state.filterCode?.text.trim().isNotEmpty ?? false) ||
        (state.filterCreatedSince != null) ||
        (state.filterCreatedUntil != null) ||
        (state.filterGuestPerEntry?.text.trim().isNotEmpty ?? false) ||
        (state.filterGuestsSize?.text.trim().isNotEmpty ?? false) ||
        (state.filterGuestRegistered?.text.trim().isNotEmpty ?? false) ||
        (state.selectedFilterStatus != null) ||
        (state.selectedFilterType != null) ||
        (state.filterUpdatedSince != null) ||
        (state.filterUpdatedUntil != null);
  }

  clearFilter() {
    state = state.copyWith(guestFilters: {});
    _initiateFilter();
    getInvitationLinks(showLoader: true);
  }

  scanQrCode(BuildContext context) async {
    try {
      final String? qrCode = await HelperFunctions.scanBarcode();
      if (qrCode != null) {
        String cardCode = qrCode.split("=").last;
        loadGuestLink(cardCode);
        log(":::: The code is ::: $qrCode");
      }
    } catch (e) {
      log(":::: There is an error during qr scan :::: $e");
    }
  }

  loadGuestLink(String code) async {
    try {
      state = state.copyWith(loadingGuest: true);
      log("::: The code is :::: $code");
      GuestRequestModel request = GuestRequestModel(code: code);

      final response = await _service.guestScan(request);

      if (response is GuestResponse) {
        state = state.copyWith(activeGuest: response);
        Get.toNamed(AppRouter.guestDetailsView);
      }
      if (response is Map && response["message"] != null) {
        if (response['code'] == "NEEDS_ATTACHMENT") {
          EventAlert.showWarning(
            genRef!.read(globalBuildContextProvider)!,
            message: response['message'],
          );

          openSheet(
            context: genRef!.read(globalBuildContextProvider)!,
            type: "qrCodeScan",
            value: code,
          );
        }
      }
    } catch (e) {
      log(":::: There is an error during guest deletion :::: $e");
    } finally {
      state = state.copyWith(loadingGuest: false);
    }
  }
}

void _showError(BuildContext context, String message) async {
  EventAlert.showWarning(context, message: message);
}

final dashboardProvider = StateNotifierProvider(
  (_) => DashboardNotifier(DashboardService(getIt())),
);
