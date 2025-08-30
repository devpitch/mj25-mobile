enum DiscountsStatusEnum {
  /// Discount is currently active and usable
  ACTIVE,

  /// Discount is inactive and not usable
  INACTIVE,

  /// Discount has been used
  USED,

  /// Discount has been archived and is no longer visible/usable
  ARCHIVED,

  /// Discount has expired and is no longer valid
  EXPIRED;

  @override
  String toString() {
    switch (this) {
      case DiscountsStatusEnum.ACTIVE:
        return 'ACTIVE';
      case DiscountsStatusEnum.INACTIVE:
        return 'INACTIVE';
      case DiscountsStatusEnum.USED:
        return 'USED';
      case DiscountsStatusEnum.ARCHIVED:
        return 'ARCHIVED';
      case DiscountsStatusEnum.EXPIRED:
        return 'EXPIRED';
    }
  }

  String get title {
    switch (this) {
      case DiscountsStatusEnum.ACTIVE:
        return 'Active';
      case DiscountsStatusEnum.INACTIVE:
        return 'Inactive';
      case DiscountsStatusEnum.USED:
        return 'Used';
      case DiscountsStatusEnum.ARCHIVED:
        return 'Archived';
      case DiscountsStatusEnum.EXPIRED:
        return 'Expired';
    }
  }
}

DiscountsStatusEnum discountsStatusEnumFromJson(String? value) {
  return DiscountsStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => DiscountsStatusEnum.INACTIVE,
  );
}

String? discountsStatusEnumToJson(DiscountsStatusEnum? value) {
  return value?.toString();
}
