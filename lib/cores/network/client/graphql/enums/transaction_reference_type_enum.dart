enum TransactionReferenceTypeEnum {
  /// Rental transaction reference
  RENTAL,

  /// Pass transaction reference
  PASS,

  /// Subscription transaction reference
  SUBSCRIPTION,

  /// Rental penalty transaction reference
  RENTAL_PENALTY,

  /// Wallet transaction reference
  WALLET,

  /// Authorization transaction reference
  AUTHORIZATION,

  /// Subscription update transaction reference
  SUBSCRIPTION_UPDATE;

  @override
  String toString() {
    switch (this) {
      case TransactionReferenceTypeEnum.RENTAL:
        return 'RENTAL';
      case TransactionReferenceTypeEnum.PASS:
        return 'PASS';
      case TransactionReferenceTypeEnum.SUBSCRIPTION:
        return 'SUBSCRIPTION';
      case TransactionReferenceTypeEnum.RENTAL_PENALTY:
        return 'RENTAL_PENALTY';
      case TransactionReferenceTypeEnum.WALLET:
        return 'WALLET';
      case TransactionReferenceTypeEnum.AUTHORIZATION:
        return 'AUTHORIZATION';
      case TransactionReferenceTypeEnum.SUBSCRIPTION_UPDATE:
        return 'SUBSCRIPTION_UPDATE';
    }
  }

  String get title {
    switch (this) {
      case TransactionReferenceTypeEnum.RENTAL:
        return 'Rental';
      case TransactionReferenceTypeEnum.PASS:
        return 'Pass';
      case TransactionReferenceTypeEnum.SUBSCRIPTION:
        return 'Subscription';
      case TransactionReferenceTypeEnum.RENTAL_PENALTY:
        return 'Rental Penalty';
      case TransactionReferenceTypeEnum.WALLET:
        return 'Wallet';
      case TransactionReferenceTypeEnum.AUTHORIZATION:
        return 'Authorization';
      case TransactionReferenceTypeEnum.SUBSCRIPTION_UPDATE:
        return 'Subscription Update';
    }
  }
}

TransactionReferenceTypeEnum transactionReferenceTypeEnumFromJson(
  String? value,
) {
  return TransactionReferenceTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => TransactionReferenceTypeEnum.RENTAL,
  );
}

String? transactionReferenceTypeEnumToJson(
  TransactionReferenceTypeEnum? value,
) {
  return value?.toString();
}
