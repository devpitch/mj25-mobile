enum TransactionStatusEnum {
  /// Transaction is an invoice, awaiting action
  INVOICE,

  /// Transaction is pending
  PENDING,

  /// Transaction has been paid
  PAID,

  /// Transaction has failed
  FAILED,

  /// Transaction has been refunded
  REFUNDED,

  /// Transaction has been cancelled
  CANCELLED,

  /// Transaction was declined
  DECLINED,

  /// Transaction is currently processing
  PROCESSING;

  @override
  String toString() {
    switch (this) {
      case TransactionStatusEnum.INVOICE:
        return 'INVOICE';
      case TransactionStatusEnum.PENDING:
        return 'PENDING';
      case TransactionStatusEnum.PAID:
        return 'PAID';
      case TransactionStatusEnum.FAILED:
        return 'FAILED';
      case TransactionStatusEnum.REFUNDED:
        return 'REFUNDED';
      case TransactionStatusEnum.CANCELLED:
        return 'CANCELLED';
      case TransactionStatusEnum.DECLINED:
        return 'DECLINED';
      case TransactionStatusEnum.PROCESSING:
        return 'PROCESSING';
    }
  }

  String get title {
    switch (this) {
      case TransactionStatusEnum.INVOICE:
        return 'Invoice';
      case TransactionStatusEnum.PENDING:
        return 'Pending';
      case TransactionStatusEnum.PAID:
        return 'Paid';
      case TransactionStatusEnum.FAILED:
        return 'Failed';
      case TransactionStatusEnum.REFUNDED:
        return 'Refunded';
      case TransactionStatusEnum.CANCELLED:
        return 'Cancelled';
      case TransactionStatusEnum.DECLINED:
        return 'Declined';
      case TransactionStatusEnum.PROCESSING:
        return 'Processing';
    }
  }
}

TransactionStatusEnum transactionStatusEnumFromJson(String? value) {
  return TransactionStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => TransactionStatusEnum.PENDING,
  );
}

String? transactionStatusEnumToJson(TransactionStatusEnum? value) {
  return value?.toString();
}
