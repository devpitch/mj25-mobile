enum DefaultPaymentMethodEnum {
  /// Payment through an active subscription
  SUBSCRIPTION,

  /// Payment using a pass
  PASS,

  /// Payment from wallet balance
  WALLET;

  @override
  String toString() {
    switch (this) {
      case DefaultPaymentMethodEnum.SUBSCRIPTION:
        return 'SUBSCRIPTION';
      case DefaultPaymentMethodEnum.PASS:
        return 'PASS';
      case DefaultPaymentMethodEnum.WALLET:
        return 'WALLET';
    }
  }

  String get title {
    switch (this) {
      case DefaultPaymentMethodEnum.SUBSCRIPTION:
        return 'Subscription';
      case DefaultPaymentMethodEnum.PASS:
        return 'Pass';
      case DefaultPaymentMethodEnum.WALLET:
        return 'Wallet';
    }
  }
}

DefaultPaymentMethodEnum defaultPaymentMethodEnumFromJson(String? value) {
  return DefaultPaymentMethodEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => DefaultPaymentMethodEnum.WALLET,
  );
}

String? defaultPaymentMethodEnumToJson(DefaultPaymentMethodEnum? value) {
  return value?.toString();
}
