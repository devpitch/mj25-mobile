// ignore_for_file: type=lint
import 'package:event_handler/cores/network/client/graphql/scalar.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$TokenResponse {
  Fragment$TokenResponse({
    required this.token,
    required this.expiresAt,
    this.$__typename = 'TokenResponse',
  });

  factory Fragment$TokenResponse.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$expiresAt = json['expiresAt'];
    final l$$__typename = json['__typename'];
    return Fragment$TokenResponse(
      token: (l$token as String),
      expiresAt: dateTimeFromJson(l$expiresAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final DateTime expiresAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$expiresAt = expiresAt;
    _resultData['expiresAt'] = dateTimeToJson(l$expiresAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$expiresAt = expiresAt;
    final l$$__typename = $__typename;
    return Object.hashAll([l$token, l$expiresAt, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TokenResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$expiresAt = expiresAt;
    final lOther$expiresAt = other.expiresAt;
    if (l$expiresAt != lOther$expiresAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TokenResponse on Fragment$TokenResponse {
  CopyWith$Fragment$TokenResponse<Fragment$TokenResponse> get copyWith =>
      CopyWith$Fragment$TokenResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$TokenResponse<TRes> {
  factory CopyWith$Fragment$TokenResponse(
    Fragment$TokenResponse instance,
    TRes Function(Fragment$TokenResponse) then,
  ) = _CopyWithImpl$Fragment$TokenResponse;

  factory CopyWith$Fragment$TokenResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TokenResponse;

  TRes call({String? token, DateTime? expiresAt, String? $__typename});
}

class _CopyWithImpl$Fragment$TokenResponse<TRes>
    implements CopyWith$Fragment$TokenResponse<TRes> {
  _CopyWithImpl$Fragment$TokenResponse(this._instance, this._then);

  final Fragment$TokenResponse _instance;

  final TRes Function(Fragment$TokenResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? expiresAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TokenResponse(
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
      expiresAt: expiresAt == _undefined || expiresAt == null
          ? _instance.expiresAt
          : (expiresAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TokenResponse<TRes>
    implements CopyWith$Fragment$TokenResponse<TRes> {
  _CopyWithStubImpl$Fragment$TokenResponse(this._res);

  TRes _res;

  call({String? token, DateTime? expiresAt, String? $__typename}) => _res;
}

const fragmentDefinitionTokenResponse = FragmentDefinitionNode(
  name: NameNode(value: 'TokenResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'TokenResponse'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'token'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'expiresAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentTokenResponse = DocumentNode(
  definitions: [fragmentDefinitionTokenResponse],
);

extension ClientExtension$Fragment$TokenResponse on graphql.GraphQLClient {
  void writeFragment$TokenResponse({
    required Fragment$TokenResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'TokenResponse',
        document: documentNodeFragmentTokenResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$TokenResponse? readFragment$TokenResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TokenResponse',
          document: documentNodeFragmentTokenResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TokenResponse.fromJson(result);
  }
}

class Fragment$GuestResponse {
  Fragment$GuestResponse({
    required this.$_id,
    this.invitationLinkId,
    required this.phone,
    required this.title,
    required this.firstName,
    required this.lastName,
    this.email,
    required this.isOnBoarded,
    required this.isInEvent,
    required this.isGifted,
    required this.createdAt,
    required this.updatedAt,
    this.link,
    this.$__typename = 'GuestResponse',
  });

  factory Fragment$GuestResponse.fromJson(Map<String, dynamic> json) {
    final l$$_id = json['_id'];
    final l$invitationLinkId = json['invitationLinkId'];
    final l$phone = json['phone'];
    final l$title = json['title'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$isOnBoarded = json['isOnBoarded'];
    final l$isInEvent = json['isInEvent'];
    final l$isGifted = json['isGifted'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$link = json['link'];
    final l$$__typename = json['__typename'];
    return Fragment$GuestResponse(
      $_id: (l$$_id as String),
      invitationLinkId: (l$invitationLinkId as String?),
      phone: (l$phone as String),
      title: (l$title as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      email: (l$email as String?),
      isOnBoarded: (l$isOnBoarded as bool),
      isInEvent: (l$isInEvent as bool),
      isGifted: (l$isGifted as bool),
      createdAt: dateTimeFromJson(l$createdAt),
      updatedAt: dateTimeFromJson(l$updatedAt),
      link: l$link == null
          ? null
          : Fragment$GuestLinkResponse.fromJson(
              (l$link as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String $_id;

  final String? invitationLinkId;

  final String phone;

  final String title;

  final String firstName;

  final String lastName;

  final String? email;

  final bool isOnBoarded;

  final bool isInEvent;

  final bool isGifted;

  final DateTime createdAt;

  final DateTime updatedAt;

  final Fragment$GuestLinkResponse? link;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_id = $_id;
    _resultData['_id'] = l$$_id;
    final l$invitationLinkId = invitationLinkId;
    _resultData['invitationLinkId'] = l$invitationLinkId;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$isOnBoarded = isOnBoarded;
    _resultData['isOnBoarded'] = l$isOnBoarded;
    final l$isInEvent = isInEvent;
    _resultData['isInEvent'] = l$isInEvent;
    final l$isGifted = isGifted;
    _resultData['isGifted'] = l$isGifted;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = dateTimeToJson(l$createdAt);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = dateTimeToJson(l$updatedAt);
    final l$link = link;
    _resultData['link'] = l$link?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$invitationLinkId = invitationLinkId;
    final l$phone = phone;
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$isOnBoarded = isOnBoarded;
    final l$isInEvent = isInEvent;
    final l$isGifted = isGifted;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$link = link;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_id,
      l$invitationLinkId,
      l$phone,
      l$title,
      l$firstName,
      l$lastName,
      l$email,
      l$isOnBoarded,
      l$isInEvent,
      l$isGifted,
      l$createdAt,
      l$updatedAt,
      l$link,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$GuestResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$invitationLinkId = invitationLinkId;
    final lOther$invitationLinkId = other.invitationLinkId;
    if (l$invitationLinkId != lOther$invitationLinkId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$isOnBoarded = isOnBoarded;
    final lOther$isOnBoarded = other.isOnBoarded;
    if (l$isOnBoarded != lOther$isOnBoarded) {
      return false;
    }
    final l$isInEvent = isInEvent;
    final lOther$isInEvent = other.isInEvent;
    if (l$isInEvent != lOther$isInEvent) {
      return false;
    }
    final l$isGifted = isGifted;
    final lOther$isGifted = other.isGifted;
    if (l$isGifted != lOther$isGifted) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$link = link;
    final lOther$link = other.link;
    if (l$link != lOther$link) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$GuestResponse on Fragment$GuestResponse {
  CopyWith$Fragment$GuestResponse<Fragment$GuestResponse> get copyWith =>
      CopyWith$Fragment$GuestResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$GuestResponse<TRes> {
  factory CopyWith$Fragment$GuestResponse(
    Fragment$GuestResponse instance,
    TRes Function(Fragment$GuestResponse) then,
  ) = _CopyWithImpl$Fragment$GuestResponse;

  factory CopyWith$Fragment$GuestResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GuestResponse;

  TRes call({
    String? $_id,
    String? invitationLinkId,
    String? phone,
    String? title,
    String? firstName,
    String? lastName,
    String? email,
    bool? isOnBoarded,
    bool? isInEvent,
    bool? isGifted,
    DateTime? createdAt,
    DateTime? updatedAt,
    Fragment$GuestLinkResponse? link,
    String? $__typename,
  });
  CopyWith$Fragment$GuestLinkResponse<TRes> get link;
}

class _CopyWithImpl$Fragment$GuestResponse<TRes>
    implements CopyWith$Fragment$GuestResponse<TRes> {
  _CopyWithImpl$Fragment$GuestResponse(this._instance, this._then);

  final Fragment$GuestResponse _instance;

  final TRes Function(Fragment$GuestResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? invitationLinkId = _undefined,
    Object? phone = _undefined,
    Object? title = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? isOnBoarded = _undefined,
    Object? isInEvent = _undefined,
    Object? isGifted = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? link = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$GuestResponse(
      $_id: $_id == _undefined || $_id == null
          ? _instance.$_id
          : ($_id as String),
      invitationLinkId: invitationLinkId == _undefined
          ? _instance.invitationLinkId
          : (invitationLinkId as String?),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      email: email == _undefined ? _instance.email : (email as String?),
      isOnBoarded: isOnBoarded == _undefined || isOnBoarded == null
          ? _instance.isOnBoarded
          : (isOnBoarded as bool),
      isInEvent: isInEvent == _undefined || isInEvent == null
          ? _instance.isInEvent
          : (isInEvent as bool),
      isGifted: isGifted == _undefined || isGifted == null
          ? _instance.isGifted
          : (isGifted as bool),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      link: link == _undefined
          ? _instance.link
          : (link as Fragment$GuestLinkResponse?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$GuestLinkResponse<TRes> get link {
    final local$link = _instance.link;
    return local$link == null
        ? CopyWith$Fragment$GuestLinkResponse.stub(_then(_instance))
        : CopyWith$Fragment$GuestLinkResponse(local$link, (e) => call(link: e));
  }
}

class _CopyWithStubImpl$Fragment$GuestResponse<TRes>
    implements CopyWith$Fragment$GuestResponse<TRes> {
  _CopyWithStubImpl$Fragment$GuestResponse(this._res);

  TRes _res;

  call({
    String? $_id,
    String? invitationLinkId,
    String? phone,
    String? title,
    String? firstName,
    String? lastName,
    String? email,
    bool? isOnBoarded,
    bool? isInEvent,
    bool? isGifted,
    DateTime? createdAt,
    DateTime? updatedAt,
    Fragment$GuestLinkResponse? link,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$GuestLinkResponse<TRes> get link =>
      CopyWith$Fragment$GuestLinkResponse.stub(_res);
}

const fragmentDefinitionGuestResponse = FragmentDefinitionNode(
  name: NameNode(value: 'GuestResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'GuestResponse'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: '_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'invitationLinkId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'firstName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'lastName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'email'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isOnBoarded'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isInEvent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isGifted'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'link'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'GuestLinkResponse'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentGuestResponse = DocumentNode(
  definitions: [
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);

extension ClientExtension$Fragment$GuestResponse on graphql.GraphQLClient {
  void writeFragment$GuestResponse({
    required Fragment$GuestResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'GuestResponse',
        document: documentNodeFragmentGuestResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$GuestResponse? readFragment$GuestResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'GuestResponse',
          document: documentNodeFragmentGuestResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$GuestResponse.fromJson(result);
  }
}

class Fragment$GuestLinkResponse {
  Fragment$GuestLinkResponse({
    required this.$_id,
    this.guestId,
    required this.code,
    this.invitationCardUrl,
    required this.type,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.guestUrl,
    this.$__typename = 'GuestLinkResponse',
  });

  factory Fragment$GuestLinkResponse.fromJson(Map<String, dynamic> json) {
    final l$$_id = json['_id'];
    final l$guestId = json['guestId'];
    final l$code = json['code'];
    final l$invitationCardUrl = json['invitationCardUrl'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$guestUrl = json['guestUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$GuestLinkResponse(
      $_id: (l$$_id as String),
      guestId: (l$guestId as String?),
      code: (l$code as String),
      invitationCardUrl: (l$invitationCardUrl as String?),
      type: fromJson$Enum$LinkTypeEnum((l$type as String)),
      status: fromJson$Enum$LinkStatusEnum((l$status as String)),
      createdAt: dateTimeFromJson(l$createdAt),
      updatedAt: dateTimeFromJson(l$updatedAt),
      guestUrl: (l$guestUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String $_id;

  final String? guestId;

  final String code;

  final String? invitationCardUrl;

  final Enum$LinkTypeEnum type;

  final Enum$LinkStatusEnum status;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String guestUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_id = $_id;
    _resultData['_id'] = l$$_id;
    final l$guestId = guestId;
    _resultData['guestId'] = l$guestId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$invitationCardUrl = invitationCardUrl;
    _resultData['invitationCardUrl'] = l$invitationCardUrl;
    final l$type = type;
    _resultData['type'] = toJson$Enum$LinkTypeEnum(l$type);
    final l$status = status;
    _resultData['status'] = toJson$Enum$LinkStatusEnum(l$status);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = dateTimeToJson(l$createdAt);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = dateTimeToJson(l$updatedAt);
    final l$guestUrl = guestUrl;
    _resultData['guestUrl'] = l$guestUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$guestId = guestId;
    final l$code = code;
    final l$invitationCardUrl = invitationCardUrl;
    final l$type = type;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$guestUrl = guestUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_id,
      l$guestId,
      l$code,
      l$invitationCardUrl,
      l$type,
      l$status,
      l$createdAt,
      l$updatedAt,
      l$guestUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$GuestLinkResponse ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$guestId = guestId;
    final lOther$guestId = other.guestId;
    if (l$guestId != lOther$guestId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$invitationCardUrl = invitationCardUrl;
    final lOther$invitationCardUrl = other.invitationCardUrl;
    if (l$invitationCardUrl != lOther$invitationCardUrl) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$guestUrl = guestUrl;
    final lOther$guestUrl = other.guestUrl;
    if (l$guestUrl != lOther$guestUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$GuestLinkResponse
    on Fragment$GuestLinkResponse {
  CopyWith$Fragment$GuestLinkResponse<Fragment$GuestLinkResponse>
  get copyWith => CopyWith$Fragment$GuestLinkResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$GuestLinkResponse<TRes> {
  factory CopyWith$Fragment$GuestLinkResponse(
    Fragment$GuestLinkResponse instance,
    TRes Function(Fragment$GuestLinkResponse) then,
  ) = _CopyWithImpl$Fragment$GuestLinkResponse;

  factory CopyWith$Fragment$GuestLinkResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$GuestLinkResponse;

  TRes call({
    String? $_id,
    String? guestId,
    String? code,
    String? invitationCardUrl,
    Enum$LinkTypeEnum? type,
    Enum$LinkStatusEnum? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? guestUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$GuestLinkResponse<TRes>
    implements CopyWith$Fragment$GuestLinkResponse<TRes> {
  _CopyWithImpl$Fragment$GuestLinkResponse(this._instance, this._then);

  final Fragment$GuestLinkResponse _instance;

  final TRes Function(Fragment$GuestLinkResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? guestId = _undefined,
    Object? code = _undefined,
    Object? invitationCardUrl = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? guestUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$GuestLinkResponse(
      $_id: $_id == _undefined || $_id == null
          ? _instance.$_id
          : ($_id as String),
      guestId: guestId == _undefined ? _instance.guestId : (guestId as String?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      invitationCardUrl: invitationCardUrl == _undefined
          ? _instance.invitationCardUrl
          : (invitationCardUrl as String?),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$LinkTypeEnum),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$LinkStatusEnum),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      guestUrl: guestUrl == _undefined || guestUrl == null
          ? _instance.guestUrl
          : (guestUrl as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$GuestLinkResponse<TRes>
    implements CopyWith$Fragment$GuestLinkResponse<TRes> {
  _CopyWithStubImpl$Fragment$GuestLinkResponse(this._res);

  TRes _res;

  call({
    String? $_id,
    String? guestId,
    String? code,
    String? invitationCardUrl,
    Enum$LinkTypeEnum? type,
    Enum$LinkStatusEnum? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? guestUrl,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionGuestLinkResponse = FragmentDefinitionNode(
  name: NameNode(value: 'GuestLinkResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'GuestLinkResponse'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: '_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'guestId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'invitationCardUrl'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'guestUrl'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentGuestLinkResponse = DocumentNode(
  definitions: [fragmentDefinitionGuestLinkResponse],
);

extension ClientExtension$Fragment$GuestLinkResponse on graphql.GraphQLClient {
  void writeFragment$GuestLinkResponse({
    required Fragment$GuestLinkResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'GuestLinkResponse',
        document: documentNodeFragmentGuestLinkResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$GuestLinkResponse? readFragment$GuestLinkResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'GuestLinkResponse',
          document: documentNodeFragmentGuestLinkResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$GuestLinkResponse.fromJson(result);
  }
}

class Fragment$InvitationLinkResponse {
  Fragment$InvitationLinkResponse({
    required this.$_id,
    required this.code,
    required this.guestSize,
    required this.guestPerEntry,
    required this.guestsRegistered,
    required this.type,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.inviteUrl,
    required this.guests,
    this.$__typename = 'InvitationLinkResponse',
  });

  factory Fragment$InvitationLinkResponse.fromJson(Map<String, dynamic> json) {
    final l$$_id = json['_id'];
    final l$code = json['code'];
    final l$guestSize = json['guestSize'];
    final l$guestPerEntry = json['guestPerEntry'];
    final l$guestsRegistered = json['guestsRegistered'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$inviteUrl = json['inviteUrl'];
    final l$guests = json['guests'];
    final l$$__typename = json['__typename'];
    return Fragment$InvitationLinkResponse(
      $_id: (l$$_id as String),
      code: (l$code as String),
      guestSize: (l$guestSize as int),
      guestPerEntry: (l$guestPerEntry as int),
      guestsRegistered: (l$guestsRegistered as int),
      type: fromJson$Enum$LinkTypeEnum((l$type as String)),
      status: fromJson$Enum$LinkStatusEnum((l$status as String)),
      createdAt: dateTimeFromJson(l$createdAt),
      updatedAt: dateTimeFromJson(l$updatedAt),
      inviteUrl: (l$inviteUrl as String),
      guests: (l$guests as List<dynamic>)
          .map(
            (e) => Fragment$GuestResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String $_id;

  final String code;

  final int guestSize;

  final int guestPerEntry;

  final int guestsRegistered;

  final Enum$LinkTypeEnum type;

  final Enum$LinkStatusEnum status;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String inviteUrl;

  final List<Fragment$GuestResponse> guests;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_id = $_id;
    _resultData['_id'] = l$$_id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$guestSize = guestSize;
    _resultData['guestSize'] = l$guestSize;
    final l$guestPerEntry = guestPerEntry;
    _resultData['guestPerEntry'] = l$guestPerEntry;
    final l$guestsRegistered = guestsRegistered;
    _resultData['guestsRegistered'] = l$guestsRegistered;
    final l$type = type;
    _resultData['type'] = toJson$Enum$LinkTypeEnum(l$type);
    final l$status = status;
    _resultData['status'] = toJson$Enum$LinkStatusEnum(l$status);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = dateTimeToJson(l$createdAt);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = dateTimeToJson(l$updatedAt);
    final l$inviteUrl = inviteUrl;
    _resultData['inviteUrl'] = l$inviteUrl;
    final l$guests = guests;
    _resultData['guests'] = l$guests.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$code = code;
    final l$guestSize = guestSize;
    final l$guestPerEntry = guestPerEntry;
    final l$guestsRegistered = guestsRegistered;
    final l$type = type;
    final l$status = status;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$inviteUrl = inviteUrl;
    final l$guests = guests;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_id,
      l$code,
      l$guestSize,
      l$guestPerEntry,
      l$guestsRegistered,
      l$type,
      l$status,
      l$createdAt,
      l$updatedAt,
      l$inviteUrl,
      Object.hashAll(l$guests.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$InvitationLinkResponse ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$guestSize = guestSize;
    final lOther$guestSize = other.guestSize;
    if (l$guestSize != lOther$guestSize) {
      return false;
    }
    final l$guestPerEntry = guestPerEntry;
    final lOther$guestPerEntry = other.guestPerEntry;
    if (l$guestPerEntry != lOther$guestPerEntry) {
      return false;
    }
    final l$guestsRegistered = guestsRegistered;
    final lOther$guestsRegistered = other.guestsRegistered;
    if (l$guestsRegistered != lOther$guestsRegistered) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$inviteUrl = inviteUrl;
    final lOther$inviteUrl = other.inviteUrl;
    if (l$inviteUrl != lOther$inviteUrl) {
      return false;
    }
    final l$guests = guests;
    final lOther$guests = other.guests;
    if (l$guests.length != lOther$guests.length) {
      return false;
    }
    for (int i = 0; i < l$guests.length; i++) {
      final l$guests$entry = l$guests[i];
      final lOther$guests$entry = lOther$guests[i];
      if (l$guests$entry != lOther$guests$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$InvitationLinkResponse
    on Fragment$InvitationLinkResponse {
  CopyWith$Fragment$InvitationLinkResponse<Fragment$InvitationLinkResponse>
  get copyWith => CopyWith$Fragment$InvitationLinkResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$InvitationLinkResponse<TRes> {
  factory CopyWith$Fragment$InvitationLinkResponse(
    Fragment$InvitationLinkResponse instance,
    TRes Function(Fragment$InvitationLinkResponse) then,
  ) = _CopyWithImpl$Fragment$InvitationLinkResponse;

  factory CopyWith$Fragment$InvitationLinkResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$InvitationLinkResponse;

  TRes call({
    String? $_id,
    String? code,
    int? guestSize,
    int? guestPerEntry,
    int? guestsRegistered,
    Enum$LinkTypeEnum? type,
    Enum$LinkStatusEnum? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? inviteUrl,
    List<Fragment$GuestResponse>? guests,
    String? $__typename,
  });
  TRes guests(
    Iterable<Fragment$GuestResponse> Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$InvitationLinkResponse<TRes>
    implements CopyWith$Fragment$InvitationLinkResponse<TRes> {
  _CopyWithImpl$Fragment$InvitationLinkResponse(this._instance, this._then);

  final Fragment$InvitationLinkResponse _instance;

  final TRes Function(Fragment$InvitationLinkResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? code = _undefined,
    Object? guestSize = _undefined,
    Object? guestPerEntry = _undefined,
    Object? guestsRegistered = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? inviteUrl = _undefined,
    Object? guests = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$InvitationLinkResponse(
      $_id: $_id == _undefined || $_id == null
          ? _instance.$_id
          : ($_id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      guestSize: guestSize == _undefined || guestSize == null
          ? _instance.guestSize
          : (guestSize as int),
      guestPerEntry: guestPerEntry == _undefined || guestPerEntry == null
          ? _instance.guestPerEntry
          : (guestPerEntry as int),
      guestsRegistered:
          guestsRegistered == _undefined || guestsRegistered == null
          ? _instance.guestsRegistered
          : (guestsRegistered as int),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$LinkTypeEnum),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$LinkStatusEnum),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      inviteUrl: inviteUrl == _undefined || inviteUrl == null
          ? _instance.inviteUrl
          : (inviteUrl as String),
      guests: guests == _undefined || guests == null
          ? _instance.guests
          : (guests as List<Fragment$GuestResponse>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes guests(
    Iterable<Fragment$GuestResponse> Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>,
    )
    _fn,
  ) => call(
    guests: _fn(
      _instance.guests.map((e) => CopyWith$Fragment$GuestResponse(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$InvitationLinkResponse<TRes>
    implements CopyWith$Fragment$InvitationLinkResponse<TRes> {
  _CopyWithStubImpl$Fragment$InvitationLinkResponse(this._res);

  TRes _res;

  call({
    String? $_id,
    String? code,
    int? guestSize,
    int? guestPerEntry,
    int? guestsRegistered,
    Enum$LinkTypeEnum? type,
    Enum$LinkStatusEnum? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? inviteUrl,
    List<Fragment$GuestResponse>? guests,
    String? $__typename,
  }) => _res;

  guests(_fn) => _res;
}

const fragmentDefinitionInvitationLinkResponse = FragmentDefinitionNode(
  name: NameNode(value: 'InvitationLinkResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'InvitationLinkResponse'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: '_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'guestSize'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'guestPerEntry'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'guestsRegistered'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'inviteUrl'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'guests'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'GuestResponse'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentInvitationLinkResponse = DocumentNode(
  definitions: [
    fragmentDefinitionInvitationLinkResponse,
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);

extension ClientExtension$Fragment$InvitationLinkResponse
    on graphql.GraphQLClient {
  void writeFragment$InvitationLinkResponse({
    required Fragment$InvitationLinkResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'InvitationLinkResponse',
        document: documentNodeFragmentInvitationLinkResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$InvitationLinkResponse? readFragment$InvitationLinkResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'InvitationLinkResponse',
          document: documentNodeFragmentInvitationLinkResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$InvitationLinkResponse.fromJson(result);
  }
}

class Fragment$UserResponse {
  Fragment$UserResponse({
    required this.$_id,
    required this.phone,
    this.firstName,
    this.lastName,
    this.email,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    this.$__typename = 'UserResponse',
  });

  factory Fragment$UserResponse.fromJson(Map<String, dynamic> json) {
    final l$$_id = json['_id'];
    final l$phone = json['phone'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$type = json['type'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$UserResponse(
      $_id: (l$$_id as String),
      phone: (l$phone as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      email: (l$email as String?),
      type: fromJson$Enum$UserTypeEnum((l$type as String)),
      createdAt: dateTimeFromJson(l$createdAt),
      updatedAt: dateTimeFromJson(l$updatedAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String $_id;

  final String phone;

  final String? firstName;

  final String? lastName;

  final String? email;

  final Enum$UserTypeEnum type;

  final DateTime createdAt;

  final DateTime updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_id = $_id;
    _resultData['_id'] = l$$_id;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$type = type;
    _resultData['type'] = toJson$Enum$UserTypeEnum(l$type);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = dateTimeToJson(l$createdAt);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = dateTimeToJson(l$updatedAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$phone = phone;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$type = type;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_id,
      l$phone,
      l$firstName,
      l$lastName,
      l$email,
      l$type,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UserResponse on Fragment$UserResponse {
  CopyWith$Fragment$UserResponse<Fragment$UserResponse> get copyWith =>
      CopyWith$Fragment$UserResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$UserResponse<TRes> {
  factory CopyWith$Fragment$UserResponse(
    Fragment$UserResponse instance,
    TRes Function(Fragment$UserResponse) then,
  ) = _CopyWithImpl$Fragment$UserResponse;

  factory CopyWith$Fragment$UserResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserResponse;

  TRes call({
    String? $_id,
    String? phone,
    String? firstName,
    String? lastName,
    String? email,
    Enum$UserTypeEnum? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserResponse<TRes>
    implements CopyWith$Fragment$UserResponse<TRes> {
  _CopyWithImpl$Fragment$UserResponse(this._instance, this._then);

  final Fragment$UserResponse _instance;

  final TRes Function(Fragment$UserResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? phone = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? type = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$UserResponse(
      $_id: $_id == _undefined || $_id == null
          ? _instance.$_id
          : ($_id as String),
      phone: phone == _undefined || phone == null
          ? _instance.phone
          : (phone as String),
      firstName: firstName == _undefined
          ? _instance.firstName
          : (firstName as String?),
      lastName: lastName == _undefined
          ? _instance.lastName
          : (lastName as String?),
      email: email == _undefined ? _instance.email : (email as String?),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$UserTypeEnum),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$UserResponse<TRes>
    implements CopyWith$Fragment$UserResponse<TRes> {
  _CopyWithStubImpl$Fragment$UserResponse(this._res);

  TRes _res;

  call({
    String? $_id,
    String? phone,
    String? firstName,
    String? lastName,
    String? email,
    Enum$UserTypeEnum? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUserResponse = FragmentDefinitionNode(
  name: NameNode(value: 'UserResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'UserResponse'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: '_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'firstName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'lastName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'email'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'type'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentUserResponse = DocumentNode(
  definitions: [fragmentDefinitionUserResponse],
);

extension ClientExtension$Fragment$UserResponse on graphql.GraphQLClient {
  void writeFragment$UserResponse({
    required Fragment$UserResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'UserResponse',
        document: documentNodeFragmentUserResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$UserResponse? readFragment$UserResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserResponse',
          document: documentNodeFragmentUserResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserResponse.fromJson(result);
  }
}

class Fragment$OkayResponse {
  Fragment$OkayResponse({
    required this.message,
    required this.status,
    this.$__typename = 'OkayResponse',
  });

  factory Fragment$OkayResponse.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$OkayResponse(
      message: (l$message as String),
      status: (l$status as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$status, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$OkayResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$OkayResponse on Fragment$OkayResponse {
  CopyWith$Fragment$OkayResponse<Fragment$OkayResponse> get copyWith =>
      CopyWith$Fragment$OkayResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$OkayResponse<TRes> {
  factory CopyWith$Fragment$OkayResponse(
    Fragment$OkayResponse instance,
    TRes Function(Fragment$OkayResponse) then,
  ) = _CopyWithImpl$Fragment$OkayResponse;

  factory CopyWith$Fragment$OkayResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OkayResponse;

  TRes call({String? message, String? status, String? $__typename});
}

class _CopyWithImpl$Fragment$OkayResponse<TRes>
    implements CopyWith$Fragment$OkayResponse<TRes> {
  _CopyWithImpl$Fragment$OkayResponse(this._instance, this._then);

  final Fragment$OkayResponse _instance;

  final TRes Function(Fragment$OkayResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$OkayResponse(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$OkayResponse<TRes>
    implements CopyWith$Fragment$OkayResponse<TRes> {
  _CopyWithStubImpl$Fragment$OkayResponse(this._res);

  TRes _res;

  call({String? message, String? status, String? $__typename}) => _res;
}

const fragmentDefinitionOkayResponse = FragmentDefinitionNode(
  name: NameNode(value: 'OkayResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'OkayResponse'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'message'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'status'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentOkayResponse = DocumentNode(
  definitions: [fragmentDefinitionOkayResponse],
);

extension ClientExtension$Fragment$OkayResponse on graphql.GraphQLClient {
  void writeFragment$OkayResponse({
    required Fragment$OkayResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'OkayResponse',
        document: documentNodeFragmentOkayResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$OkayResponse? readFragment$OkayResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OkayResponse',
          document: documentNodeFragmentOkayResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OkayResponse.fromJson(result);
  }
}

class Fragment$LoginResponse {
  Fragment$LoginResponse({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
    this.$__typename = 'LoginResponse',
  });

  factory Fragment$LoginResponse.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$accessToken = json['accessToken'];
    final l$refreshToken = json['refreshToken'];
    final l$$__typename = json['__typename'];
    return Fragment$LoginResponse(
      user: Fragment$UserResponse.fromJson((l$user as Map<String, dynamic>)),
      accessToken: Fragment$TokenResponse.fromJson(
        (l$accessToken as Map<String, dynamic>),
      ),
      refreshToken: Fragment$TokenResponse.fromJson(
        (l$refreshToken as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserResponse user;

  final Fragment$TokenResponse accessToken;

  final Fragment$TokenResponse refreshToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$accessToken = accessToken;
    _resultData['accessToken'] = l$accessToken.toJson();
    final l$refreshToken = refreshToken;
    _resultData['refreshToken'] = l$refreshToken.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$accessToken = accessToken;
    final l$refreshToken = refreshToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$accessToken,
      l$refreshToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$LoginResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$accessToken = accessToken;
    final lOther$accessToken = other.accessToken;
    if (l$accessToken != lOther$accessToken) {
      return false;
    }
    final l$refreshToken = refreshToken;
    final lOther$refreshToken = other.refreshToken;
    if (l$refreshToken != lOther$refreshToken) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$LoginResponse on Fragment$LoginResponse {
  CopyWith$Fragment$LoginResponse<Fragment$LoginResponse> get copyWith =>
      CopyWith$Fragment$LoginResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$LoginResponse<TRes> {
  factory CopyWith$Fragment$LoginResponse(
    Fragment$LoginResponse instance,
    TRes Function(Fragment$LoginResponse) then,
  ) = _CopyWithImpl$Fragment$LoginResponse;

  factory CopyWith$Fragment$LoginResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LoginResponse;

  TRes call({
    Fragment$UserResponse? user,
    Fragment$TokenResponse? accessToken,
    Fragment$TokenResponse? refreshToken,
    String? $__typename,
  });
  CopyWith$Fragment$UserResponse<TRes> get user;
  CopyWith$Fragment$TokenResponse<TRes> get accessToken;
  CopyWith$Fragment$TokenResponse<TRes> get refreshToken;
}

class _CopyWithImpl$Fragment$LoginResponse<TRes>
    implements CopyWith$Fragment$LoginResponse<TRes> {
  _CopyWithImpl$Fragment$LoginResponse(this._instance, this._then);

  final Fragment$LoginResponse _instance;

  final TRes Function(Fragment$LoginResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? accessToken = _undefined,
    Object? refreshToken = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$LoginResponse(
      user: user == _undefined || user == null
          ? _instance.user
          : (user as Fragment$UserResponse),
      accessToken: accessToken == _undefined || accessToken == null
          ? _instance.accessToken
          : (accessToken as Fragment$TokenResponse),
      refreshToken: refreshToken == _undefined || refreshToken == null
          ? _instance.refreshToken
          : (refreshToken as Fragment$TokenResponse),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$UserResponse<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$UserResponse(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$TokenResponse<TRes> get accessToken {
    final local$accessToken = _instance.accessToken;
    return CopyWith$Fragment$TokenResponse(
      local$accessToken,
      (e) => call(accessToken: e),
    );
  }

  CopyWith$Fragment$TokenResponse<TRes> get refreshToken {
    final local$refreshToken = _instance.refreshToken;
    return CopyWith$Fragment$TokenResponse(
      local$refreshToken,
      (e) => call(refreshToken: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$LoginResponse<TRes>
    implements CopyWith$Fragment$LoginResponse<TRes> {
  _CopyWithStubImpl$Fragment$LoginResponse(this._res);

  TRes _res;

  call({
    Fragment$UserResponse? user,
    Fragment$TokenResponse? accessToken,
    Fragment$TokenResponse? refreshToken,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$UserResponse<TRes> get user =>
      CopyWith$Fragment$UserResponse.stub(_res);

  CopyWith$Fragment$TokenResponse<TRes> get accessToken =>
      CopyWith$Fragment$TokenResponse.stub(_res);

  CopyWith$Fragment$TokenResponse<TRes> get refreshToken =>
      CopyWith$Fragment$TokenResponse.stub(_res);
}

const fragmentDefinitionLoginResponse = FragmentDefinitionNode(
  name: NameNode(value: 'LoginResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'LoginResponse'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'UserResponse'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'accessToken'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TokenResponse'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: 'refreshToken'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'TokenResponse'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentLoginResponse = DocumentNode(
  definitions: [
    fragmentDefinitionLoginResponse,
    fragmentDefinitionUserResponse,
    fragmentDefinitionTokenResponse,
  ],
);

extension ClientExtension$Fragment$LoginResponse on graphql.GraphQLClient {
  void writeFragment$LoginResponse({
    required Fragment$LoginResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'LoginResponse',
        document: documentNodeFragmentLoginResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$LoginResponse? readFragment$LoginResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'LoginResponse',
          document: documentNodeFragmentLoginResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$LoginResponse.fromJson(result);
  }
}

class Fragment$FileResponse {
  Fragment$FileResponse({
    required this.$_id,
    required this.url,
    this.uploadUrl,
    required this.isGeneral,
    required this.isConfirmed,
    required this.createdAt,
    required this.updatedAt,
    required this.tags,
    this.$__typename = 'FileResponse',
  });

  factory Fragment$FileResponse.fromJson(Map<String, dynamic> json) {
    final l$$_id = json['_id'];
    final l$url = json['url'];
    final l$uploadUrl = json['uploadUrl'];
    final l$isGeneral = json['isGeneral'];
    final l$isConfirmed = json['isConfirmed'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Fragment$FileResponse(
      $_id: (l$$_id as String),
      url: (l$url as String),
      uploadUrl: (l$uploadUrl as String?),
      isGeneral: (l$isGeneral as bool),
      isConfirmed: (l$isConfirmed as bool),
      createdAt: dateTimeFromJson(l$createdAt),
      updatedAt: dateTimeFromJson(l$updatedAt),
      tags: (l$tags as List<dynamic>)
          .map(
            (e) => Fragment$GuestResponse.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String $_id;

  final String url;

  final String? uploadUrl;

  final bool isGeneral;

  final bool isConfirmed;

  final DateTime createdAt;

  final DateTime updatedAt;

  final List<Fragment$GuestResponse> tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$_id = $_id;
    _resultData['_id'] = l$$_id;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$uploadUrl = uploadUrl;
    _resultData['uploadUrl'] = l$uploadUrl;
    final l$isGeneral = isGeneral;
    _resultData['isGeneral'] = l$isGeneral;
    final l$isConfirmed = isConfirmed;
    _resultData['isConfirmed'] = l$isConfirmed;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = dateTimeToJson(l$createdAt);
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = dateTimeToJson(l$updatedAt);
    final l$tags = tags;
    _resultData['tags'] = l$tags.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$url = url;
    final l$uploadUrl = uploadUrl;
    final l$isGeneral = isGeneral;
    final l$isConfirmed = isConfirmed;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$_id,
      l$url,
      l$uploadUrl,
      l$isGeneral,
      l$isConfirmed,
      l$createdAt,
      l$updatedAt,
      Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FileResponse || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$uploadUrl = uploadUrl;
    final lOther$uploadUrl = other.uploadUrl;
    if (l$uploadUrl != lOther$uploadUrl) {
      return false;
    }
    final l$isGeneral = isGeneral;
    final lOther$isGeneral = other.isGeneral;
    if (l$isGeneral != lOther$isGeneral) {
      return false;
    }
    final l$isConfirmed = isConfirmed;
    final lOther$isConfirmed = other.isConfirmed;
    if (l$isConfirmed != lOther$isConfirmed) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags.length != lOther$tags.length) {
      return false;
    }
    for (int i = 0; i < l$tags.length; i++) {
      final l$tags$entry = l$tags[i];
      final lOther$tags$entry = lOther$tags[i];
      if (l$tags$entry != lOther$tags$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$FileResponse on Fragment$FileResponse {
  CopyWith$Fragment$FileResponse<Fragment$FileResponse> get copyWith =>
      CopyWith$Fragment$FileResponse(this, (i) => i);
}

abstract class CopyWith$Fragment$FileResponse<TRes> {
  factory CopyWith$Fragment$FileResponse(
    Fragment$FileResponse instance,
    TRes Function(Fragment$FileResponse) then,
  ) = _CopyWithImpl$Fragment$FileResponse;

  factory CopyWith$Fragment$FileResponse.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FileResponse;

  TRes call({
    String? $_id,
    String? url,
    String? uploadUrl,
    bool? isGeneral,
    bool? isConfirmed,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Fragment$GuestResponse>? tags,
    String? $__typename,
  });
  TRes tags(
    Iterable<Fragment$GuestResponse> Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$FileResponse<TRes>
    implements CopyWith$Fragment$FileResponse<TRes> {
  _CopyWithImpl$Fragment$FileResponse(this._instance, this._then);

  final Fragment$FileResponse _instance;

  final TRes Function(Fragment$FileResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? url = _undefined,
    Object? uploadUrl = _undefined,
    Object? isGeneral = _undefined,
    Object? isConfirmed = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$FileResponse(
      $_id: $_id == _undefined || $_id == null
          ? _instance.$_id
          : ($_id as String),
      url: url == _undefined || url == null ? _instance.url : (url as String),
      uploadUrl: uploadUrl == _undefined
          ? _instance.uploadUrl
          : (uploadUrl as String?),
      isGeneral: isGeneral == _undefined || isGeneral == null
          ? _instance.isGeneral
          : (isGeneral as bool),
      isConfirmed: isConfirmed == _undefined || isConfirmed == null
          ? _instance.isConfirmed
          : (isConfirmed as bool),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as DateTime),
      updatedAt: updatedAt == _undefined || updatedAt == null
          ? _instance.updatedAt
          : (updatedAt as DateTime),
      tags: tags == _undefined || tags == null
          ? _instance.tags
          : (tags as List<Fragment$GuestResponse>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes tags(
    Iterable<Fragment$GuestResponse> Function(
      Iterable<CopyWith$Fragment$GuestResponse<Fragment$GuestResponse>>,
    )
    _fn,
  ) => call(
    tags: _fn(
      _instance.tags.map((e) => CopyWith$Fragment$GuestResponse(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$FileResponse<TRes>
    implements CopyWith$Fragment$FileResponse<TRes> {
  _CopyWithStubImpl$Fragment$FileResponse(this._res);

  TRes _res;

  call({
    String? $_id,
    String? url,
    String? uploadUrl,
    bool? isGeneral,
    bool? isConfirmed,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Fragment$GuestResponse>? tags,
    String? $__typename,
  }) => _res;

  tags(_fn) => _res;
}

const fragmentDefinitionFileResponse = FragmentDefinitionNode(
  name: NameNode(value: 'FileResponse'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'FileResponse'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: '_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'url'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'uploadUrl'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isGeneral'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isConfirmed'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updatedAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'tags'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'GuestResponse'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ],
        ),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ],
  ),
);
const documentNodeFragmentFileResponse = DocumentNode(
  definitions: [
    fragmentDefinitionFileResponse,
    fragmentDefinitionGuestResponse,
    fragmentDefinitionGuestLinkResponse,
  ],
);

extension ClientExtension$Fragment$FileResponse on graphql.GraphQLClient {
  void writeFragment$FileResponse({
    required Fragment$FileResponse data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'FileResponse',
        document: documentNodeFragmentFileResponse,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$FileResponse? readFragment$FileResponse({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FileResponse',
          document: documentNodeFragmentFileResponse,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FileResponse.fromJson(result);
  }
}
