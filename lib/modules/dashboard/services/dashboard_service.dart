import 'dart:developer';

import 'package:event_handler/modules/dashboard/domain/dashboard_repository.dart';
import 'package:event_handler/modules/dashboard/models/request/add_guest_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/create_invitation_link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/request/link_request_model.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';

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

  Future<GuestResponse?> attachGuest(AddGuestRequestModel request) async {
    try {
      return await _repo.attachGuest(request);
    } catch (e) {
      log(":::: This is the error from attaching guest:::: $e");
      return null;
    }
  }
}
