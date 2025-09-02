enum LinkTypeEnum {
  /// Public link accessible by anyone
  PUBLIC,

  /// Private link accessible only to authorized users
  PRIVATE,

  /// Guest link accessible without authentication
  GUEST,

  /// Printable link format
  PRINT;

  @override
  String toString() {
    switch (this) {
      case LinkTypeEnum.PUBLIC:
        return 'PUBLIC';
      case LinkTypeEnum.PRIVATE:
        return 'PRIVATE';
      case LinkTypeEnum.GUEST:
        return 'GUEST';
      case LinkTypeEnum.PRINT:
        return 'PRINT';
    }
  }

  String get title {
    switch (this) {
      case LinkTypeEnum.PUBLIC:
        return 'Public';
      case LinkTypeEnum.PRIVATE:
        return 'Private';
      case LinkTypeEnum.GUEST:
        return 'Guest';
      case LinkTypeEnum.PRINT:
        return 'Print';
    }
  }
}

LinkTypeEnum linkTypeEnumFromJson(String? value) {
  return LinkTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => LinkTypeEnum.PUBLIC,
  );
}

String? linkTypeEnumToJson(LinkTypeEnum? value) {
  return value?.toString();
}
