// ignore_for_file: type=lint
import 'package:event_handler/cores/network/client/graphql/scalar.dart';

class Input$InvitationFilterInput {
  factory Input$InvitationFilterInput({
    DateTime? createdSince,
    DateTime? createdUntil,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    Enum$LinkStatusEnum? status,
    String? code,
    int? guestSize,
    Enum$LinkTypeEnum? type,
    int? guestPerEntry,
    int? guestsRegistered,
  }) => Input$InvitationFilterInput._({
    if (createdSince != null) r'createdSince': createdSince,
    if (createdUntil != null) r'createdUntil': createdUntil,
    if (updatedSince != null) r'updatedSince': updatedSince,
    if (updatedUntil != null) r'updatedUntil': updatedUntil,
    if (status != null) r'status': status,
    if (code != null) r'code': code,
    if (guestSize != null) r'guestSize': guestSize,
    if (type != null) r'type': type,
    if (guestPerEntry != null) r'guestPerEntry': guestPerEntry,
    if (guestsRegistered != null) r'guestsRegistered': guestsRegistered,
  });

  Input$InvitationFilterInput._(this._$data);

  factory Input$InvitationFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('createdSince')) {
      final l$createdSince = data['createdSince'];
      result$data['createdSince'] = l$createdSince == null
          ? null
          : dateTimeFromJson(l$createdSince);
    }
    if (data.containsKey('createdUntil')) {
      final l$createdUntil = data['createdUntil'];
      result$data['createdUntil'] = l$createdUntil == null
          ? null
          : dateTimeFromJson(l$createdUntil);
    }
    if (data.containsKey('updatedSince')) {
      final l$updatedSince = data['updatedSince'];
      result$data['updatedSince'] = l$updatedSince == null
          ? null
          : dateTimeFromJson(l$updatedSince);
    }
    if (data.containsKey('updatedUntil')) {
      final l$updatedUntil = data['updatedUntil'];
      result$data['updatedUntil'] = l$updatedUntil == null
          ? null
          : dateTimeFromJson(l$updatedUntil);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$LinkStatusEnum((l$status as String));
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('guestSize')) {
      final l$guestSize = data['guestSize'];
      result$data['guestSize'] = (l$guestSize as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$LinkTypeEnum((l$type as String));
    }
    if (data.containsKey('guestPerEntry')) {
      final l$guestPerEntry = data['guestPerEntry'];
      result$data['guestPerEntry'] = (l$guestPerEntry as int?);
    }
    if (data.containsKey('guestsRegistered')) {
      final l$guestsRegistered = data['guestsRegistered'];
      result$data['guestsRegistered'] = (l$guestsRegistered as int?);
    }
    return Input$InvitationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get createdSince => (_$data['createdSince'] as DateTime?);

  DateTime? get createdUntil => (_$data['createdUntil'] as DateTime?);

  DateTime? get updatedSince => (_$data['updatedSince'] as DateTime?);

  DateTime? get updatedUntil => (_$data['updatedUntil'] as DateTime?);

  Enum$LinkStatusEnum? get status => (_$data['status'] as Enum$LinkStatusEnum?);

  String? get code => (_$data['code'] as String?);

  int? get guestSize => (_$data['guestSize'] as int?);

  Enum$LinkTypeEnum? get type => (_$data['type'] as Enum$LinkTypeEnum?);

  int? get guestPerEntry => (_$data['guestPerEntry'] as int?);

  int? get guestsRegistered => (_$data['guestsRegistered'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('createdSince')) {
      final l$createdSince = createdSince;
      result$data['createdSince'] = l$createdSince == null
          ? null
          : dateTimeToJson(l$createdSince);
    }
    if (_$data.containsKey('createdUntil')) {
      final l$createdUntil = createdUntil;
      result$data['createdUntil'] = l$createdUntil == null
          ? null
          : dateTimeToJson(l$createdUntil);
    }
    if (_$data.containsKey('updatedSince')) {
      final l$updatedSince = updatedSince;
      result$data['updatedSince'] = l$updatedSince == null
          ? null
          : dateTimeToJson(l$updatedSince);
    }
    if (_$data.containsKey('updatedUntil')) {
      final l$updatedUntil = updatedUntil;
      result$data['updatedUntil'] = l$updatedUntil == null
          ? null
          : dateTimeToJson(l$updatedUntil);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status == null
          ? null
          : toJson$Enum$LinkStatusEnum(l$status);
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('guestSize')) {
      final l$guestSize = guestSize;
      result$data['guestSize'] = l$guestSize;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type == null
          ? null
          : toJson$Enum$LinkTypeEnum(l$type);
    }
    if (_$data.containsKey('guestPerEntry')) {
      final l$guestPerEntry = guestPerEntry;
      result$data['guestPerEntry'] = l$guestPerEntry;
    }
    if (_$data.containsKey('guestsRegistered')) {
      final l$guestsRegistered = guestsRegistered;
      result$data['guestsRegistered'] = l$guestsRegistered;
    }
    return result$data;
  }

  CopyWith$Input$InvitationFilterInput<Input$InvitationFilterInput>
  get copyWith => CopyWith$Input$InvitationFilterInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$InvitationFilterInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createdSince = createdSince;
    final lOther$createdSince = other.createdSince;
    if (_$data.containsKey('createdSince') !=
        other._$data.containsKey('createdSince')) {
      return false;
    }
    if (l$createdSince != lOther$createdSince) {
      return false;
    }
    final l$createdUntil = createdUntil;
    final lOther$createdUntil = other.createdUntil;
    if (_$data.containsKey('createdUntil') !=
        other._$data.containsKey('createdUntil')) {
      return false;
    }
    if (l$createdUntil != lOther$createdUntil) {
      return false;
    }
    final l$updatedSince = updatedSince;
    final lOther$updatedSince = other.updatedSince;
    if (_$data.containsKey('updatedSince') !=
        other._$data.containsKey('updatedSince')) {
      return false;
    }
    if (l$updatedSince != lOther$updatedSince) {
      return false;
    }
    final l$updatedUntil = updatedUntil;
    final lOther$updatedUntil = other.updatedUntil;
    if (_$data.containsKey('updatedUntil') !=
        other._$data.containsKey('updatedUntil')) {
      return false;
    }
    if (l$updatedUntil != lOther$updatedUntil) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
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
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
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
    final l$guestsRegistered = guestsRegistered;
    final lOther$guestsRegistered = other.guestsRegistered;
    if (_$data.containsKey('guestsRegistered') !=
        other._$data.containsKey('guestsRegistered')) {
      return false;
    }
    if (l$guestsRegistered != lOther$guestsRegistered) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$createdSince = createdSince;
    final l$createdUntil = createdUntil;
    final l$updatedSince = updatedSince;
    final l$updatedUntil = updatedUntil;
    final l$status = status;
    final l$code = code;
    final l$guestSize = guestSize;
    final l$type = type;
    final l$guestPerEntry = guestPerEntry;
    final l$guestsRegistered = guestsRegistered;
    return Object.hashAll([
      _$data.containsKey('createdSince') ? l$createdSince : const {},
      _$data.containsKey('createdUntil') ? l$createdUntil : const {},
      _$data.containsKey('updatedSince') ? l$updatedSince : const {},
      _$data.containsKey('updatedUntil') ? l$updatedUntil : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('guestSize') ? l$guestSize : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('guestPerEntry') ? l$guestPerEntry : const {},
      _$data.containsKey('guestsRegistered') ? l$guestsRegistered : const {},
    ]);
  }
}

abstract class CopyWith$Input$InvitationFilterInput<TRes> {
  factory CopyWith$Input$InvitationFilterInput(
    Input$InvitationFilterInput instance,
    TRes Function(Input$InvitationFilterInput) then,
  ) = _CopyWithImpl$Input$InvitationFilterInput;

  factory CopyWith$Input$InvitationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InvitationFilterInput;

  TRes call({
    DateTime? createdSince,
    DateTime? createdUntil,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    Enum$LinkStatusEnum? status,
    String? code,
    int? guestSize,
    Enum$LinkTypeEnum? type,
    int? guestPerEntry,
    int? guestsRegistered,
  });
}

class _CopyWithImpl$Input$InvitationFilterInput<TRes>
    implements CopyWith$Input$InvitationFilterInput<TRes> {
  _CopyWithImpl$Input$InvitationFilterInput(this._instance, this._then);

  final Input$InvitationFilterInput _instance;

  final TRes Function(Input$InvitationFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createdSince = _undefined,
    Object? createdUntil = _undefined,
    Object? updatedSince = _undefined,
    Object? updatedUntil = _undefined,
    Object? status = _undefined,
    Object? code = _undefined,
    Object? guestSize = _undefined,
    Object? type = _undefined,
    Object? guestPerEntry = _undefined,
    Object? guestsRegistered = _undefined,
  }) => _then(
    Input$InvitationFilterInput._({
      ..._instance._$data,
      if (createdSince != _undefined)
        'createdSince': (createdSince as DateTime?),
      if (createdUntil != _undefined)
        'createdUntil': (createdUntil as DateTime?),
      if (updatedSince != _undefined)
        'updatedSince': (updatedSince as DateTime?),
      if (updatedUntil != _undefined)
        'updatedUntil': (updatedUntil as DateTime?),
      if (status != _undefined) 'status': (status as Enum$LinkStatusEnum?),
      if (code != _undefined) 'code': (code as String?),
      if (guestSize != _undefined) 'guestSize': (guestSize as int?),
      if (type != _undefined) 'type': (type as Enum$LinkTypeEnum?),
      if (guestPerEntry != _undefined) 'guestPerEntry': (guestPerEntry as int?),
      if (guestsRegistered != _undefined)
        'guestsRegistered': (guestsRegistered as int?),
    }),
  );
}

class _CopyWithStubImpl$Input$InvitationFilterInput<TRes>
    implements CopyWith$Input$InvitationFilterInput<TRes> {
  _CopyWithStubImpl$Input$InvitationFilterInput(this._res);

  TRes _res;

  call({
    DateTime? createdSince,
    DateTime? createdUntil,
    DateTime? updatedSince,
    DateTime? updatedUntil,
    Enum$LinkStatusEnum? status,
    String? code,
    int? guestSize,
    Enum$LinkTypeEnum? type,
    int? guestPerEntry,
    int? guestsRegistered,
  }) => _res;
}

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

class Input$UpdateInvitationLinkInput {
  factory Input$UpdateInvitationLinkInput({
    required String $_id,
    String? code,
    int? guestSize,
    int? guestPerEntry,
    int? guestsRegistered,
    Enum$LinkTypeEnum? type,
    Enum$LinkStatusEnum? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Input$UpdateInvitationLinkInput._({
    r'_id': $_id,
    if (code != null) r'code': code,
    if (guestSize != null) r'guestSize': guestSize,
    if (guestPerEntry != null) r'guestPerEntry': guestPerEntry,
    if (guestsRegistered != null) r'guestsRegistered': guestsRegistered,
    if (type != null) r'type': type,
    if (status != null) r'status': status,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input$UpdateInvitationLinkInput._(this._$data);

  factory Input$UpdateInvitationLinkInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$_id = data['_id'];
    result$data['_id'] = (l$$_id as String);
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('guestSize')) {
      final l$guestSize = data['guestSize'];
      result$data['guestSize'] = (l$guestSize as int?);
    }
    if (data.containsKey('guestPerEntry')) {
      final l$guestPerEntry = data['guestPerEntry'];
      result$data['guestPerEntry'] = (l$guestPerEntry as int?);
    }
    if (data.containsKey('guestsRegistered')) {
      final l$guestsRegistered = data['guestsRegistered'];
      result$data['guestsRegistered'] = (l$guestsRegistered as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$LinkTypeEnum((l$type as String));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$LinkStatusEnum((l$status as String));
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : dateTimeFromJson(l$createdAt);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : dateTimeFromJson(l$updatedAt);
    }
    return Input$UpdateInvitationLinkInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $_id => (_$data['_id'] as String);

  String? get code => (_$data['code'] as String?);

  int? get guestSize => (_$data['guestSize'] as int?);

  int? get guestPerEntry => (_$data['guestPerEntry'] as int?);

  int? get guestsRegistered => (_$data['guestsRegistered'] as int?);

  Enum$LinkTypeEnum? get type => (_$data['type'] as Enum$LinkTypeEnum?);

  Enum$LinkStatusEnum? get status => (_$data['status'] as Enum$LinkStatusEnum?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$_id = $_id;
    result$data['_id'] = l$$_id;
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('guestSize')) {
      final l$guestSize = guestSize;
      result$data['guestSize'] = l$guestSize;
    }
    if (_$data.containsKey('guestPerEntry')) {
      final l$guestPerEntry = guestPerEntry;
      result$data['guestPerEntry'] = l$guestPerEntry;
    }
    if (_$data.containsKey('guestsRegistered')) {
      final l$guestsRegistered = guestsRegistered;
      result$data['guestsRegistered'] = l$guestsRegistered;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] = l$type == null
          ? null
          : toJson$Enum$LinkTypeEnum(l$type);
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status == null
          ? null
          : toJson$Enum$LinkStatusEnum(l$status);
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : dateTimeToJson(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : dateTimeToJson(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$UpdateInvitationLinkInput<Input$UpdateInvitationLinkInput>
  get copyWith => CopyWith$Input$UpdateInvitationLinkInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateInvitationLinkInput ||
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
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
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
    final l$guestsRegistered = guestsRegistered;
    final lOther$guestsRegistered = other.guestsRegistered;
    if (_$data.containsKey('guestsRegistered') !=
        other._$data.containsKey('guestsRegistered')) {
      return false;
    }
    if (l$guestsRegistered != lOther$guestsRegistered) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
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
    return Object.hashAll([
      l$$_id,
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('guestSize') ? l$guestSize : const {},
      _$data.containsKey('guestPerEntry') ? l$guestPerEntry : const {},
      _$data.containsKey('guestsRegistered') ? l$guestsRegistered : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateInvitationLinkInput<TRes> {
  factory CopyWith$Input$UpdateInvitationLinkInput(
    Input$UpdateInvitationLinkInput instance,
    TRes Function(Input$UpdateInvitationLinkInput) then,
  ) = _CopyWithImpl$Input$UpdateInvitationLinkInput;

  factory CopyWith$Input$UpdateInvitationLinkInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateInvitationLinkInput;

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
  });
}

class _CopyWithImpl$Input$UpdateInvitationLinkInput<TRes>
    implements CopyWith$Input$UpdateInvitationLinkInput<TRes> {
  _CopyWithImpl$Input$UpdateInvitationLinkInput(this._instance, this._then);

  final Input$UpdateInvitationLinkInput _instance;

  final TRes Function(Input$UpdateInvitationLinkInput) _then;

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
  }) => _then(
    Input$UpdateInvitationLinkInput._({
      ..._instance._$data,
      if ($_id != _undefined && $_id != null) '_id': ($_id as String),
      if (code != _undefined) 'code': (code as String?),
      if (guestSize != _undefined) 'guestSize': (guestSize as int?),
      if (guestPerEntry != _undefined) 'guestPerEntry': (guestPerEntry as int?),
      if (guestsRegistered != _undefined)
        'guestsRegistered': (guestsRegistered as int?),
      if (type != _undefined) 'type': (type as Enum$LinkTypeEnum?),
      if (status != _undefined) 'status': (status as Enum$LinkStatusEnum?),
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl$Input$UpdateInvitationLinkInput<TRes>
    implements CopyWith$Input$UpdateInvitationLinkInput<TRes> {
  _CopyWithStubImpl$Input$UpdateInvitationLinkInput(this._res);

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
  }) => _res;
}

class Input$FetchGuestInput {
  factory Input$FetchGuestInput({String? code, String? first3Letters}) =>
      Input$FetchGuestInput._({
        if (code != null) r'code': code,
        if (first3Letters != null) r'first3Letters': first3Letters,
      });

  Input$FetchGuestInput._(this._$data);

  factory Input$FetchGuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('first3Letters')) {
      final l$first3Letters = data['first3Letters'];
      result$data['first3Letters'] = (l$first3Letters as String?);
    }
    return Input$FetchGuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get code => (_$data['code'] as String?);

  String? get first3Letters => (_$data['first3Letters'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('first3Letters')) {
      final l$first3Letters = first3Letters;
      result$data['first3Letters'] = l$first3Letters;
    }
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
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$first3Letters = first3Letters;
    final lOther$first3Letters = other.first3Letters;
    if (_$data.containsKey('first3Letters') !=
        other._$data.containsKey('first3Letters')) {
      return false;
    }
    if (l$first3Letters != lOther$first3Letters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$first3Letters = first3Letters;
    return Object.hashAll([
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('first3Letters') ? l$first3Letters : const {},
    ]);
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
          if (code != _undefined) 'code': (code as String?),
          if (first3Letters != _undefined)
            'first3Letters': (first3Letters as String?),
        }),
      );
}

class _CopyWithStubImpl$Input$FetchGuestInput<TRes>
    implements CopyWith$Input$FetchGuestInput<TRes> {
  _CopyWithStubImpl$Input$FetchGuestInput(this._res);

  TRes _res;

  call({String? code, String? first3Letters}) => _res;
}

class Input$FetchGalleryInput {
  factory Input$FetchGalleryInput({String? code, String? first3Letters}) =>
      Input$FetchGalleryInput._({
        if (code != null) r'code': code,
        if (first3Letters != null) r'first3Letters': first3Letters,
      });

  Input$FetchGalleryInput._(this._$data);

  factory Input$FetchGalleryInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('first3Letters')) {
      final l$first3Letters = data['first3Letters'];
      result$data['first3Letters'] = (l$first3Letters as String?);
    }
    return Input$FetchGalleryInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get code => (_$data['code'] as String?);

  String? get first3Letters => (_$data['first3Letters'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('first3Letters')) {
      final l$first3Letters = first3Letters;
      result$data['first3Letters'] = l$first3Letters;
    }
    return result$data;
  }

  CopyWith$Input$FetchGalleryInput<Input$FetchGalleryInput> get copyWith =>
      CopyWith$Input$FetchGalleryInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FetchGalleryInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$first3Letters = first3Letters;
    final lOther$first3Letters = other.first3Letters;
    if (_$data.containsKey('first3Letters') !=
        other._$data.containsKey('first3Letters')) {
      return false;
    }
    if (l$first3Letters != lOther$first3Letters) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$first3Letters = first3Letters;
    return Object.hashAll([
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('first3Letters') ? l$first3Letters : const {},
    ]);
  }
}

abstract class CopyWith$Input$FetchGalleryInput<TRes> {
  factory CopyWith$Input$FetchGalleryInput(
    Input$FetchGalleryInput instance,
    TRes Function(Input$FetchGalleryInput) then,
  ) = _CopyWithImpl$Input$FetchGalleryInput;

  factory CopyWith$Input$FetchGalleryInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FetchGalleryInput;

  TRes call({String? code, String? first3Letters});
}

class _CopyWithImpl$Input$FetchGalleryInput<TRes>
    implements CopyWith$Input$FetchGalleryInput<TRes> {
  _CopyWithImpl$Input$FetchGalleryInput(this._instance, this._then);

  final Input$FetchGalleryInput _instance;

  final TRes Function(Input$FetchGalleryInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined, Object? first3Letters = _undefined}) =>
      _then(
        Input$FetchGalleryInput._({
          ..._instance._$data,
          if (code != _undefined) 'code': (code as String?),
          if (first3Letters != _undefined)
            'first3Letters': (first3Letters as String?),
        }),
      );
}

class _CopyWithStubImpl$Input$FetchGalleryInput<TRes>
    implements CopyWith$Input$FetchGalleryInput<TRes> {
  _CopyWithStubImpl$Input$FetchGalleryInput(this._res);

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

class Input$AttachGuestInput {
  factory Input$AttachGuestInput({
    required Input$GuestInput guest,
    required String code,
  }) => Input$AttachGuestInput._({r'guest': guest, r'code': code});

  Input$AttachGuestInput._(this._$data);

  factory Input$AttachGuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$guest = data['guest'];
    result$data['guest'] = Input$GuestInput.fromJson(
      (l$guest as Map<String, dynamic>),
    );
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Input$AttachGuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GuestInput get guest => (_$data['guest'] as Input$GuestInput);

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$guest = guest;
    result$data['guest'] = l$guest.toJson();
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Input$AttachGuestInput<Input$AttachGuestInput> get copyWith =>
      CopyWith$Input$AttachGuestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AttachGuestInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$guest = guest;
    final lOther$guest = other.guest;
    if (l$guest != lOther$guest) {
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
    final l$guest = guest;
    final l$code = code;
    return Object.hashAll([l$guest, l$code]);
  }
}

abstract class CopyWith$Input$AttachGuestInput<TRes> {
  factory CopyWith$Input$AttachGuestInput(
    Input$AttachGuestInput instance,
    TRes Function(Input$AttachGuestInput) then,
  ) = _CopyWithImpl$Input$AttachGuestInput;

  factory CopyWith$Input$AttachGuestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AttachGuestInput;

  TRes call({Input$GuestInput? guest, String? code});
  CopyWith$Input$GuestInput<TRes> get guest;
}

class _CopyWithImpl$Input$AttachGuestInput<TRes>
    implements CopyWith$Input$AttachGuestInput<TRes> {
  _CopyWithImpl$Input$AttachGuestInput(this._instance, this._then);

  final Input$AttachGuestInput _instance;

  final TRes Function(Input$AttachGuestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? guest = _undefined, Object? code = _undefined}) => _then(
    Input$AttachGuestInput._({
      ..._instance._$data,
      if (guest != _undefined && guest != null)
        'guest': (guest as Input$GuestInput),
      if (code != _undefined && code != null) 'code': (code as String),
    }),
  );

  CopyWith$Input$GuestInput<TRes> get guest {
    final local$guest = _instance.guest;
    return CopyWith$Input$GuestInput(local$guest, (e) => call(guest: e));
  }
}

class _CopyWithStubImpl$Input$AttachGuestInput<TRes>
    implements CopyWith$Input$AttachGuestInput<TRes> {
  _CopyWithStubImpl$Input$AttachGuestInput(this._res);

  TRes _res;

  call({Input$GuestInput? guest, String? code}) => _res;

  CopyWith$Input$GuestInput<TRes> get guest =>
      CopyWith$Input$GuestInput.stub(_res);
}

class Input$UpdateGuestInput {
  factory Input$UpdateGuestInput({
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
  }) => Input$UpdateGuestInput._({
    if ($_id != null) r'_id': $_id,
    if (invitationLinkId != null) r'invitationLinkId': invitationLinkId,
    if (phone != null) r'phone': phone,
    if (title != null) r'title': title,
    if (firstName != null) r'firstName': firstName,
    if (lastName != null) r'lastName': lastName,
    if (email != null) r'email': email,
    if (isOnBoarded != null) r'isOnBoarded': isOnBoarded,
    if (isInEvent != null) r'isInEvent': isInEvent,
    if (isGifted != null) r'isGifted': isGifted,
    if (createdAt != null) r'createdAt': createdAt,
    if (updatedAt != null) r'updatedAt': updatedAt,
  });

  Input$UpdateGuestInput._(this._$data);

  factory Input$UpdateGuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_id')) {
      final l$$_id = data['_id'];
      result$data['_id'] = (l$$_id as String?);
    }
    if (data.containsKey('invitationLinkId')) {
      final l$invitationLinkId = data['invitationLinkId'];
      result$data['invitationLinkId'] = (l$invitationLinkId as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
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
    if (data.containsKey('isOnBoarded')) {
      final l$isOnBoarded = data['isOnBoarded'];
      result$data['isOnBoarded'] = (l$isOnBoarded as bool?);
    }
    if (data.containsKey('isInEvent')) {
      final l$isInEvent = data['isInEvent'];
      result$data['isInEvent'] = (l$isInEvent as bool?);
    }
    if (data.containsKey('isGifted')) {
      final l$isGifted = data['isGifted'];
      result$data['isGifted'] = (l$isGifted as bool?);
    }
    if (data.containsKey('createdAt')) {
      final l$createdAt = data['createdAt'];
      result$data['createdAt'] = l$createdAt == null
          ? null
          : dateTimeFromJson(l$createdAt);
    }
    if (data.containsKey('updatedAt')) {
      final l$updatedAt = data['updatedAt'];
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : dateTimeFromJson(l$updatedAt);
    }
    return Input$UpdateGuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_id => (_$data['_id'] as String?);

  String? get invitationLinkId => (_$data['invitationLinkId'] as String?);

  String? get phone => (_$data['phone'] as String?);

  String? get title => (_$data['title'] as String?);

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get email => (_$data['email'] as String?);

  bool? get isOnBoarded => (_$data['isOnBoarded'] as bool?);

  bool? get isInEvent => (_$data['isInEvent'] as bool?);

  bool? get isGifted => (_$data['isGifted'] as bool?);

  DateTime? get createdAt => (_$data['createdAt'] as DateTime?);

  DateTime? get updatedAt => (_$data['updatedAt'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_id')) {
      final l$$_id = $_id;
      result$data['_id'] = l$$_id;
    }
    if (_$data.containsKey('invitationLinkId')) {
      final l$invitationLinkId = invitationLinkId;
      result$data['invitationLinkId'] = l$invitationLinkId;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
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
    if (_$data.containsKey('isOnBoarded')) {
      final l$isOnBoarded = isOnBoarded;
      result$data['isOnBoarded'] = l$isOnBoarded;
    }
    if (_$data.containsKey('isInEvent')) {
      final l$isInEvent = isInEvent;
      result$data['isInEvent'] = l$isInEvent;
    }
    if (_$data.containsKey('isGifted')) {
      final l$isGifted = isGifted;
      result$data['isGifted'] = l$isGifted;
    }
    if (_$data.containsKey('createdAt')) {
      final l$createdAt = createdAt;
      result$data['createdAt'] = l$createdAt == null
          ? null
          : dateTimeToJson(l$createdAt);
    }
    if (_$data.containsKey('updatedAt')) {
      final l$updatedAt = updatedAt;
      result$data['updatedAt'] = l$updatedAt == null
          ? null
          : dateTimeToJson(l$updatedAt);
    }
    return result$data;
  }

  CopyWith$Input$UpdateGuestInput<Input$UpdateGuestInput> get copyWith =>
      CopyWith$Input$UpdateGuestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateGuestInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (_$data.containsKey('_id') != other._$data.containsKey('_id')) {
      return false;
    }
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$invitationLinkId = invitationLinkId;
    final lOther$invitationLinkId = other.invitationLinkId;
    if (_$data.containsKey('invitationLinkId') !=
        other._$data.containsKey('invitationLinkId')) {
      return false;
    }
    if (l$invitationLinkId != lOther$invitationLinkId) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
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
    final l$isOnBoarded = isOnBoarded;
    final lOther$isOnBoarded = other.isOnBoarded;
    if (_$data.containsKey('isOnBoarded') !=
        other._$data.containsKey('isOnBoarded')) {
      return false;
    }
    if (l$isOnBoarded != lOther$isOnBoarded) {
      return false;
    }
    final l$isInEvent = isInEvent;
    final lOther$isInEvent = other.isInEvent;
    if (_$data.containsKey('isInEvent') !=
        other._$data.containsKey('isInEvent')) {
      return false;
    }
    if (l$isInEvent != lOther$isInEvent) {
      return false;
    }
    final l$isGifted = isGifted;
    final lOther$isGifted = other.isGifted;
    if (_$data.containsKey('isGifted') !=
        other._$data.containsKey('isGifted')) {
      return false;
    }
    if (l$isGifted != lOther$isGifted) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (_$data.containsKey('createdAt') !=
        other._$data.containsKey('createdAt')) {
      return false;
    }
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (_$data.containsKey('updatedAt') !=
        other._$data.containsKey('updatedAt')) {
      return false;
    }
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    return true;
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
    return Object.hashAll([
      _$data.containsKey('_id') ? l$$_id : const {},
      _$data.containsKey('invitationLinkId') ? l$invitationLinkId : const {},
      _$data.containsKey('phone') ? l$phone : const {},
      _$data.containsKey('title') ? l$title : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('isOnBoarded') ? l$isOnBoarded : const {},
      _$data.containsKey('isInEvent') ? l$isInEvent : const {},
      _$data.containsKey('isGifted') ? l$isGifted : const {},
      _$data.containsKey('createdAt') ? l$createdAt : const {},
      _$data.containsKey('updatedAt') ? l$updatedAt : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateGuestInput<TRes> {
  factory CopyWith$Input$UpdateGuestInput(
    Input$UpdateGuestInput instance,
    TRes Function(Input$UpdateGuestInput) then,
  ) = _CopyWithImpl$Input$UpdateGuestInput;

  factory CopyWith$Input$UpdateGuestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateGuestInput;

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
  });
}

class _CopyWithImpl$Input$UpdateGuestInput<TRes>
    implements CopyWith$Input$UpdateGuestInput<TRes> {
  _CopyWithImpl$Input$UpdateGuestInput(this._instance, this._then);

  final Input$UpdateGuestInput _instance;

  final TRes Function(Input$UpdateGuestInput) _then;

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
  }) => _then(
    Input$UpdateGuestInput._({
      ..._instance._$data,
      if ($_id != _undefined) '_id': ($_id as String?),
      if (invitationLinkId != _undefined)
        'invitationLinkId': (invitationLinkId as String?),
      if (phone != _undefined) 'phone': (phone as String?),
      if (title != _undefined) 'title': (title as String?),
      if (firstName != _undefined) 'firstName': (firstName as String?),
      if (lastName != _undefined) 'lastName': (lastName as String?),
      if (email != _undefined) 'email': (email as String?),
      if (isOnBoarded != _undefined) 'isOnBoarded': (isOnBoarded as bool?),
      if (isInEvent != _undefined) 'isInEvent': (isInEvent as bool?),
      if (isGifted != _undefined) 'isGifted': (isGifted as bool?),
      if (createdAt != _undefined) 'createdAt': (createdAt as DateTime?),
      if (updatedAt != _undefined) 'updatedAt': (updatedAt as DateTime?),
    }),
  );
}

class _CopyWithStubImpl$Input$UpdateGuestInput<TRes>
    implements CopyWith$Input$UpdateGuestInput<TRes> {
  _CopyWithStubImpl$Input$UpdateGuestInput(this._res);

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

class Input$DeleteGuestInput {
  factory Input$DeleteGuestInput({required String $_id}) =>
      Input$DeleteGuestInput._({r'_id': $_id});

  Input$DeleteGuestInput._(this._$data);

  factory Input$DeleteGuestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$_id = data['_id'];
    result$data['_id'] = (l$$_id as String);
    return Input$DeleteGuestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $_id => (_$data['_id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$_id = $_id;
    result$data['_id'] = l$$_id;
    return result$data;
  }

  CopyWith$Input$DeleteGuestInput<Input$DeleteGuestInput> get copyWith =>
      CopyWith$Input$DeleteGuestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DeleteGuestInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    return Object.hashAll([l$$_id]);
  }
}

abstract class CopyWith$Input$DeleteGuestInput<TRes> {
  factory CopyWith$Input$DeleteGuestInput(
    Input$DeleteGuestInput instance,
    TRes Function(Input$DeleteGuestInput) then,
  ) = _CopyWithImpl$Input$DeleteGuestInput;

  factory CopyWith$Input$DeleteGuestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteGuestInput;

  TRes call({String? $_id});
}

class _CopyWithImpl$Input$DeleteGuestInput<TRes>
    implements CopyWith$Input$DeleteGuestInput<TRes> {
  _CopyWithImpl$Input$DeleteGuestInput(this._instance, this._then);

  final Input$DeleteGuestInput _instance;

  final TRes Function(Input$DeleteGuestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $_id = _undefined}) => _then(
    Input$DeleteGuestInput._({
      ..._instance._$data,
      if ($_id != _undefined && $_id != null) '_id': ($_id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$DeleteGuestInput<TRes>
    implements CopyWith$Input$DeleteGuestInput<TRes> {
  _CopyWithStubImpl$Input$DeleteGuestInput(this._res);

  TRes _res;

  call({String? $_id}) => _res;
}

class Input$UploadRequestInput {
  factory Input$UploadRequestInput({
    int? count,
    List<String>? tagIds,
    bool? isGeneral,
  }) => Input$UploadRequestInput._({
    if (count != null) r'count': count,
    if (tagIds != null) r'tagIds': tagIds,
    if (isGeneral != null) r'isGeneral': isGeneral,
  });

  Input$UploadRequestInput._(this._$data);

  factory Input$UploadRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('count')) {
      final l$count = data['count'];
      result$data['count'] = (l$count as int);
    }
    if (data.containsKey('tagIds')) {
      final l$tagIds = data['tagIds'];
      result$data['tagIds'] = (l$tagIds as List<dynamic>)
          .map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('isGeneral')) {
      final l$isGeneral = data['isGeneral'];
      result$data['isGeneral'] = (l$isGeneral as bool);
    }
    return Input$UploadRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get count => (_$data['count'] as int?);

  List<String>? get tagIds => (_$data['tagIds'] as List<String>?);

  bool? get isGeneral => (_$data['isGeneral'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('count')) {
      final l$count = count;
      result$data['count'] = (l$count as int);
    }
    if (_$data.containsKey('tagIds')) {
      final l$tagIds = tagIds;
      result$data['tagIds'] = (l$tagIds as List<String>).map((e) => e).toList();
    }
    if (_$data.containsKey('isGeneral')) {
      final l$isGeneral = isGeneral;
      result$data['isGeneral'] = (l$isGeneral as bool);
    }
    return result$data;
  }

  CopyWith$Input$UploadRequestInput<Input$UploadRequestInput> get copyWith =>
      CopyWith$Input$UploadRequestInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UploadRequestInput ||
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
    final l$tagIds = tagIds;
    final lOther$tagIds = other.tagIds;
    if (_$data.containsKey('tagIds') != other._$data.containsKey('tagIds')) {
      return false;
    }
    if (l$tagIds != null && lOther$tagIds != null) {
      if (l$tagIds.length != lOther$tagIds.length) {
        return false;
      }
      for (int i = 0; i < l$tagIds.length; i++) {
        final l$tagIds$entry = l$tagIds[i];
        final lOther$tagIds$entry = lOther$tagIds[i];
        if (l$tagIds$entry != lOther$tagIds$entry) {
          return false;
        }
      }
    } else if (l$tagIds != lOther$tagIds) {
      return false;
    }
    final l$isGeneral = isGeneral;
    final lOther$isGeneral = other.isGeneral;
    if (_$data.containsKey('isGeneral') !=
        other._$data.containsKey('isGeneral')) {
      return false;
    }
    if (l$isGeneral != lOther$isGeneral) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$tagIds = tagIds;
    final l$isGeneral = isGeneral;
    return Object.hashAll([
      _$data.containsKey('count') ? l$count : const {},
      _$data.containsKey('tagIds')
          ? l$tagIds == null
                ? null
                : Object.hashAll(l$tagIds.map((v) => v))
          : const {},
      _$data.containsKey('isGeneral') ? l$isGeneral : const {},
    ]);
  }
}

abstract class CopyWith$Input$UploadRequestInput<TRes> {
  factory CopyWith$Input$UploadRequestInput(
    Input$UploadRequestInput instance,
    TRes Function(Input$UploadRequestInput) then,
  ) = _CopyWithImpl$Input$UploadRequestInput;

  factory CopyWith$Input$UploadRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UploadRequestInput;

  TRes call({int? count, List<String>? tagIds, bool? isGeneral});
}

class _CopyWithImpl$Input$UploadRequestInput<TRes>
    implements CopyWith$Input$UploadRequestInput<TRes> {
  _CopyWithImpl$Input$UploadRequestInput(this._instance, this._then);

  final Input$UploadRequestInput _instance;

  final TRes Function(Input$UploadRequestInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? tagIds = _undefined,
    Object? isGeneral = _undefined,
  }) => _then(
    Input$UploadRequestInput._({
      ..._instance._$data,
      if (count != _undefined && count != null) 'count': (count as int),
      if (tagIds != _undefined && tagIds != null)
        'tagIds': (tagIds as List<String>),
      if (isGeneral != _undefined && isGeneral != null)
        'isGeneral': (isGeneral as bool),
    }),
  );
}

class _CopyWithStubImpl$Input$UploadRequestInput<TRes>
    implements CopyWith$Input$UploadRequestInput<TRes> {
  _CopyWithStubImpl$Input$UploadRequestInput(this._res);

  TRes _res;

  call({int? count, List<String>? tagIds, bool? isGeneral}) => _res;
}

class Input$UploadConfirmInput {
  factory Input$UploadConfirmInput({required List<String> ids}) =>
      Input$UploadConfirmInput._({r'ids': ids});

  Input$UploadConfirmInput._(this._$data);

  factory Input$UploadConfirmInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$ids = data['ids'];
    result$data['ids'] = (l$ids as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Input$UploadConfirmInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get ids => (_$data['ids'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ids = ids;
    result$data['ids'] = l$ids.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$UploadConfirmInput<Input$UploadConfirmInput> get copyWith =>
      CopyWith$Input$UploadConfirmInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UploadConfirmInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (l$ids.length != lOther$ids.length) {
      return false;
    }
    for (int i = 0; i < l$ids.length; i++) {
      final l$ids$entry = l$ids[i];
      final lOther$ids$entry = lOther$ids[i];
      if (l$ids$entry != lOther$ids$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    return Object.hashAll([Object.hashAll(l$ids.map((v) => v))]);
  }
}

abstract class CopyWith$Input$UploadConfirmInput<TRes> {
  factory CopyWith$Input$UploadConfirmInput(
    Input$UploadConfirmInput instance,
    TRes Function(Input$UploadConfirmInput) then,
  ) = _CopyWithImpl$Input$UploadConfirmInput;

  factory CopyWith$Input$UploadConfirmInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UploadConfirmInput;

  TRes call({List<String>? ids});
}

class _CopyWithImpl$Input$UploadConfirmInput<TRes>
    implements CopyWith$Input$UploadConfirmInput<TRes> {
  _CopyWithImpl$Input$UploadConfirmInput(this._instance, this._then);

  final Input$UploadConfirmInput _instance;

  final TRes Function(Input$UploadConfirmInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ids = _undefined}) => _then(
    Input$UploadConfirmInput._({
      ..._instance._$data,
      if (ids != _undefined && ids != null) 'ids': (ids as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Input$UploadConfirmInput<TRes>
    implements CopyWith$Input$UploadConfirmInput<TRes> {
  _CopyWithStubImpl$Input$UploadConfirmInput(this._res);

  TRes _res;

  call({List<String>? ids}) => _res;
}

class Input$TagFileInput {
  factory Input$TagFileInput({
    required List<String> ids,
    required List<String> tagIds,
    required bool isGeneral,
  }) => Input$TagFileInput._({
    r'ids': ids,
    r'tagIds': tagIds,
    r'isGeneral': isGeneral,
  });

  Input$TagFileInput._(this._$data);

  factory Input$TagFileInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$ids = data['ids'];
    result$data['ids'] = (l$ids as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$tagIds = data['tagIds'];
    result$data['tagIds'] = (l$tagIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$isGeneral = data['isGeneral'];
    result$data['isGeneral'] = (l$isGeneral as bool);
    return Input$TagFileInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get ids => (_$data['ids'] as List<String>);

  List<String> get tagIds => (_$data['tagIds'] as List<String>);

  bool get isGeneral => (_$data['isGeneral'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$ids = ids;
    result$data['ids'] = l$ids.map((e) => e).toList();
    final l$tagIds = tagIds;
    result$data['tagIds'] = l$tagIds.map((e) => e).toList();
    final l$isGeneral = isGeneral;
    result$data['isGeneral'] = l$isGeneral;
    return result$data;
  }

  CopyWith$Input$TagFileInput<Input$TagFileInput> get copyWith =>
      CopyWith$Input$TagFileInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TagFileInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ids = ids;
    final lOther$ids = other.ids;
    if (l$ids.length != lOther$ids.length) {
      return false;
    }
    for (int i = 0; i < l$ids.length; i++) {
      final l$ids$entry = l$ids[i];
      final lOther$ids$entry = lOther$ids[i];
      if (l$ids$entry != lOther$ids$entry) {
        return false;
      }
    }
    final l$tagIds = tagIds;
    final lOther$tagIds = other.tagIds;
    if (l$tagIds.length != lOther$tagIds.length) {
      return false;
    }
    for (int i = 0; i < l$tagIds.length; i++) {
      final l$tagIds$entry = l$tagIds[i];
      final lOther$tagIds$entry = lOther$tagIds[i];
      if (l$tagIds$entry != lOther$tagIds$entry) {
        return false;
      }
    }
    final l$isGeneral = isGeneral;
    final lOther$isGeneral = other.isGeneral;
    if (l$isGeneral != lOther$isGeneral) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ids = ids;
    final l$tagIds = tagIds;
    final l$isGeneral = isGeneral;
    return Object.hashAll([
      Object.hashAll(l$ids.map((v) => v)),
      Object.hashAll(l$tagIds.map((v) => v)),
      l$isGeneral,
    ]);
  }
}

abstract class CopyWith$Input$TagFileInput<TRes> {
  factory CopyWith$Input$TagFileInput(
    Input$TagFileInput instance,
    TRes Function(Input$TagFileInput) then,
  ) = _CopyWithImpl$Input$TagFileInput;

  factory CopyWith$Input$TagFileInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TagFileInput;

  TRes call({List<String>? ids, List<String>? tagIds, bool? isGeneral});
}

class _CopyWithImpl$Input$TagFileInput<TRes>
    implements CopyWith$Input$TagFileInput<TRes> {
  _CopyWithImpl$Input$TagFileInput(this._instance, this._then);

  final Input$TagFileInput _instance;

  final TRes Function(Input$TagFileInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ids = _undefined,
    Object? tagIds = _undefined,
    Object? isGeneral = _undefined,
  }) => _then(
    Input$TagFileInput._({
      ..._instance._$data,
      if (ids != _undefined && ids != null) 'ids': (ids as List<String>),
      if (tagIds != _undefined && tagIds != null)
        'tagIds': (tagIds as List<String>),
      if (isGeneral != _undefined && isGeneral != null)
        'isGeneral': (isGeneral as bool),
    }),
  );
}

class _CopyWithStubImpl$Input$TagFileInput<TRes>
    implements CopyWith$Input$TagFileInput<TRes> {
  _CopyWithStubImpl$Input$TagFileInput(this._res);

  TRes _res;

  call({List<String>? ids, List<String>? tagIds, bool? isGeneral}) => _res;
}

class Input$RemoveFileTagInput {
  factory Input$RemoveFileTagInput({
    required String $_id,
    required String tagId,
    bool? isGeneral,
  }) => Input$RemoveFileTagInput._({
    r'_id': $_id,
    r'tagId': tagId,
    if (isGeneral != null) r'isGeneral': isGeneral,
  });

  Input$RemoveFileTagInput._(this._$data);

  factory Input$RemoveFileTagInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$$_id = data['_id'];
    result$data['_id'] = (l$$_id as String);
    final l$tagId = data['tagId'];
    result$data['tagId'] = (l$tagId as String);
    if (data.containsKey('isGeneral')) {
      final l$isGeneral = data['isGeneral'];
      result$data['isGeneral'] = (l$isGeneral as bool?);
    }
    return Input$RemoveFileTagInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get $_id => (_$data['_id'] as String);

  String get tagId => (_$data['tagId'] as String);

  bool? get isGeneral => (_$data['isGeneral'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$$_id = $_id;
    result$data['_id'] = l$$_id;
    final l$tagId = tagId;
    result$data['tagId'] = l$tagId;
    if (_$data.containsKey('isGeneral')) {
      final l$isGeneral = isGeneral;
      result$data['isGeneral'] = l$isGeneral;
    }
    return result$data;
  }

  CopyWith$Input$RemoveFileTagInput<Input$RemoveFileTagInput> get copyWith =>
      CopyWith$Input$RemoveFileTagInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RemoveFileTagInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_id = $_id;
    final lOther$$_id = other.$_id;
    if (l$$_id != lOther$$_id) {
      return false;
    }
    final l$tagId = tagId;
    final lOther$tagId = other.tagId;
    if (l$tagId != lOther$tagId) {
      return false;
    }
    final l$isGeneral = isGeneral;
    final lOther$isGeneral = other.isGeneral;
    if (_$data.containsKey('isGeneral') !=
        other._$data.containsKey('isGeneral')) {
      return false;
    }
    if (l$isGeneral != lOther$isGeneral) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_id = $_id;
    final l$tagId = tagId;
    final l$isGeneral = isGeneral;
    return Object.hashAll([
      l$$_id,
      l$tagId,
      _$data.containsKey('isGeneral') ? l$isGeneral : const {},
    ]);
  }
}

abstract class CopyWith$Input$RemoveFileTagInput<TRes> {
  factory CopyWith$Input$RemoveFileTagInput(
    Input$RemoveFileTagInput instance,
    TRes Function(Input$RemoveFileTagInput) then,
  ) = _CopyWithImpl$Input$RemoveFileTagInput;

  factory CopyWith$Input$RemoveFileTagInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RemoveFileTagInput;

  TRes call({String? $_id, String? tagId, bool? isGeneral});
}

class _CopyWithImpl$Input$RemoveFileTagInput<TRes>
    implements CopyWith$Input$RemoveFileTagInput<TRes> {
  _CopyWithImpl$Input$RemoveFileTagInput(this._instance, this._then);

  final Input$RemoveFileTagInput _instance;

  final TRes Function(Input$RemoveFileTagInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_id = _undefined,
    Object? tagId = _undefined,
    Object? isGeneral = _undefined,
  }) => _then(
    Input$RemoveFileTagInput._({
      ..._instance._$data,
      if ($_id != _undefined && $_id != null) '_id': ($_id as String),
      if (tagId != _undefined && tagId != null) 'tagId': (tagId as String),
      if (isGeneral != _undefined) 'isGeneral': (isGeneral as bool?),
    }),
  );
}

class _CopyWithStubImpl$Input$RemoveFileTagInput<TRes>
    implements CopyWith$Input$RemoveFileTagInput<TRes> {
  _CopyWithStubImpl$Input$RemoveFileTagInput(this._res);

  TRes _res;

  call({String? $_id, String? tagId, bool? isGeneral}) => _res;
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
  SHARED,
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
    case Enum$LinkStatusEnum.SHARED:
      return r'SHARED';
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
    case r'SHARED':
      return Enum$LinkStatusEnum.SHARED;
    default:
      return Enum$LinkStatusEnum.$unknown;
  }
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
