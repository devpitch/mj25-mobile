enum RentalTypeEnum {
  /// Rental request is pending confirmation
  SINGLE,

  /// Rental has started
  GROUP;

  @override
  String toString() {
    switch (this) {
      case RentalTypeEnum.SINGLE:
        return 'SINGLE';
      case RentalTypeEnum.GROUP:
        return 'GROUP';
    }
  }

  String get title {
    switch (this) {
      case RentalTypeEnum.SINGLE:
        return 'Single';
      case RentalTypeEnum.GROUP:
        return 'Group';
    }
  }
}

RentalTypeEnum rentalTypeEnumFromJson(String? value) {
  return RentalTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => RentalTypeEnum.SINGLE,
  );
}

String? rentalTypeEnumToJson(RentalTypeEnum? value) {
  return value?.toString();
}
