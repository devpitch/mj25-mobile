import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';

class UpdateGuestRequestModel {
  final bool? isGifted;
  final bool? isInEvent;
  final bool? isOnBoarded;
  final String id;

  UpdateGuestRequestModel({
    this.isInEvent,
    this.isOnBoarded,
    this.isGifted,
    required this.id,
  });

  Map<String, dynamic> toJson() {
    return {
      'isOnBoarded': isOnBoarded,
      'isGifted': isGifted,
      'isInEvent': isInEvent,
      "_id": id,
    };
  }

  Variables$Mutation$updateGuest get toVariables {
    return Variables$Mutation$updateGuest.fromJson({"input": toJson()});
  }
}
