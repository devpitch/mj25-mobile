enum FaultStatusEnum {
  /// Fault has been reported and is open
  OPEN,

  /// Fault is currently being worked on
  IN_PROGRESS,

  /// Fault has been resolved but not yet closed
  RESOLVED,

  /// Fault has been fully closed
  CLOSED;

  @override
  String toString() {
    switch (this) {
      case FaultStatusEnum.OPEN:
        return 'OPEN';
      case FaultStatusEnum.IN_PROGRESS:
        return 'IN_PROGRESS';
      case FaultStatusEnum.RESOLVED:
        return 'RESOLVED';
      case FaultStatusEnum.CLOSED:
        return 'CLOSED';
    }
  }

  String get title {
    switch (this) {
      case FaultStatusEnum.OPEN:
        return 'Open';
      case FaultStatusEnum.IN_PROGRESS:
        return 'In Progress';
      case FaultStatusEnum.RESOLVED:
        return 'Resolved';
      case FaultStatusEnum.CLOSED:
        return 'Closed';
    }
  }
}

FaultStatusEnum faultStatusEnumFromJson(String? value) {
  return FaultStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => FaultStatusEnum.OPEN,
  );
}

String? faultStatusEnumToJson(FaultStatusEnum? value) {
  return value?.toString();
}
