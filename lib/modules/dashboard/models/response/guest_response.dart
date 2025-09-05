import 'package:event_handler/modules/dashboard/models/response/guest_link_response.dart';

class GuestResponse {
  final String? id;
  final String? invitationLinkId;
  final String? phone;
  final String? title;
  final String? firstName;
  final String? lastName;
  final String? email;
  final bool? isOnBoarded;
  final bool? isInEvent;
  final bool? isGifted;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final GuestLinkResponse? link;
  final String? typename;

  GuestResponse({
    this.id,
    this.invitationLinkId,
    this.phone,
    this.title,
    this.firstName,
    this.lastName,
    this.email,
    this.isOnBoarded,
    this.isInEvent,
    this.isGifted,
    this.createdAt,
    this.updatedAt,
    this.link,
    this.typename,
  });

  factory GuestResponse.fromJson(Map<String, dynamic> json) {
    return GuestResponse(
      id: json['_id'],
      invitationLinkId: json['invitationLinkId'],
      phone: json['phone'],
      title: json['title'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      isOnBoarded: json['isOnBoarded'] as bool?,
      isInEvent: json['isInEvent'] as bool?,
      isGifted: json['isGifted'] as bool?,
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
      link: json['link'] != null
          ? GuestLinkResponse.fromJson(json['link'])
          : null,
      typename: json['__typename'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'invitationLinkId': invitationLinkId,
      'phone': phone,
      'title': title,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'isOnBoarded': isOnBoarded,
      'isInEvent': isInEvent,
      'isGifted': isGifted,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'link': link?.toJson(),
      '__typename': typename,
    };
  }

  @override
  bool operator ==(covariant GuestResponse other) => other.id == id;

  @override
  int get hashCode => id.hashCode;
}
