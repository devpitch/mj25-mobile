import 'dart:developer';

import 'package:event_handler/modules/dashboard/domain/dashboard_repository.dart';
import 'package:event_handler/modules/dashboard/models/request/add_guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/create_invitation_link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/guests_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/link_update_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/update_guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/upload_request_model.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/models/response/guests_management_response.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';
import 'package:event_handler/modules/dashboard/models/response/rsvp_model.dart';
import 'package:event_handler/modules/dashboard/models/response/upload_request_response.dart';

class DashboardService {
  final DashboardRepository _repo;

  DashboardService(this._repo);

  Future<PaginatedInvitationLinkResponse?> getInvitationLink(
    LinkRequestModel request,
  ) async {
    try {
      return await _repo.getInvitationLinks(request: request);
    } catch (e) {
      log(":::: This is the error from invitation link $e");
      return null;
    }
  }

  Future createInvitationLink(
    CreateInvitationLinkRequestModel requestModel,
  ) async {
    try {
      return await _repo.createInvitationLink(requestModel);
    } catch (e) {
      log(":::: This is the error from create invitation link $e");
      return null;
    }
  }

  Future<GuestResponse?> deleteGuest(String guestId) async {
    try {
      return await _repo.deleteGuest(guestId);
    } catch (e) {
      log(":::: This is the error from deleting guest:::: $e");
      return null;
    }
  }

  Future<Object?> guestScan(GuestRequestModel request) async {
    try {
      return await _repo.guest(request);
    } catch (e) {
      log(":::: This is the error from guest scan $e");
      return e;
    }
  }

  Future<GuestResponse?> updateGuest(UpdateGuestRequestModel request) async {
    try {
      return await _repo.updateGuest(request);
    } catch (e) {
      log(":::: This is the error from updating guest:::: $e");
      return null;
    }
  }

  Future<GuestResponse?> attachGuest(AddGuestRequestModel request) async {
    try {
      return await _repo.attachGuest(request);
    } catch (e) {
      log(":::: This is the error from attaching guest:::: $e");
      return null;
    }
  }

  confirmUploads(List<String> ids) async {
    try {
      return await _repo.confirmUpload(ids);
    } catch (e) {
      log(":::: This is the error from confirming uploads:::: $e");
      return null;
    }
  }

  Future updateInvitationLink(LinkUpdateRequestModel request) async {
    try {
      return await _repo.updateInvitationLink(request);
    } catch (e) {
      log(":::: This is the error from updating invitation link:::: $e");
      return null;
    }
  }

  Future<RsvpResponse?> rsvp(AddGuestRequestModel request) async {
    try {
      return await _repo.rsvp(request);
    } catch (e) {
      log("::::   This is the error from rsvp:::: $e");
      return null;
    }
  }

  Future<GuestsResponse?> guests(GuestsRequestModel request) async {
    try {
      return await _repo.guests(request);
    } catch (e) {
      log("::::   This is the error from guests fetching:::: $e");
      return null;
    }
  }

  Future<UploadRequestResponse?> uploadImageRequest(
    UploadRequestModel request,
  ) async {
    try {
      return await _repo.uploadImageRequest(request);
    } catch (e) {
      log("::::   This is the error from image upload request:::: $e");
      return null;
    }
  }

  // Future<GuestResponse?> guest(GuestRequestModel request) async {
  //   try {
  //     return await _repo.guest(request);
  //   } catch (e) {
  //     log("::::   This is the error from guest fetching:::: $e");
  //     return null;
  //   }
  // }
}
