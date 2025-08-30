enum SubscriptionStatusEnum {
  /// User has enrolled but not yet active
  ENROLLED,

  /// Subscription is currently active
  ACTIVE,

  /// Subscription is inactive
  INACTIVE,

  /// Subscription has been cancelled
  CANCELLED,

  /// Subscription has expired
  EXPIRED,

  /// Subscription is currently paused
  PAUSED;

  @override
  String toString() {
    switch (this) {
      case SubscriptionStatusEnum.ENROLLED:
        return 'ENROLLED';
      case SubscriptionStatusEnum.ACTIVE:
        return 'ACTIVE';
      case SubscriptionStatusEnum.INACTIVE:
        return 'INACTIVE';
      case SubscriptionStatusEnum.CANCELLED:
        return 'CANCELLED';
      case SubscriptionStatusEnum.EXPIRED:
        return 'EXPIRED';
      case SubscriptionStatusEnum.PAUSED:
        return 'PAUSED';
    }
  }

  String get title {
    switch (this) {
      case SubscriptionStatusEnum.ENROLLED:
        return 'Enrolled';
      case SubscriptionStatusEnum.ACTIVE:
        return 'Active';
      case SubscriptionStatusEnum.INACTIVE:
        return 'Inactive';
      case SubscriptionStatusEnum.CANCELLED:
        return 'Cancelled';
      case SubscriptionStatusEnum.EXPIRED:
        return 'Expired';
      case SubscriptionStatusEnum.PAUSED:
        return 'Paused';
    }
  }
}

SubscriptionStatusEnum subscriptionStatusEnumFromJson(String? value) {
  return SubscriptionStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => SubscriptionStatusEnum.ENROLLED,
  );
}

String? subscriptionStatusEnumToJson(SubscriptionStatusEnum? value) {
  return value?.toString();
}
