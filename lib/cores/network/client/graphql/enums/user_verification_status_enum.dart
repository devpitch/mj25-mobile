enum UserVerificationStatusEnum {
  /// Verification was successful
  SUCCESSFUL,

  /// Verification failed
  FAILED,

  /// Verification is still pending
  PENDING,

  /// Partial verification completed
  PARTIAL;

  @override
  String toString() {
    switch (this) {
      case UserVerificationStatusEnum.SUCCESSFUL:
        return 'SUCCESSFUL';
      case UserVerificationStatusEnum.FAILED:
        return 'FAILED';
      case UserVerificationStatusEnum.PENDING:
        return 'PENDING';
      case UserVerificationStatusEnum.PARTIAL:
        return 'PARTIAL';
    }
  }

  String get title {
    switch (this) {
      case UserVerificationStatusEnum.SUCCESSFUL:
        return 'Successful';
      case UserVerificationStatusEnum.FAILED:
        return 'Failed';
      case UserVerificationStatusEnum.PENDING:
        return 'Pending';
      case UserVerificationStatusEnum.PARTIAL:
        return 'Partial';
    }
  }
}

UserVerificationStatusEnum userVerificationStatusEnumFromJson(String? value) {
  return UserVerificationStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => UserVerificationStatusEnum.PENDING,
  );
}

String? userVerificationStatusEnumToJson(UserVerificationStatusEnum? value) {
  return value?.toString();
}
