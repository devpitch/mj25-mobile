import 'package:event_handler/cores/network/client/graphql/__generated/query.graphql.dart';

class GuestRequestModel {
  final String? code;
  final String? first3Letters;

  GuestRequestModel({this.code, this.first3Letters});

  Map<String, dynamic> toJson() {
    return {'code': code, 'first3Letters': first3Letters};
  }

  Variables$Query$guest get toVariables {
    return Variables$Query$guest.fromJson({"input": toJson()});
  }
}
