enum UserTypeEnum {
  /// Regular user
  USER,

  /// Operator-level user
  OPERATOR,

  /// Admin-level user
  ADMIN,

  /// Super admin with higher privileges
  SUPER_ADMIN,

  /// Chief administrator with the highest privileges
  CHIEF_ADMIN;

  @override
  String toString() {
    switch (this) {
      case UserTypeEnum.USER:
        return 'USER';
      case UserTypeEnum.OPERATOR:
        return 'OPERATOR';
      case UserTypeEnum.ADMIN:
        return 'ADMIN';
      case UserTypeEnum.SUPER_ADMIN:
        return 'SUPER_ADMIN';
      case UserTypeEnum.CHIEF_ADMIN:
        return 'CHIEF_ADMIN';
    }
  }

  String get title {
    switch (this) {
      case UserTypeEnum.USER:
        return 'User';
      case UserTypeEnum.OPERATOR:
        return 'Operator';
      case UserTypeEnum.ADMIN:
        return 'Admin';
      case UserTypeEnum.SUPER_ADMIN:
        return 'Super Admin';
      case UserTypeEnum.CHIEF_ADMIN:
        return 'Chief Admin';
    }
  }
}

UserTypeEnum userTypeEnumFromJson(String? value) {
  return UserTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => UserTypeEnum.USER,
  );
}

String? userTypeEnumToJson(UserTypeEnum? value) {
  return value?.toString();
}
