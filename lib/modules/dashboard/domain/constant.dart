import 'package:event_handler/cores/widgets/custom_dropdown.dart';
import 'package:event_handler/modules/dashboard/models/response/guest_response.dart';
import 'package:event_handler/modules/dashboard/models/response/invitation_link_response.dart';

final List<InvitationLinkResponse> dummyInvitationLinks = List.generate(
  10,
  (index) => InvitationLinkResponse.fromJson({
    "_id": "68b4e273a6bcd5eee41427ea",
    "code": "FDFC896A-0507-4750-8F55-600788D494E3",
    "guestSize": 1,
    "guestPerEntry": 1,
    "guestsRegistered": 1,
    "type": "PRIVATE",
    "status": "USED",
    "createdAt": "2025-09-04T00:01:55.602Z",
    "updatedAt": "2025-09-01T01:48:53.020Z",
    "__typename": "InvitationLinkResponse",
  }),
);

final List<GuestResponse> dummyGuestList = List.generate(
  10,
  (index) => GuestResponse.fromJson({
    "_id": "68bb8306955d671b2907c369",
    "invitationLinkId": "68b98a84b39df2d51a46da43",
    "phone": "+234-8079079600",
    "title": "Mr",
    "firstName": "Lavendercollective",
    "lastName": "Raj",
    "email": "lavendercollective@lavendercollective.com",
    "isOnBoarded": false,
    "isInEvent": false,
    "isGifted": false,
    "createdAt": "2025-09-06T00:40:38.584Z",
    "updatedAt": "2025-09-06T00:40:38.584Z",
    "link": {
      "_id": "68bb8306955d671b2907c36b",
      "guestId": "68bb8306955d671b2907c369",
      "code": "ZFK-FRU-W97",
      "invitationCardUrl":
          "https://s3.eu-west-1.amazonaws.com/media.mj25.rsvp/68bb8306955d671b2907c369.jpg",
      "type": "GUEST",
      "status": "USED",
      "createdAt": "2025-09-06T00:40:38.623Z",
      "updatedAt": "2025-09-06T00:40:39.415Z",
      "guestUrl": "https://mj25.rsvp?guest=ZFK-FRU-W97",
      "__typename": "GuestLinkResponse",
    },
    "__typename": "GuestResponse",
  }),
);

final inviteLinkList = ["PUBLIC", "PRIVATE", "GUEST", "PRINT"];
final titleList = ["Mr.", "Mrs.", "Miss", "Ms.", "Dr", "Enginer."];

List<DropdownItem> inviteLinkItems = List.generate(
  inviteLinkList.length,
  (index) => DropdownItem(label: inviteLinkList[index]),
).toList();

List<DropdownItem> titles = List.generate(
  titleList.length,
  (index) => DropdownItem(label: titleList[index]),
).toList();
