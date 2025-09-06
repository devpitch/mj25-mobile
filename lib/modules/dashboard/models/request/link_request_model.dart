import 'package:event_handler/cores/network/client/graphql/__generated/query.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_status_enum.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_type_enum.dart';

class LinkRequestModel {
  final int limit;
  final int page;
  final String search;
  final InvitationFilterInput? input;

  LinkRequestModel({
    required this.limit,
    required this.page,
    required this.search,
    this.input,
  });

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'page': page,
      'search': search,
      'input': input?.toJson(),
    };
  }

  Variables$Query$invitationLinks get toVariables {
    return Variables$Query$invitationLinks.fromJson(toJson());
  }
}

class InvitationFilterInput {
  final String? code;
  final DateTime? createdSince;
  final DateTime? createdUntil;
  final int? guestPerEntry;
  final int? guestSize;
  final int? guestsRegistered;
  final LinkStatusEnum? status;
  final LinkTypeEnum? type;
  final DateTime? updatedSince;
  final DateTime? updatedUntil;

  InvitationFilterInput({
    this.code,
    this.createdSince,
    this.createdUntil,
    this.guestPerEntry,
    this.guestSize,
    this.guestsRegistered,
    this.status,
    this.type,
    this.updatedSince,
    this.updatedUntil,
  });

  factory InvitationFilterInput.fromJson(Map<String, dynamic> json) {
    return InvitationFilterInput(
      code: json['code'] as String?,
      createdSince: json['createdSince'] != null
          ? DateTime.parse(json['createdSince'])
          : null,
      createdUntil: json['createdUntil'] != null
          ? DateTime.parse(json['createdUntil'])
          : null,
      guestPerEntry: json['guestPerEntry'],
      guestSize: json['guestSize'],
      guestsRegistered: json['guestsRegistered'],
      status: json['status'] != null
          ? linkStatusEnumFromJson(json['status'])
          : null,
      type: json["type"] != null ? linkTypeEnumFromJson(json["type"]) : null,
      updatedSince: json['updatedSince'] != null
          ? DateTime.parse(json['updatedSince'])
          : null,
      updatedUntil: json['updatedUntil'] != null
          ? DateTime.parse(json['updatedUntil'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'createdSince': createdSince?.toIso8601String(),
      'createdUntil': createdUntil?.toIso8601String(),
      'guestPerEntry': guestPerEntry,
      'guestSize': guestSize,
      'guestsRegistered': guestsRegistered,
      'status': linkStatusEnumToJson(status),
      'type': linkTypeEnumToJson(type),
      'updatedSince': updatedSince?.toIso8601String(),
      'updatedUntil': updatedUntil?.toIso8601String(),
    };
  }
}
