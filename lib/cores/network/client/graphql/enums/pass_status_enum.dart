enum PassStatusEnum {
  /// Pass is an invoice, awaiting action
  ACTIVE,

  /// Pass is pending
  INACTIVE;

  @override
  String toString() {
    switch (this) {
      case PassStatusEnum.ACTIVE:
        return "ACTIVE";
      case PassStatusEnum.INACTIVE:
        return "INACTIVE";
    }
  }

  String get title {
    switch (this) {
      case PassStatusEnum.ACTIVE:
        return "Active";
      case PassStatusEnum.INACTIVE:
        return "Inactive";
    }
  }
}

PassStatusEnum passStatusEnumFromJson(String? value) {
  return PassStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => PassStatusEnum.INACTIVE,
  );
}

String? passStatusEnumToJson(PassStatusEnum? value) {
  return value?.toString();
}
