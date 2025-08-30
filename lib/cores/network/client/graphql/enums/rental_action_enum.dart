enum RentalActionEnum {
  /// Reserve a rental
  RESERVE,

  /// Unlock the vehicle for rental
  UNLOCK,

  /// Apply a discount to the rental
  APPLY_DISCOUNT,

  REMOVE_DISCOUNT,

  /// Cancel the rental
  CANCEL;

  @override
  String toString() {
    switch (this) {
      case RentalActionEnum.RESERVE:
        return 'RESERVE';
      case RentalActionEnum.UNLOCK:
        return 'UNLOCK';
      case RentalActionEnum.APPLY_DISCOUNT:
        return 'APPLY_DISCOUNT';
      case RentalActionEnum.REMOVE_DISCOUNT:
        return 'REMOVE_DISCOUNT';
      case RentalActionEnum.CANCEL:
        return 'CANCEL';
    }
  }

  String get title {
    switch (this) {
      case RentalActionEnum.RESERVE:
        return 'Reserve';
      case RentalActionEnum.UNLOCK:
        return 'Unlock';
      case RentalActionEnum.APPLY_DISCOUNT:
        return 'Apply Discount';
      case RentalActionEnum.REMOVE_DISCOUNT:
        return 'Remove Discount';
      case RentalActionEnum.CANCEL:
        return 'Cancel';
    }
  }
}

RentalActionEnum rentalActionEnumFromJson(String? value) {
  return RentalActionEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => RentalActionEnum.RESERVE,
  );
}

String? rentalActionEnumToJson(RentalActionEnum? value) {
  return value?.toString();
}
