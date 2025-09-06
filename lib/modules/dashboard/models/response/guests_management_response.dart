import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';

class GuestsResponse {
  GuestsData? guests;

  GuestsResponse({this.guests});

  factory GuestsResponse.fromJson(Map<String, dynamic> json) {
    return GuestsResponse(
      guests: json['guests'] != null
          ? GuestsData.fromJson(json['guests'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'guests': guests?.toJson()};
  }
}

class GuestsData {
  List<GuestResponse>? items;

  GuestsData({this.items});

  factory GuestsData.fromJson(Map<String, dynamic> json) {
    return GuestsData(
      items: json['items'] != null
          ? List<GuestResponse>.from(
              json['items'].map((x) => GuestResponse.fromJson(x)),
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'items': items?.map((x) => x.toJson()).toList()};
  }
}
