enum VehicleStatusEnum {
  /// Vehicle is available for use
  AVAILABLE,

  /// Vehicle has low battery
  LOW_BATTERY,

  /// Vehicle is currently in use
  IN_USE,

  /// Vehicle is under maintenance
  IN_MAINTENANCE,

  /// Vehicle is not currently operational
  OUT_OF_SERVICE,

  /// Vehicle is marked as lost
  LOST,

  /// Vehicle is damaged
  DAMAGED,

  /// Vehicle has been decommissioned
  DECOMMISSIONED,

  /// Vehicle status is unknown
  UNKNOWN,

  /// Vehicle is reserved for a user
  RESERVED;

  @override
  String toString() {
    switch (this) {
      case VehicleStatusEnum.AVAILABLE:
        return 'AVAILABLE';
      case VehicleStatusEnum.LOW_BATTERY:
        return 'LOW_BATTERY';
      case VehicleStatusEnum.IN_USE:
        return 'IN_USE';
      case VehicleStatusEnum.IN_MAINTENANCE:
        return 'IN_MAINTENANCE';
      case VehicleStatusEnum.OUT_OF_SERVICE:
        return 'OUT_OF_SERVICE';
      case VehicleStatusEnum.LOST:
        return 'LOST';
      case VehicleStatusEnum.DAMAGED:
        return 'DAMAGED';
      case VehicleStatusEnum.DECOMMISSIONED:
        return 'DECOMMISSIONED';
      case VehicleStatusEnum.UNKNOWN:
        return 'UNKNOWN';
      case VehicleStatusEnum.RESERVED:
        return 'RESERVED';
    }
  }

  String get title {
    switch (this) {
      case VehicleStatusEnum.AVAILABLE:
        return 'Available';
      case VehicleStatusEnum.LOW_BATTERY:
        return 'Low Battery';
      case VehicleStatusEnum.IN_USE:
        return 'In Use';
      case VehicleStatusEnum.IN_MAINTENANCE:
        return 'In Maintenance';
      case VehicleStatusEnum.OUT_OF_SERVICE:
        return 'Out of Service';
      case VehicleStatusEnum.LOST:
        return 'Lost';
      case VehicleStatusEnum.DAMAGED:
        return 'Damaged';
      case VehicleStatusEnum.DECOMMISSIONED:
        return 'Decommissioned';
      case VehicleStatusEnum.UNKNOWN:
        return 'Unknown';
      case VehicleStatusEnum.RESERVED:
        return 'Reserved';
    }
  }
}

VehicleStatusEnum vehicleStatusEnumFromJson(String? value) {
  return VehicleStatusEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => VehicleStatusEnum.UNKNOWN,
  );
}

String? vehicleStatusEnumToJson(VehicleStatusEnum? value) {
  return value?.toString();
}
