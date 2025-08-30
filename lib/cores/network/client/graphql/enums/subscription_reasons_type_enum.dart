enum SubscriptionReasonsTypeEnum {
  /// Only cancellation is allowed
  CANCELLATION,

  /// Only pause is allowed
  PAUSE,

  /// Both cancellation and pause are allowed
  BOTH;

  @override
  String toString() {
    switch (this) {
      case SubscriptionReasonsTypeEnum.CANCELLATION:
        return 'CANCELLATION';
      case SubscriptionReasonsTypeEnum.PAUSE:
        return 'PAUSE';
      case SubscriptionReasonsTypeEnum.BOTH:
        return 'BOTH';
    }
  }

  String get title {
    switch (this) {
      case SubscriptionReasonsTypeEnum.CANCELLATION:
        return 'Cancellation';
      case SubscriptionReasonsTypeEnum.PAUSE:
        return 'Pause';
      case SubscriptionReasonsTypeEnum.BOTH:
        return 'Cancellation & Pause';
    }
  }
}

SubscriptionReasonsTypeEnum subscriptionReasonTypeEnumFromJson(String? value) {
  return SubscriptionReasonsTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => SubscriptionReasonsTypeEnum.CANCELLATION,
  );
}

String? subscriptionReasonTypeEnumToJson(SubscriptionReasonsTypeEnum? value) {
  return value?.toString();
}
