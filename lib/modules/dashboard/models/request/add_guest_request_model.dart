import 'dart:convert';
import 'dart:developer';

import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/schema.graphql.dart';

class AddGuestRequestModel {
  final String code;
  final GuestInput guest;

  AddGuestRequestModel({required this.code, required this.guest});

  Map<String, dynamic> toJson() {
    return {'code': code, 'guest': guest.toJson()};
  }

  Map<String, dynamic> toRscvJson() {
    return {
      'invitationLinkId': code,
      'guests': [guest.toJson()],
    };
  }

  Variables$Mutation$attachGuest get toVariables {
    log("::: The request is ::: ${jsonEncode(toJson())}");
    return Variables$Mutation$attachGuest(
      input: Input$AttachGuestInput.fromJson(toJson()),
    );
  }

  Variables$Mutation$rsvp get toRscvVariables {
    log("::: The request is ::: ${jsonEncode(toJson())}");
    return Variables$Mutation$rsvp(
      input: Input$CreateGuestInput.fromJson(toRscvJson()),
    );
  }
}

class GuestInput {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String title;

  GuestInput({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.title,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phoneNumber,
      'title': title,
    };
  }
}
