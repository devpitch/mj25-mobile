import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/schema.graphql.dart';

class CreateInvitationLinkRequestModel {
  final int guestPerEntry;
  final int guestSize;
  final int linkCount;
  final String linkType;

  CreateInvitationLinkRequestModel({
    required this.guestPerEntry,
    required this.guestSize,
    required this.linkCount,
    required this.linkType,
  });

  // factory CreateInvitationLinkRequestModel.fromJson(Map<String, dynamic> json) {
  //   return CreateInvitationLinkRequestModel(
  //     limit: json['limit'] as int,
  //     page: json['page'] as int,
  //     search: json['search'] as String,
  //     input: InvitationFilterInput.fromJson(json['input']),
  //   );
  // }

  Map<String, dynamic> toJson() {
    return {
      'guestPerEntry': guestPerEntry,
      'guestSize': guestSize,
      'linkCount': linkCount,
      'linkType': linkType,
    };
  }

  Variables$Mutation$generateInviteLink get toVariables {
    return Variables$Mutation$generateInviteLink(
      input: Input$CreateInvitationLinkInput.fromJson(toJson()),
    );
  }
}
