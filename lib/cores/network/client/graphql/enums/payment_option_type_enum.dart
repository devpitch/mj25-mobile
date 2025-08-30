enum PaymentOptionTypeEnum {
  /// Continuous payment option - Pay as you go option
  CONTINUOUS,

  /// Pass payment option - One-time payment option for a specific duration type
  PASS,

  /// Subscription payment option - Recurring payment option for a specific duration type
  SUBSCRIPTION;

  @override
  String toString() {
    switch (this) {
      case PaymentOptionTypeEnum.CONTINUOUS:
        return 'CONTINUOUS';
      case PaymentOptionTypeEnum.PASS:
        return 'PASS';
      case PaymentOptionTypeEnum.SUBSCRIPTION:
        return 'SUBSCRIPTION';
    }
  }

  String get title {
    switch (this) {
      case PaymentOptionTypeEnum.CONTINUOUS:
        return 'Continuous';
      case PaymentOptionTypeEnum.PASS:
        return 'Pass';
      case PaymentOptionTypeEnum.SUBSCRIPTION:
        return 'Subscription';
    }
  }
}

PaymentOptionTypeEnum paymentOptionTypeEnumFromJson(String? value) {
  return PaymentOptionTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => PaymentOptionTypeEnum.CONTINUOUS,
  );
}

String? paymentOptionTypeEnumToJson(PaymentOptionTypeEnum? value) {
  return value?.toString();
}
