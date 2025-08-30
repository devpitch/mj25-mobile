enum SubscriptionCancellationStatusEnum {
  /// Request has been submitted
  REQUESTED,

  /// Request has been processed
  PROCESSED,

  /// Request has been canceled
  CANCELED;

  @override
  String toString() {
    switch (this) {
      case SubscriptionCancellationStatusEnum.REQUESTED:
        return 'REQUESTED';
      case SubscriptionCancellationStatusEnum.PROCESSED:
        return 'PROCESSED';
      case SubscriptionCancellationStatusEnum.CANCELED:
        return 'CANCELED';
    }
  }

  String get title {
    switch (this) {
      case SubscriptionCancellationStatusEnum.REQUESTED:
        return 'Requested';
      case SubscriptionCancellationStatusEnum.PROCESSED:
        return 'Processed';
      case SubscriptionCancellationStatusEnum.CANCELED:
        return 'Canceled';
    }
  }
}

SubscriptionCancellationStatusEnum subscriptionCancellationStatusEnumFromJson(
  String? value,
) {
  return SubscriptionCancellationStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => SubscriptionCancellationStatusEnum.REQUESTED,
  );
}

String? subscriptionCancellationStatusEnumToJson(
  SubscriptionCancellationStatusEnum? value,
) {
  return value?.toString();
}
