import 'dart:convert';
import 'dart:developer';

import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/schema.graphql.dart';

class UploadRequestModel {
  final int count;
  final bool isGeneral;
  final List<String>? tags;

  UploadRequestModel({required this.count, required this.isGeneral, this.tags});

  Map<String, dynamic> toJson() {
    return {'count': count, 'isGeneral': isGeneral, 'tagIds': tags ?? []};
  }

  Variables$Mutation$UploadRequest get toVariables {
    log("::: The request is ::: ${jsonEncode(toJson())}");
    return Variables$Mutation$UploadRequest(
      input: Input$UploadRequestInput.fromJson(toJson()),
    );
  }
}
