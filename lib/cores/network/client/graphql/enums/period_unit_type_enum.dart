enum PeriodUnitTypeEnum {
  /// Period Unit is a minute
  MINUTE,

  /// Period Unit is a day
  DAY,

  /// Period Unit is a week
  WEEK,

  /// Period Unit is a month
  MONTH,

  /// Period Unit is a year
  YEAR;

  @override
  String toString() {
    switch (this) {
      case PeriodUnitTypeEnum.MINUTE:
        return 'MINUTE';
      case PeriodUnitTypeEnum.DAY:
        return 'DAY';
      case PeriodUnitTypeEnum.WEEK:
        return 'WEEK';
      case PeriodUnitTypeEnum.MONTH:
        return 'MONTH';
      case PeriodUnitTypeEnum.YEAR:
        return 'YEAR';
    }
  }

  String get title {
    switch (this) {
      case PeriodUnitTypeEnum.MINUTE:
        return 'Minute';
      case PeriodUnitTypeEnum.DAY:
        return 'Day';
      case PeriodUnitTypeEnum.WEEK:
        return 'Week';
      case PeriodUnitTypeEnum.MONTH:
        return 'Month';
      case PeriodUnitTypeEnum.YEAR:
        return 'Year';
    }
  }
}

PeriodUnitTypeEnum periodUnitTypeEnumFromJson(String? value) {
  return PeriodUnitTypeEnum.values.firstWhere(
    (e) => e.toString() == value,
    orElse: () => PeriodUnitTypeEnum.DAY,
  );
}

String? periodUnitTypeEnumToJson(PeriodUnitTypeEnum? value) {
  return value?.toString();
}
