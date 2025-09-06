import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/models/response/guests_management_response.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:event_handler/modules/dashboard/models/upload_image_model.dart';
import 'package:flutter/material.dart';

class DashboardState {
  final String activeTab;
  final List<UploadImageModel>? images;
  final UploadImageModel? activeImage;
  final bool? loadingLinks;
  final bool? loadingGuests;
  final bool? loadingGuest;
  final bool? isGeneratingLink;
  final bool? applyingFilter;
  final PaginatedInvitationLinkResponse? invitationLinks;
  final String? selectedLinkType;
  final InvitationLinkResponse? activeInviteLink;
  final List<String>? selectedGuests;
  final bool? isDeletingGuest;
  final bool? loadingMoreGuests;
  final bool? isAddingGuest;
  // final DropdownItem? selectedTitle;
  final String? selectedFilterType;
  final String? selectedFilterStatus;
  TextEditingController? filterCode;
  TextEditingController? filterGuestPerEntry;
  TextEditingController? filterGuestsSize;
  TextEditingController? filterGuestsPerEntry;
  TextEditingController? filterGuestRegistered;
  TextEditingController? createdSinceCtrl;
  TextEditingController? updatedSinceCtrl;
  TextEditingController? updatedUtilCtrl;
  TextEditingController? createdUtilCtrl;
  final DateTime? filterCreatedSince;
  final DateTime? filterCreatedUntil;
  final DateTime? filterUpdatedSince;
  final DateTime? filterUpdatedUntil;
  final String? filterStatus;
  final String? filterType;
  final Map<String, dynamic>? guestFilters;
  final GuestsResponse? guestList;
  final GuestResponse? activeGuest;
  final String? guestActionType;
  final bool? loadingMoreLinks;

  DashboardState({
    this.activeTab = "Links",
    this.images,
    this.activeImage,
    this.loadingLinks,
    this.invitationLinks,
    this.selectedLinkType,
    this.isGeneratingLink,
    this.activeInviteLink,
    this.selectedGuests,
    this.isDeletingGuest,
    // this.selectedTitle,
    this.isAddingGuest,
    this.filterCode,
    this.filterGuestPerEntry,
    this.filterCreatedSince,
    this.filterCreatedUntil,
    this.filterUpdatedSince,
    this.filterUpdatedUntil,
    this.filterGuestsSize,
    this.filterGuestsPerEntry,
    this.filterGuestRegistered,
    this.filterStatus,
    this.filterType,
    this.guestFilters,
    this.createdSinceCtrl,
    this.createdUtilCtrl,
    this.updatedSinceCtrl,
    this.updatedUtilCtrl,
    this.selectedFilterStatus,
    this.selectedFilterType,
    this.applyingFilter,
    this.loadingGuests,
    this.loadingGuest,
    this.guestList,
    this.activeGuest,
    this.guestActionType,
    this.loadingMoreLinks,
    this.loadingMoreGuests,
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
    List<String>? selectedGuests,
    bool? isDeletingGuest,
    // DropdownItem? selectedTitle,
    String? clearAddGuest,
    bool? isAddingGuest,
    TextEditingController? filterCode,
    TextEditingController? filterGuestPerEntry,
    TextEditingController? filterGuestsSize,
    TextEditingController? filterGuestsPerEntry,
    TextEditingController? filterGuestRegistered,
    DateTime? filterCreatedSince,
    DateTime? filterCreatedUntil,
    DateTime? filterUpdatedSince,
    DateTime? filterUpdatedUntil,
    String? filterStatus,
    String? filterType,
    Map<String, dynamic>? guestFilters,
    String? clearFilter,
    TextEditingController? createdSinceCtrl,
    TextEditingController? updatedSinceCtrl,
    TextEditingController? updatedUtilCtrl,
    TextEditingController? createdUtilCtrl,
    String? selectedFilterStatus,
    String? selectedFilterType,
    bool? applyingFilter,
    bool? loadingGuests,
    bool? loadingGuest,
    GuestsResponse? guestList,
    GuestResponse? activeGuest,
    String? guestActionType,
    bool? loadingMoreLinks,
    bool? loadingMoreGuests,
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
      selectedGuests: selectedGuests ?? this.selectedGuests,
      isDeletingGuest: isDeletingGuest ?? this.isDeletingGuest,
      // selectedTitle: clearAddGuest == "yes"
      //     ? null
      //     : selectedTitle ?? this.selectedTitle,
      isAddingGuest: isAddingGuest ?? this.isAddingGuest,
      filterCode: filterCode ?? this.filterCode,
      filterGuestPerEntry: clearFilter == "yes"
          ? null
          : filterGuestPerEntry ?? this.filterGuestPerEntry,
      filterCreatedSince: clearFilter == "yes"
          ? null
          : filterCreatedSince ?? this.filterCreatedSince,
      filterCreatedUntil: clearFilter == "yes"
          ? null
          : filterCreatedUntil ?? this.filterCreatedUntil,
      filterUpdatedSince: clearFilter == "yes"
          ? null
          : filterUpdatedSince ?? this.filterUpdatedSince,
      filterUpdatedUntil: clearFilter == "yes"
          ? null
          : filterUpdatedUntil ?? this.filterUpdatedUntil,
      filterGuestsSize: filterGuestsSize ?? this.filterGuestsSize,
      filterGuestsPerEntry: filterGuestsPerEntry ?? this.filterGuestsPerEntry,
      filterGuestRegistered:
          filterGuestRegistered ?? this.filterGuestRegistered,
      filterStatus: clearFilter == "yes"
          ? null
          : filterStatus ?? this.filterStatus,
      filterType: clearFilter == "yes" ? null : filterType ?? this.filterType,
      guestFilters: guestFilters ?? this.guestFilters,
      createdSinceCtrl: createdSinceCtrl ?? this.createdSinceCtrl,
      updatedSinceCtrl: updatedSinceCtrl ?? this.updatedSinceCtrl,
      updatedUtilCtrl: updatedUtilCtrl ?? this.updatedUtilCtrl,
      createdUtilCtrl: createdUtilCtrl ?? this.createdUtilCtrl,
      selectedFilterStatus: clearFilter == "yes"
          ? null
          : selectedFilterStatus ?? this.selectedFilterStatus,
      selectedFilterType: clearFilter == "yes"
          ? null
          : selectedFilterType ?? this.selectedFilterType,
      applyingFilter: applyingFilter ?? this.applyingFilter,
      loadingGuests: loadingGuests ?? this.loadingGuests,
      loadingGuest: loadingGuest ?? this.loadingGuest,
      guestList: guestList ?? this.guestList,
      activeGuest: activeGuest ?? this.activeGuest,
      guestActionType: guestActionType ?? this.guestActionType,
      loadingMoreLinks: loadingMoreLinks ?? this.loadingMoreLinks,
      loadingMoreGuests: loadingMoreGuests ?? this.loadingMoreGuests,
    );
  }
}
