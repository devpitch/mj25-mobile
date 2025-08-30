enum DiscountCoverageEnum {
  /// Full discount - covers the entire cost
  FULL,

  /// Time-based discount (e.g. first hour free)
  TIME,

  /// Unlocks a specific feature or content
  UNLOCK,

  /// Applies to a pass purchase
  PASS,

  /// Applies to a subscription plan
  SUBSCRIPTION;

  @override
  String toString() {
    switch (this) {
      case DiscountCoverageEnum.FULL:
        return 'FULL';
      case DiscountCoverageEnum.TIME:
        return 'TIME';
      case DiscountCoverageEnum.UNLOCK:
        return 'UNLOCK';
      case DiscountCoverageEnum.PASS:
        return 'PASS';
      case DiscountCoverageEnum.SUBSCRIPTION:
        return 'SUBSCRIPTION';
    }
  }

  String get title {
    switch (this) {
      case DiscountCoverageEnum.FULL:
        return 'Full';
      case DiscountCoverageEnum.TIME:
        return 'Time';
      case DiscountCoverageEnum.UNLOCK:
        return 'Unlock';
      case DiscountCoverageEnum.PASS:
        return 'Pass';
      case DiscountCoverageEnum.SUBSCRIPTION:
        return 'Subscription';
    }
  }
}

DiscountCoverageEnum discountCoverageEnumFromJson(String? value) {
  return DiscountCoverageEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => DiscountCoverageEnum.FULL,
  );
}

String? discountCoverageEnumToJson(DiscountCoverageEnum? value) {
  return value?.toString();
}
