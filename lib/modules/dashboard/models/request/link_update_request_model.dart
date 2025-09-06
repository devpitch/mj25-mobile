import 'dart:developer';

import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/enums/link_status_enum.dart';

class LinkUpdateRequestModel {
  final String? id;
  final String? code;
  final LinkStatusEnum? status;

  LinkUpdateRequestModel({this.id, this.code, this.status});

  Map<String, dynamic> toJson() {
    return {'_id': id, 'code': code, 'status': linkStatusEnumToJson(status)};
  }

  Variables$Mutation$updateInvitationLink get toVariables {
    log("::::The request link update is ::: ${toJson()}");

    return Variables$Mutation$updateInvitationLink.fromJson({
      "input": toJson(),
    });
  }
}
