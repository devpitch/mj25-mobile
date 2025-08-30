enum TransactionTypeEnum {
  /// Credit transaction (adds funds)
  CREDIT,

  /// Debit transaction (deducts funds)
  DEBIT,

  /// Authorization transaction (reserves funds)
  AUTHORIZATION,

  PURCHASE;

  @override
  String toString() {
    switch (this) {
      case TransactionTypeEnum.CREDIT:
        return 'CREDIT';
      case TransactionTypeEnum.DEBIT:
        return 'DEBIT';
      case TransactionTypeEnum.AUTHORIZATION:
        return 'AUTHORIZATION';
      case TransactionTypeEnum.PURCHASE:
        return 'PURCHASE';
    }
  }

  String get title {
    switch (this) {
      case TransactionTypeEnum.CREDIT:
        return 'Credit';
      case TransactionTypeEnum.DEBIT:
        return 'Debit';
      case TransactionTypeEnum.AUTHORIZATION:
        return 'Authorization';
      case TransactionTypeEnum.PURCHASE:
        return 'Purchase';
    }
  }
}

TransactionTypeEnum transactionTypeEnumFromJson(String? value) {
  return TransactionTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => TransactionTypeEnum.AUTHORIZATION,
  );
}

String? transactionTypeEnumToJson(TransactionTypeEnum? value) {
  return value?.toString();
}
