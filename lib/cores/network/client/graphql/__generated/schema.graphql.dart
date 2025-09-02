// ignore_for_file: type=lint
class Input$SimpleInput {
  factory Input$SimpleInput({required String code}) =>
      Input$SimpleInput._({r'code': code});

  Input$SimpleInput._(this._$data);

  factory Input$SimpleInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Input$SimpleInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Input$SimpleInput<Input$SimpleInput> get copyWith =>
      CopyWith$Input$SimpleInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SimpleInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Input$SimpleInput<TRes> {
  factory CopyWith$Input$SimpleInput(
    Input$SimpleInput instance,
    TRes Function(Input$SimpleInput) then,
  ) = _CopyWithImpl$Input$SimpleInput;

  factory CopyWith$Input$SimpleInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SimpleInput;

  TRes call({String? code});
}

class _CopyWithImpl$Input$SimpleInput<TRes>
    implements CopyWith$Input$SimpleInput<TRes> {
  _CopyWithImpl$Input$SimpleInput(this._instance, this._then);

  final Input$SimpleInput _instance;

  final TRes Function(Input$SimpleInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) => _then(
    Input$SimpleInput._({
      ..._instance._$data,
      if (code != _undefined && code != null) 'code': (code as String),
    }),
  );
}

class _CopyWithStubImpl$Input$SimpleInput<TRes>
    implements CopyWith$Input$SimpleInput<TRes> {
  _CopyWithStubImpl$Input$SimpleInput(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Input$FetchGuestInput {
  factory Input$FetchGuestInput({
    required String code,
    required String first3Letters,
  }) =>
      Input$FetchGuestInput._({r'code': code, r'first3Letters': first3Letters});

  Input$FetchGuestInput._(this._$data);

  factory Input$FetchGuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$first3Letters = data['first3Letters'];
    result$data['first3Letters'] = (l$first3Letters as String);
    return Input$FetchGuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  String get first3Letters => (_$data['first3Letters'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    final l$first3Letters = first3Letters;
    result$data['first3Letters'] = l$first3Letters;
    return result$data;
  }

  CopyWith$Input$FetchGuestInput<Input$FetchGuestInput> get copyWith =>
      CopyWith$Input$FetchGuestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FetchGuestInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$first3Letters = first3Letters;
    final lOther$first3Letters = other.first3Letters;
    if (l$first3Letters != lOther$first3Letters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$first3Letters = first3Letters;
    return Object.hashAll([l$code, l$first3Letters]);
  }
}

abstract class CopyWith$Input$FetchGuestInput<TRes> {
  factory CopyWith$Input$FetchGuestInput(
    Input$FetchGuestInput instance,
    TRes Function(Input$FetchGuestInput) then,
  ) = _CopyWithImpl$Input$FetchGuestInput;

  factory CopyWith$Input$FetchGuestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FetchGuestInput;

  TRes call({String? code, String? first3Letters});
}

class _CopyWithImpl$Input$FetchGuestInput<TRes>
    implements CopyWith$Input$FetchGuestInput<TRes> {
  _CopyWithImpl$Input$FetchGuestInput(this._instance, this._then);

  final Input$FetchGuestInput _instance;

  final TRes Function(Input$FetchGuestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? first3Letters = _undefined}) =>
      _then(
        Input$FetchGuestInput._({
          ..._instance._$data,
          if (code != _undefined && code != null) 'code': (code as String),
          if (first3Letters != _undefined && first3Letters != null)
            'first3Letters': (first3Letters as String),
        }),
      );
}

class _CopyWithStubImpl$Input$FetchGuestInput<TRes>
    implements CopyWith$Input$FetchGuestInput<TRes> {
  _CopyWithStubImpl$Input$FetchGuestInput(this._res);

  TRes _res;

  call({String? code, String? first3Letters}) => _res;
}

class Input$LoginInput {
  factory Input$LoginInput({required String phone, required String password}) =>
      Input$LoginInput._({r'phone': phone, r'password': password});

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$password = password;
    return Object.hashAll([l$phone, l$password]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({String? phone, String? password});
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(this._instance, this._then);

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? phone = _undefined, Object? password = _undefined}) =>
      _then(
        Input$LoginInput._({
          ..._instance._$data,
          if (phone != _undefined && phone != null) 'phone': (phone as String),
          if (password != _undefined && password != null)
            'password': (password as String),
        }),
      );
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({String? phone, String? password}) => _res;
}

class Input$CreateUserInput {
  factory Input$CreateUserInput({
    required String phone,
    String? firstName,
    String? lastName,
    String? email,
    required Enum$UserTypeEnum type,
    required String password,
  }) => Input$CreateUserInput._({
    r'phone': phone,
    if (firstName != null) r'firstName': firstName,
    if (lastName != null) r'lastName': lastName,
    if (email != null) r'email': email,
    r'type': type,
    r'password': password,
  });

  Input$CreateUserInput._(this._$data);

  factory Input$CreateUserInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$UserTypeEnum((l$type as String));
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$CreateUserInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get email => (_$data['email'] as String?);

  Enum$UserTypeEnum get type => (_$data['type'] as Enum$UserTypeEnum);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$type = type;
    result$data['type'] = toJson$Enum$UserTypeEnum(l$type);
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$CreateUserInput<Input$CreateUserInput> get copyWith =>
      CopyWith$Input$CreateUserInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateUserInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$type = type;
    final l$password = password;
    return Object.hashAll([
      l$phone,
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('email') ? l$email : const {},
      l$type,
      l$password,
    ]);
  }
}

abstract class CopyWith$Input$CreateUserInput<TRes> {
  factory CopyWith$Input$CreateUserInput(
    Input$CreateUserInput instance,
    TRes Function(Input$CreateUserInput) then,
  ) = _CopyWithImpl$Input$CreateUserInput;

  factory CopyWith$Input$CreateUserInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateUserInput;

  TRes call({
    String? phone,
    String? firstName,
    String? lastName,
    String? email,
    Enum$UserTypeEnum? type,
    String? password,
  });
}

class _CopyWithImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithImpl$Input$CreateUserInput(this._instance, this._then);

  final Input$CreateUserInput _instance;

  final TRes Function(Input$CreateUserInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? type = _undefined,
    Object? password = _undefined,
  }) => _then(
    Input$CreateUserInput._({
      ..._instance._$data,
      if (phone != _undefined && phone != null) 'phone': (phone as String),
      if (firstName != _undefined) 'firstName': (firstName as String?),
      if (lastName != _undefined) 'lastName': (lastName as String?),
      if (email != _undefined) 'email': (email as String?),
      if (type != _undefined && type != null)
        'type': (type as Enum$UserTypeEnum),
      if (password != _undefined && password != null)
        'password': (password as String),
    }),
  );
}

class _CopyWithStubImpl$Input$CreateUserInput<TRes>
    implements CopyWith$Input$CreateUserInput<TRes> {
  _CopyWithStubImpl$Input$CreateUserInput(this._res);

  TRes _res;

  call({
    String? phone,
    String? firstName,
    String? lastName,
    String? email,
    Enum$UserTypeEnum? type,
    String? password,
  }) => _res;
}

class Input$CreateGuestInput {
  factory Input$CreateGuestInput({
    required List<Input$GuestInput> guests,
    required String invitationLinkId,
  }) => Input$CreateGuestInput._({
    r'guests': guests,
    r'invitationLinkId': invitationLinkId,
  });

  Input$CreateGuestInput._(this._$data);

  factory Input$CreateGuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$guests = data['guests'];
    result$data['guests'] = (l$guests as List<dynamic>)
        .map((e) => Input$GuestInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$invitationLinkId = data['invitationLinkId'];
    result$data['invitationLinkId'] = (l$invitationLinkId as String);
    return Input$CreateGuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$GuestInput> get guests =>
      (_$data['guests'] as List<Input$GuestInput>);

  String get invitationLinkId => (_$data['invitationLinkId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$guests = guests;
    result$data['guests'] = l$guests.map((e) => e.toJson()).toList();
    final l$invitationLinkId = invitationLinkId;
    result$data['invitationLinkId'] = l$invitationLinkId;
    return result$data;
  }

  CopyWith$Input$CreateGuestInput<Input$CreateGuestInput> get copyWith =>
      CopyWith$Input$CreateGuestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateGuestInput || runtimeType != other.runtimeType) {
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
    final l$invitationLinkId = invitationLinkId;
    final lOther$invitationLinkId = other.invitationLinkId;
    if (l$invitationLinkId != lOther$invitationLinkId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$guests = guests;
    final l$invitationLinkId = invitationLinkId;
    return Object.hashAll([
      Object.hashAll(l$guests.map((v) => v)),
      l$invitationLinkId,
    ]);
  }
}

abstract class CopyWith$Input$CreateGuestInput<TRes> {
  factory CopyWith$Input$CreateGuestInput(
    Input$CreateGuestInput instance,
    TRes Function(Input$CreateGuestInput) then,
  ) = _CopyWithImpl$Input$CreateGuestInput;

  factory CopyWith$Input$CreateGuestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateGuestInput;

  TRes call({List<Input$GuestInput>? guests, String? invitationLinkId});
  TRes guests(
    Iterable<Input$GuestInput> Function(
      Iterable<CopyWith$Input$GuestInput<Input$GuestInput>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Input$CreateGuestInput<TRes>
    implements CopyWith$Input$CreateGuestInput<TRes> {
  _CopyWithImpl$Input$CreateGuestInput(this._instance, this._then);

  final Input$CreateGuestInput _instance;

  final TRes Function(Input$CreateGuestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? guests = _undefined,
    Object? invitationLinkId = _undefined,
  }) => _then(
    Input$CreateGuestInput._({
      ..._instance._$data,
      if (guests != _undefined && guests != null)
        'guests': (guests as List<Input$GuestInput>),
      if (invitationLinkId != _undefined && invitationLinkId != null)
        'invitationLinkId': (invitationLinkId as String),
    }),
  );

  TRes guests(
    Iterable<Input$GuestInput> Function(
      Iterable<CopyWith$Input$GuestInput<Input$GuestInput>>,
    )
    _fn,
  ) => call(
    guests: _fn(
      _instance.guests.map((e) => CopyWith$Input$GuestInput(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Input$CreateGuestInput<TRes>
    implements CopyWith$Input$CreateGuestInput<TRes> {
  _CopyWithStubImpl$Input$CreateGuestInput(this._res);

  TRes _res;

  call({List<Input$GuestInput>? guests, String? invitationLinkId}) => _res;

  guests(_fn) => _res;
}

class Input$GuestInput {
  factory Input$GuestInput({
    required String phone,
    required String title,
    required String firstName,
    required String lastName,
    String? email,
  }) => Input$GuestInput._({
    r'phone': phone,
    r'title': title,
    r'firstName': firstName,
    r'lastName': lastName,
    if (email != null) r'email': email,
  });

  Input$GuestInput._(this._$data);

  factory Input$GuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$phone = data['phone'];
    result$data['phone'] = (l$phone as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    return Input$GuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get phone => (_$data['phone'] as String);

  String get title => (_$data['title'] as String);

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String? get email => (_$data['email'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$phone = phone;
    result$data['phone'] = l$phone;
    final l$title = title;
    result$data['title'] = l$title;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    return result$data;
  }

  CopyWith$Input$GuestInput<Input$GuestInput> get copyWith =>
      CopyWith$Input$GuestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GuestInput || runtimeType != other.runtimeType) {
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
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$phone = phone;
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    return Object.hashAll([
      l$phone,
      l$title,
      l$firstName,
      l$lastName,
      _$data.containsKey('email') ? l$email : const {},
    ]);
  }
}

abstract class CopyWith$Input$GuestInput<TRes> {
  factory CopyWith$Input$GuestInput(
    Input$GuestInput instance,
    TRes Function(Input$GuestInput) then,
  ) = _CopyWithImpl$Input$GuestInput;

  factory CopyWith$Input$GuestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GuestInput;

  TRes call({
    String? phone,
    String? title,
    String? firstName,
    String? lastName,
    String? email,
  });
}

class _CopyWithImpl$Input$GuestInput<TRes>
    implements CopyWith$Input$GuestInput<TRes> {
  _CopyWithImpl$Input$GuestInput(this._instance, this._then);

  final Input$GuestInput _instance;

  final TRes Function(Input$GuestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? phone = _undefined,
    Object? title = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
  }) => _then(
    Input$GuestInput._({
      ..._instance._$data,
      if (phone != _undefined && phone != null) 'phone': (phone as String),
      if (title != _undefined && title != null) 'title': (title as String),
      if (firstName != _undefined && firstName != null)
        'firstName': (firstName as String),
      if (lastName != _undefined && lastName != null)
        'lastName': (lastName as String),
      if (email != _undefined) 'email': (email as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$GuestInput<TRes>
    implements CopyWith$Input$GuestInput<TRes> {
  _CopyWithStubImpl$Input$GuestInput(this._res);

  TRes _res;

  call({
    String? phone,
    String? title,
    String? firstName,
    String? lastName,
    String? email,
  }) => _res;
}

class Input$CreateInvitationLinkInput {
  factory Input$CreateInvitationLinkInput({
    int? guestSize,
    int? guestPerEntry,
    Enum$LinkTypeEnum? type,
    int? linkCount,
  }) => Input$CreateInvitationLinkInput._({
    if (guestSize != null) r'guestSize': guestSize,
    if (guestPerEntry != null) r'guestPerEntry': guestPerEntry,
    if (type != null) r'type': type,
    if (linkCount != null) r'linkCount': linkCount,
  });

  Input$CreateInvitationLinkInput._(this._$data);

  factory Input$CreateInvitationLinkInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('guestSize')) {
      final l$guestSize = data['guestSize'];
      result$data['guestSize'] = (l$guestSize as int);
    }
    if (data.containsKey('guestPerEntry')) {
      final l$guestPerEntry = data['guestPerEntry'];
      result$data['guestPerEntry'] = (l$guestPerEntry as int);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = fromJson$Enum$LinkTypeEnum((l$type as String));
    }
    if (data.containsKey('linkCount')) {
      final l$linkCount = data['linkCount'];
      result$data['linkCount'] = (l$linkCount as int);
    }
    return Input$CreateInvitationLinkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get guestSize => (_$data['guestSize'] as int?);

  int? get guestPerEntry => (_$data['guestPerEntry'] as int?);

  Enum$LinkTypeEnum? get type => (_$data['type'] as Enum$LinkTypeEnum?);

  int? get linkCount => (_$data['linkCount'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('guestSize')) {
      final l$guestSize = guestSize;
      result$data['guestSize'] = (l$guestSize as int);
    }
    if (_$data.containsKey('guestPerEntry')) {
      final l$guestPerEntry = guestPerEntry;
      result$data['guestPerEntry'] = (l$guestPerEntry as int);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = toJson$Enum$LinkTypeEnum(
        (l$type as Enum$LinkTypeEnum),
      );
    }
    if (_$data.containsKey('linkCount')) {
      final l$linkCount = linkCount;
      result$data['linkCount'] = (l$linkCount as int);
    }
    return result$data;
  }

  CopyWith$Input$CreateInvitationLinkInput<Input$CreateInvitationLinkInput>
  get copyWith => CopyWith$Input$CreateInvitationLinkInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateInvitationLinkInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$guestSize = guestSize;
    final lOther$guestSize = other.guestSize;
    if (_$data.containsKey('guestSize') !=
        other._$data.containsKey('guestSize')) {
      return false;
    }
    if (l$guestSize != lOther$guestSize) {
      return false;
    }
    final l$guestPerEntry = guestPerEntry;
    final lOther$guestPerEntry = other.guestPerEntry;
    if (_$data.containsKey('guestPerEntry') !=
        other._$data.containsKey('guestPerEntry')) {
      return false;
    }
    if (l$guestPerEntry != lOther$guestPerEntry) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$linkCount = linkCount;
    final lOther$linkCount = other.linkCount;
    if (_$data.containsKey('linkCount') !=
        other._$data.containsKey('linkCount')) {
      return false;
    }
    if (l$linkCount != lOther$linkCount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$guestSize = guestSize;
    final l$guestPerEntry = guestPerEntry;
    final l$type = type;
    final l$linkCount = linkCount;
    return Object.hashAll([
      _$data.containsKey('guestSize') ? l$guestSize : const {},
      _$data.containsKey('guestPerEntry') ? l$guestPerEntry : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('linkCount') ? l$linkCount : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateInvitationLinkInput<TRes> {
  factory CopyWith$Input$CreateInvitationLinkInput(
    Input$CreateInvitationLinkInput instance,
    TRes Function(Input$CreateInvitationLinkInput) then,
  ) = _CopyWithImpl$Input$CreateInvitationLinkInput;

  factory CopyWith$Input$CreateInvitationLinkInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateInvitationLinkInput;

  TRes call({
    int? guestSize,
    int? guestPerEntry,
    Enum$LinkTypeEnum? type,
    int? linkCount,
  });
}

class _CopyWithImpl$Input$CreateInvitationLinkInput<TRes>
    implements CopyWith$Input$CreateInvitationLinkInput<TRes> {
  _CopyWithImpl$Input$CreateInvitationLinkInput(this._instance, this._then);

  final Input$CreateInvitationLinkInput _instance;

  final TRes Function(Input$CreateInvitationLinkInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? guestSize = _undefined,
    Object? guestPerEntry = _undefined,
    Object? type = _undefined,
    Object? linkCount = _undefined,
  }) => _then(
    Input$CreateInvitationLinkInput._({
      ..._instance._$data,
      if (guestSize != _undefined && guestSize != null)
        'guestSize': (guestSize as int),
      if (guestPerEntry != _undefined && guestPerEntry != null)
        'guestPerEntry': (guestPerEntry as int),
      if (type != _undefined && type != null)
        'type': (type as Enum$LinkTypeEnum),
      if (linkCount != _undefined && linkCount != null)
        'linkCount': (linkCount as int),
    }),
  );
}

class _CopyWithStubImpl$Input$CreateInvitationLinkInput<TRes>
    implements CopyWith$Input$CreateInvitationLinkInput<TRes> {
  _CopyWithStubImpl$Input$CreateInvitationLinkInput(this._res);

  TRes _res;

  call({
    int? guestSize,
    int? guestPerEntry,
    Enum$LinkTypeEnum? type,
    int? linkCount,
  }) => _res;
}

class Input$CreatePrintCardInput {
  factory Input$CreatePrintCardInput({int? count}) =>
      Input$CreatePrintCardInput._({if (count != null) r'count': count});

  Input$CreatePrintCardInput._(this._$data);

  factory Input$CreatePrintCardInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = (l$count as int);
    }
    return Input$CreatePrintCardInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get count => (_$data['count'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = (l$count as int);
    }
    return result$data;
  }

  CopyWith$Input$CreatePrintCardInput<Input$CreatePrintCardInput>
  get copyWith => CopyWith$Input$CreatePrintCardInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreatePrintCardInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (_$data.containsKey('count') != other._$data.containsKey('count')) {
      return false;
    }
    if (l$count != lOther$count) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    return Object.hashAll([_$data.containsKey('count') ? l$count : const {}]);
  }
}

abstract class CopyWith$Input$CreatePrintCardInput<TRes> {
  factory CopyWith$Input$CreatePrintCardInput(
    Input$CreatePrintCardInput instance,
    TRes Function(Input$CreatePrintCardInput) then,
  ) = _CopyWithImpl$Input$CreatePrintCardInput;

  factory CopyWith$Input$CreatePrintCardInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePrintCardInput;

  TRes call({int? count});
}

class _CopyWithImpl$Input$CreatePrintCardInput<TRes>
    implements CopyWith$Input$CreatePrintCardInput<TRes> {
  _CopyWithImpl$Input$CreatePrintCardInput(this._instance, this._then);

  final Input$CreatePrintCardInput _instance;

  final TRes Function(Input$CreatePrintCardInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? count = _undefined}) => _then(
    Input$CreatePrintCardInput._({
      ..._instance._$data,
      if (count != _undefined && count != null) 'count': (count as int),
    }),
  );
}

class _CopyWithStubImpl$Input$CreatePrintCardInput<TRes>
    implements CopyWith$Input$CreatePrintCardInput<TRes> {
  _CopyWithStubImpl$Input$CreatePrintCardInput(this._res);

  TRes _res;

  call({int? count}) => _res;
}

enum Enum$UserTypeEnum {
  USER,
  OPERATOR,
  ADMIN,
  SUPER_ADMIN,
  CHIEF_ADMIN,
  $unknown;

  factory Enum$UserTypeEnum.fromJson(String value) =>
      fromJson$Enum$UserTypeEnum(value);

  String toJson() => toJson$Enum$UserTypeEnum(this);
}

String toJson$Enum$UserTypeEnum(Enum$UserTypeEnum e) {
  switch (e) {
    case Enum$UserTypeEnum.USER:
      return r'USER';
    case Enum$UserTypeEnum.OPERATOR:
      return r'OPERATOR';
    case Enum$UserTypeEnum.ADMIN:
      return r'ADMIN';
    case Enum$UserTypeEnum.SUPER_ADMIN:
      return r'SUPER_ADMIN';
    case Enum$UserTypeEnum.CHIEF_ADMIN:
      return r'CHIEF_ADMIN';
    case Enum$UserTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$UserTypeEnum fromJson$Enum$UserTypeEnum(String value) {
  switch (value) {
    case r'USER':
      return Enum$UserTypeEnum.USER;
    case r'OPERATOR':
      return Enum$UserTypeEnum.OPERATOR;
    case r'ADMIN':
      return Enum$UserTypeEnum.ADMIN;
    case r'SUPER_ADMIN':
      return Enum$UserTypeEnum.SUPER_ADMIN;
    case r'CHIEF_ADMIN':
      return Enum$UserTypeEnum.CHIEF_ADMIN;
    default:
      return Enum$UserTypeEnum.$unknown;
  }
}

enum Enum$LinkTypeEnum {
  PUBLIC,
  PRIVATE,
  GUEST,
  PRINT,
  $unknown;

  factory Enum$LinkTypeEnum.fromJson(String value) =>
      fromJson$Enum$LinkTypeEnum(value);

  String toJson() => toJson$Enum$LinkTypeEnum(this);
}

String toJson$Enum$LinkTypeEnum(Enum$LinkTypeEnum e) {
  switch (e) {
    case Enum$LinkTypeEnum.PUBLIC:
      return r'PUBLIC';
    case Enum$LinkTypeEnum.PRIVATE:
      return r'PRIVATE';
    case Enum$LinkTypeEnum.GUEST:
      return r'GUEST';
    case Enum$LinkTypeEnum.PRINT:
      return r'PRINT';
    case Enum$LinkTypeEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LinkTypeEnum fromJson$Enum$LinkTypeEnum(String value) {
  switch (value) {
    case r'PUBLIC':
      return Enum$LinkTypeEnum.PUBLIC;
    case r'PRIVATE':
      return Enum$LinkTypeEnum.PRIVATE;
    case r'GUEST':
      return Enum$LinkTypeEnum.GUEST;
    case r'PRINT':
      return Enum$LinkTypeEnum.PRINT;
    default:
      return Enum$LinkTypeEnum.$unknown;
  }
}

enum Enum$LinkStatusEnum {
  UNUSED,
  IN_PROGRESS,
  USED,
  INACTIVE,
  PRINTED,
  $unknown;

  factory Enum$LinkStatusEnum.fromJson(String value) =>
      fromJson$Enum$LinkStatusEnum(value);

  String toJson() => toJson$Enum$LinkStatusEnum(this);
}

String toJson$Enum$LinkStatusEnum(Enum$LinkStatusEnum e) {
  switch (e) {
    case Enum$LinkStatusEnum.UNUSED:
      return r'UNUSED';
    case Enum$LinkStatusEnum.IN_PROGRESS:
      return r'IN_PROGRESS';
    case Enum$LinkStatusEnum.USED:
      return r'USED';
    case Enum$LinkStatusEnum.INACTIVE:
      return r'INACTIVE';
    case Enum$LinkStatusEnum.PRINTED:
      return r'PRINTED';
    case Enum$LinkStatusEnum.$unknown:
      return r'$unknown';
  }
}

Enum$LinkStatusEnum fromJson$Enum$LinkStatusEnum(String value) {
  switch (value) {
    case r'UNUSED':
      return Enum$LinkStatusEnum.UNUSED;
    case r'IN_PROGRESS':
      return Enum$LinkStatusEnum.IN_PROGRESS;
    case r'USED':
      return Enum$LinkStatusEnum.USED;
    case r'INACTIVE':
      return Enum$LinkStatusEnum.INACTIVE;
    case r'PRINTED':
      return Enum$LinkStatusEnum.PRINTED;
    default:
      return Enum$LinkStatusEnum.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
