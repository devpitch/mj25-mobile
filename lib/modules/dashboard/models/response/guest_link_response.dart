import 'package:event_handler/cores/network/client/graphql/enums/link_status_enum.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_type_enum.dart';

class GuestLinkResponse {
  final String? id;
  final String? guestId;
  final String? code;
  final String? invitationCardUrl;
  final LinkTypeEnum? type;
  final LinkStatusEnum? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? guestUrl;
  final String? typename;

  GuestLinkResponse({
    this.id,
    this.guestId,
    this.code,
    this.invitationCardUrl,
    this.type,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.guestUrl,
    this.typename,
  });

  factory GuestLinkResponse.fromJson(Map<String, dynamic> json) {
    return GuestLinkResponse(
      id: json['_id'],
      guestId: json['guestId'],
      code: json['code'],
      invitationCardUrl: json['invitationCardUrl'],
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
      guestUrl: json['guestUrl'],
      typename: json['__typename'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'guestId': guestId,
      'code': code,
      'invitationCardUrl': invitationCardUrl,
      'type': linkTypeEnumToJson(type),
      'status': linkStatusEnumToJson(status),
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'guestUrl': guestUrl,
      '__typename': typename,
    };
  }
}
