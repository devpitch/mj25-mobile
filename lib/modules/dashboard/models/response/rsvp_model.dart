import 'guest_response.dart';

class RsvpResponse {
  final List<GuestResponse>? rsvp;
  final String? typename;

  RsvpResponse({this.rsvp, this.typename});

  factory RsvpResponse.fromJson(Map<String, dynamic> json) {
    return RsvpResponse(
      rsvp: (json['rsvp'] as List<dynamic>?)
          ?.map((e) => GuestResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      typename: json['__typename'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'rsvp': rsvp?.map((e) => e.toJson()).toList(),
      '__typename': typename,
    };
  }
}
