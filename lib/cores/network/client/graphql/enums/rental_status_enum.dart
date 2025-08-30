enum RentalStatusEnum {
  /// Rental request is pending confirmation
  PENDING,

  /// Rental has started
  START,

  /// Rental has been completed
  COMPLETED,

  /// Rental was cancelled
  CANCELLED,

  PAUSED,

  /// Rental is reserved and waiting to start
  RESERVED;

  @override
  String toString() {
    switch (this) {
      case RentalStatusEnum.PENDING:
        return 'PENDING';
      case RentalStatusEnum.START:
        return 'START';
      case RentalStatusEnum.COMPLETED:
        return 'COMPLETED';
      case RentalStatusEnum.CANCELLED:
        return 'CANCELLED';
      case RentalStatusEnum.RESERVED:
        return 'RESERVED';
      case RentalStatusEnum.PAUSED:
        return 'PAUSED';
    }
  }

  String get title {
    switch (this) {
      case RentalStatusEnum.PENDING:
        return 'Pending';
      case RentalStatusEnum.START:
        return 'Start';
      case RentalStatusEnum.COMPLETED:
        return 'Completed';
      case RentalStatusEnum.CANCELLED:
        return 'Cancelled';
      case RentalStatusEnum.RESERVED:
        return 'Reserved';
      case RentalStatusEnum.PAUSED:
        return 'Paused';
    }
  }
}

RentalStatusEnum rentalStatusEnumFromJson(String? value) {
  return RentalStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => RentalStatusEnum.PENDING,
  );
}

String? rentalStatusEnumToJson(RentalStatusEnum? value) {
  return value?.toString();
}
