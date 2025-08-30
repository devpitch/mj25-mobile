enum SubscriptionRenewalStatusEnum {
  /// Payment is pending
  PENDING,

  /// Payment has been completed successfully
  COMPLETED,

  /// Payment has failed
  FAILED,

  /// Payment is queued and awaiting processing
  QUEUED,

  /// Payment is due for renewal
  TO_RENEW,

  /// Payment is currently paused
  PAUSED,

  /// Payment has been canceled
  CANCELED;

  @override
  String toString() {
    switch (this) {
      case SubscriptionRenewalStatusEnum.PENDING:
        return 'PENDING';
      case SubscriptionRenewalStatusEnum.COMPLETED:
        return 'COMPLETED';
      case SubscriptionRenewalStatusEnum.FAILED:
        return 'FAILED';
      case SubscriptionRenewalStatusEnum.QUEUED:
        return 'QUEUED';
      case SubscriptionRenewalStatusEnum.TO_RENEW:
        return 'TO_RENEW';
      case SubscriptionRenewalStatusEnum.PAUSED:
        return 'PAUSED';
      case SubscriptionRenewalStatusEnum.CANCELED:
        return 'CANCELED';
    }
  }

  String get title {
    switch (this) {
      case SubscriptionRenewalStatusEnum.PENDING:
        return 'Pending';
      case SubscriptionRenewalStatusEnum.COMPLETED:
        return 'Completed';
      case SubscriptionRenewalStatusEnum.FAILED:
        return 'Failed';
      case SubscriptionRenewalStatusEnum.QUEUED:
        return 'Queued';
      case SubscriptionRenewalStatusEnum.TO_RENEW:
        return 'To Renew';
      case SubscriptionRenewalStatusEnum.PAUSED:
        return 'Paused';
      case SubscriptionRenewalStatusEnum.CANCELED:
        return 'Canceled';
    }
  }
}

SubscriptionRenewalStatusEnum subscriptionRenewalStatusEnumFromJson(
  String? value,
) {
  return SubscriptionRenewalStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => SubscriptionRenewalStatusEnum.PENDING,
  );
}

String? subscriptionRenewalStatusEnumToJson(
  SubscriptionRenewalStatusEnum? value,
) {
  return value?.toString();
}
