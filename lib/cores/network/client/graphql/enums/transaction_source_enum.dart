enum TransactionSourceEnum {
  /// Transaction originated from a card payment
  CARD,

  /// Transaction originated from a bank transfer
  TRANSFER,

  /// Transaction sourced from an account balance
  ACCOUNT,

  /// Transaction is a refund
  REFUND,

  WALLET,

  /// Transaction is a bonus or incentive
  BONUS;

  @override
  String toString() {
    switch (this) {
      case TransactionSourceEnum.CARD:
        return 'CARD';
      case TransactionSourceEnum.TRANSFER:
        return 'TRANSFER';
      case TransactionSourceEnum.ACCOUNT:
        return 'ACCOUNT';
      case TransactionSourceEnum.REFUND:
        return 'REFUND';
      case TransactionSourceEnum.BONUS:
        return 'BONUS';
      case TransactionSourceEnum.WALLET:
        return 'WALLET';
    }
  }

  String get title {
    switch (this) {
      case TransactionSourceEnum.CARD:
        return 'Card';
      case TransactionSourceEnum.TRANSFER:
        return 'Transfer';
      case TransactionSourceEnum.ACCOUNT:
        return 'Account';
      case TransactionSourceEnum.REFUND:
        return 'Refund';
      case TransactionSourceEnum.BONUS:
        return 'Bonus';
      case TransactionSourceEnum.WALLET:
        return 'Wallet';
    }
  }
}

TransactionSourceEnum transactionSourceEnumFromJson(String? value) {
  return TransactionSourceEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => TransactionSourceEnum.ACCOUNT,
  );
}

String? transactionSourceEnumToJson(TransactionSourceEnum? value) {
  return value?.toString();
}
