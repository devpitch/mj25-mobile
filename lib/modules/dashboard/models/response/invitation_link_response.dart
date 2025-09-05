import 'package:event_handler/cores/network/client/graphql/enums/link_status_enum.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_type_enum.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';

class PaginatedInvitationLinkResponse {
  final List<InvitationLinkResponse>? items;
  final int? limit;
  final int? page;

  PaginatedInvitationLinkResponse({this.items, this.limit, this.page});

  factory PaginatedInvitationLinkResponse.fromJson(Map<String, dynamic> json) {
    return PaginatedInvitationLinkResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((item) => InvitationLinkResponse.fromJson(item))
          .toList(),
      limit: json['limit'] as int?,
      page: json['page'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items?.map((e) => e.toJson()).toList(),
      'limit': limit,
      'page': page,
    };
  }
}

class InvitationLinkResponse {
  final String? id;
  final String? code;
  final int? guestSize;
  final int? guestPerEntry;
  final int? guestsRegistered;
  final LinkTypeEnum? type;
  final LinkStatusEnum? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? inviteUrl;
  final List<GuestResponse>? guests;

  InvitationLinkResponse({
    this.id,
    this.code,
    this.guestSize,
    this.guestPerEntry,
    this.guestsRegistered,
    this.type,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.inviteUrl,
    this.guests,
  });

  factory InvitationLinkResponse.fromJson(Map<String, dynamic> json) {
    return InvitationLinkResponse(
      id: json['_id'] as String?,
      code: json['code'] as String?,
      guestSize: json['guestSize'] as int?,
      guestPerEntry: json['guestPerEntry'] as int?,
      guestsRegistered: json['guestsRegistered'] as int?,
      type: json['type'] != null ? linkTypeEnumFromJson(json['type']) : null,
      status: json['status'] != null
          ? linkStatusEnumFromJson(json['status'])
          : null,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      inviteUrl: json['inviteUrl'] as String?,
      guests: (json['guests'] as List<dynamic>?)
          ?.map((g) => GuestResponse.fromJson(g))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'code': code,
      'guestSize': guestSize,
      'guestPerEntry': guestPerEntry,
      'guestsRegistered': guestsRegistered,
      'type': type,
      'status': status,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'inviteUrl': inviteUrl,
      'guests': guests?.map((g) => g.toJson()).toList(),
    };
  }
}

// class GuestResponse {
//   final String? id;
//   final String? invitationLinkId;
//   final String? phone;
//   final String? title;
//   final String? firstName;
//   final String? lastName;
//   final String? email;
//   final bool? isOnBoarded;
//   final bool? isInEvent;
//   final bool? isGifted;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final String? link;
//
//   GuestResponse({
//     this.id,
//     this.invitationLinkId,
//     this.phone,
//     this.title,
//     this.firstName,
//     this.lastName,
//     this.email,
//     this.isOnBoarded,
//     this.isInEvent,
//     this.isGifted,
//     this.createdAt,
//     this.updatedAt,
//     this.link,
//   });
//
//   factory GuestResponse.fromJson(Map<String, dynamic> json) {
//     return GuestResponse(
//       id: json['_id'] as String?,
//       invitationLinkId: json['invitationLinkId'] as String?,
//       phone: json['phone'] as String?,
//       title: json['title'] as String?,
//       firstName: json['firstName'] as String?,
//       lastName: json['lastName'] as String?,
//       email: json['email'] as String?,
//       isOnBoarded: json['isOnBoarded'] as bool?,
//       isInEvent: json['isInEvent'] as bool?,
//       isGifted: json['isGifted'] as bool?,
//       createdAt: json['createdAt'] != null
//           ? DateTime.parse(json['createdAt'])
//           : null,
//       updatedAt: json['updatedAt'] != null
//           ? DateTime.parse(json['updatedAt'])
//           : null,
//       link: json['link'] as String?,
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'invitationLinkId': invitationLinkId,
//       'phone': phone,
//       'title': title,
//       'firstName': firstName,
//       'lastName': lastName,
//       'email': email,
//       'isOnBoarded': isOnBoarded,
//       'isInEvent': isInEvent,
//       'isGifted': isGifted,
//       'createdAt': createdAt?.toIso8601String(),
//       'updatedAt': updatedAt?.toIso8601String(),
//       'link': link,
//     };
//   }
//
//   @override
//   bool operator ==(covariant GuestResponse other) => other.id == id;
//
//   @override
//   int get hashCode => id.hashCode;
// }
