import 'dart:developer';

import 'package:event_handler/cores/network/client/graphql/__generated/query.graphql.dart';

class GuestsRequestModel {
  final int limit;
  final int page;
  final String search;

  GuestsRequestModel({
    required this.limit,
    required this.page,
    required this.search,
  });

  Map<String, dynamic> toJson() {
    return {'limit': limit, 'page': page, 'search': search};
  }

  Variables$Query$guests get toVariables {
    log(":::: The toJson is :::: ${toJson()}");
    return Variables$Query$guests.fromJson(toJson());
  }
}
