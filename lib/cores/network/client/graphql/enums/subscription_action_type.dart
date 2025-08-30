enum SubscriptionActionType {
  /// Temporarily pause the subscription
  PAUSE,

  /// Cancel the subscription
  CANCEL,

  /// Resume a paused subscription
  RESUME,

  /// Reactivate a canceled or expired subscription
  REACTIVATE;

  @override
  String toString() {
    switch (this) {
      case SubscriptionActionType.PAUSE:
        return 'PAUSE';
      case SubscriptionActionType.CANCEL:
        return 'CANCEL';
      case SubscriptionActionType.RESUME:
        return 'RESUME';
      case SubscriptionActionType.REACTIVATE:
        return 'REACTIVATE';
    }
  }

  String get title {
    switch (this) {
      case SubscriptionActionType.PAUSE:
        return 'Pause';
      case SubscriptionActionType.CANCEL:
        return 'Cancel';
      case SubscriptionActionType.RESUME:
        return 'Resume';
      case SubscriptionActionType.REACTIVATE:
        return 'Reactivate';
    }
  }
}

SubscriptionActionType subscriptionActionTypeFromJson(String? value) {
  return SubscriptionActionType.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => SubscriptionActionType.PAUSE,
  );
}

String? subscriptionActionTypeToJson(SubscriptionActionType? value) {
  return value?.toString();
}
