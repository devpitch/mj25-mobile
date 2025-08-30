enum FaultTypeEnum {
  /// Fault related to the tyre
  TYRE,

  /// Fault related to the brake
  BRAKE,

  /// Fault related to the chain
  CHAIN,

  /// Fault related to the light
  LIGHT,

  /// Fault related to the bell
  BELL,

  /// Fault related to the frame
  FRAME,

  /// Fault related to the lock
  LOCK,

  /// Other types of fault not listed
  OTHER;

  @override
  String toString() {
    switch (this) {
      case FaultTypeEnum.TYRE:
        return 'TYRE';
      case FaultTypeEnum.BRAKE:
        return 'BRAKE';
      case FaultTypeEnum.CHAIN:
        return 'CHAIN';
      case FaultTypeEnum.LIGHT:
        return 'LIGHT';
      case FaultTypeEnum.BELL:
        return 'BELL';
      case FaultTypeEnum.FRAME:
        return 'FRAME';
      case FaultTypeEnum.LOCK:
        return 'LOCK';
      case FaultTypeEnum.OTHER:
        return 'OTHER';
    }
  }

  String get title {
    switch (this) {
      case FaultTypeEnum.TYRE:
        return 'Tyre';
      case FaultTypeEnum.BRAKE:
        return 'Brake';
      case FaultTypeEnum.CHAIN:
        return 'Chain';
      case FaultTypeEnum.LIGHT:
        return 'Light';
      case FaultTypeEnum.BELL:
        return 'Bell';
      case FaultTypeEnum.FRAME:
        return 'Frame';
      case FaultTypeEnum.LOCK:
        return 'Lock';
      case FaultTypeEnum.OTHER:
        return 'Other';
    }
  }
}

FaultTypeEnum faultTypeEnumFromJson(String? value) {
  return FaultTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => FaultTypeEnum.OTHER,
  );
}

String? faultTypeEnumToJson(FaultTypeEnum? value) {
  return value?.toString();
}
