enum UserStatusEnum {
  /// User has just registered for the first time
  NEW,

  /// User has not verified their identity
  INCOMPLETE,

  /// User has verified their identity
  COMPLETED,

  /// User account has been deactivated
  DEACTIVATED,

  /// User has deleted their account
  DELETED,

  /// User account has been suspended
  SUSPENDED;

  @override
  String toString() {
    switch (this) {
      case UserStatusEnum.NEW:
        return 'NEW';
      case UserStatusEnum.INCOMPLETE:
        return 'INCOMPLETE';
      case UserStatusEnum.COMPLETED:
        return 'COMPLETED';
      case UserStatusEnum.DEACTIVATED:
        return 'DEACTIVATED';
      case UserStatusEnum.DELETED:
        return 'DELETED';
      case UserStatusEnum.SUSPENDED:
        return 'SUSPENDED';
    }
  }

  String get title {
    switch (this) {
      case UserStatusEnum.NEW:
        return 'New';
      case UserStatusEnum.INCOMPLETE:
        return 'Incomplete';
      case UserStatusEnum.COMPLETED:
        return 'Completed';
      case UserStatusEnum.DEACTIVATED:
        return 'Deactivated';
      case UserStatusEnum.DELETED:
        return 'Deleted';
      case UserStatusEnum.SUSPENDED:
        return 'Suspended';
    }
  }
}

UserStatusEnum userStatusEnumFromJson(String? value) {
  return UserStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => UserStatusEnum.NEW,
  );
}

String? userStatusEnumToJson(UserStatusEnum? status) {
  return status?.toString();
}
