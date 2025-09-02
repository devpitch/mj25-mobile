enum LinkStatusEnum {
  /// Link has not been used yet
  UNUSED,

  /// Link usage is currently in progress
  IN_PROGRESS,

  /// Link has already been used
  USED,

  /// Link is inactive and not available
  INACTIVE,

  /// Link has been printed
  PRINTED;

  @override
  String toString() {
    switch (this) {
      case LinkStatusEnum.UNUSED:
        return 'UNUSED';
      case LinkStatusEnum.IN_PROGRESS:
        return 'IN_PROGRESS';
      case LinkStatusEnum.USED:
        return 'USED';
      case LinkStatusEnum.INACTIVE:
        return 'INACTIVE';
      case LinkStatusEnum.PRINTED:
        return 'PRINTED';
    }
  }

  String get title {
    switch (this) {
      case LinkStatusEnum.UNUSED:
        return 'Unused';
      case LinkStatusEnum.IN_PROGRESS:
        return 'In Progress';
      case LinkStatusEnum.USED:
        return 'Used';
      case LinkStatusEnum.INACTIVE:
        return 'Inactive';
      case LinkStatusEnum.PRINTED:
        return 'Printed';
    }
  }
}

LinkStatusEnum linkStatusEnumFromJson(String? value) {
  return LinkStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => LinkStatusEnum.UNUSED,
  );
}

String? linkStatusEnumToJson(LinkStatusEnum? value) {
  return value?.toString();
}
