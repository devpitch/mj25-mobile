import 'package:event_handler/cores/widgets/custom_dropdown.dart';
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
