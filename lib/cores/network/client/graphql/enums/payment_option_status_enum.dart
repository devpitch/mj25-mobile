enum PaymentOptionStatusEnum {
  /// Payment Option is currently active and available for use
  ACTIVE,

  /// Payment Option has been archived and is no longer available for new transactions
  ARCHIVED,

  /// Payment Option is inactive and not available for use, but can be reactivated
  INACTIVE;

  @override
  String toString() {
    switch (this) {
      case PaymentOptionStatusEnum.ACTIVE:
        return 'ACTIVE';
      case PaymentOptionStatusEnum.ARCHIVED:
        return 'ARCHIVED';
      case PaymentOptionStatusEnum.INACTIVE:
        return 'INACTIVE';
    }
  }

  String get title {
    switch (this) {
      case PaymentOptionStatusEnum.ACTIVE:
        return 'Active';
      case PaymentOptionStatusEnum.ARCHIVED:
        return 'Archived';
      case PaymentOptionStatusEnum.INACTIVE:
        return 'Inactive';
    }
  }
}

PaymentOptionStatusEnum paymentOptionStatusEnumFromJson(String? value) {
  return PaymentOptionStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => PaymentOptionStatusEnum.INACTIVE,
  );
}

String? paymentOptionStatusEnumToJson(PaymentOptionStatusEnum? value) {
  return value?.toString();
}
