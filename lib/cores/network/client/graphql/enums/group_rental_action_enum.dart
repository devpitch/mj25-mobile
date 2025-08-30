enum GroupRentalActionEnum {
  /// Initial state of the group rental
  INIT,

  /// Start the group rental
  START,

  /// Add a vehicle to the group rental
  ADD_VEHICLE,

  /// Remove a vehicle from the group rental
  REMOVE_VEHICLE,

  /// Assign a user to the group rental
  ASSIGN_USER,

  /// Remove a user from the group rental
  REMOVE_USER,

  /// Cancel the group rental
  CANCEL,

  /// Apply a discount to the group rental
  APPLY_DISCOUNT,

  /// Remove a discount from the group rental
  REMOVE_DISCOUNT;

  @override
  String toString() {
    switch (this) {
      case GroupRentalActionEnum.INIT:
        return 'INIT';
      case GroupRentalActionEnum.START:
        return 'START';
      case GroupRentalActionEnum.ADD_VEHICLE:
        return 'ADD_VEHICLE';
      case GroupRentalActionEnum.REMOVE_VEHICLE:
        return 'REMOVE_VEHICLE';
      case GroupRentalActionEnum.ASSIGN_USER:
        return 'ASSIGN_USER';
      case GroupRentalActionEnum.REMOVE_USER:
        return 'REMOVE_USER';
      case GroupRentalActionEnum.CANCEL:
        return 'CANCEL';
      case GroupRentalActionEnum.APPLY_DISCOUNT:
        return 'APPLY_DISCOUNT';
      case GroupRentalActionEnum.REMOVE_DISCOUNT:
        return 'REMOVE_DISCOUNT';
    }
  }

  String get title {
    switch (this) {
      case GroupRentalActionEnum.INIT:
        return 'Init';
      case GroupRentalActionEnum.START:
        return 'Start';
      case GroupRentalActionEnum.ADD_VEHICLE:
        return 'Add Vehicle';
      case GroupRentalActionEnum.REMOVE_VEHICLE:
        return 'Remove Vehicle';
      case GroupRentalActionEnum.ASSIGN_USER:
        return 'Assign User';
      case GroupRentalActionEnum.REMOVE_USER:
        return 'Remove User';
      case GroupRentalActionEnum.CANCEL:
        return 'Cancel';
      case GroupRentalActionEnum.APPLY_DISCOUNT:
        return 'Apply Discount';
      case GroupRentalActionEnum.REMOVE_DISCOUNT:
        return 'Remove Discount';
    }
  }
}

GroupRentalActionEnum groupRentalActionEnumFromJson(String? value) {
  return GroupRentalActionEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => GroupRentalActionEnum.INIT,
  );
}

String? groupRentalActionEnumToJson(GroupRentalActionEnum? value) {
  return value?.toString();
}
