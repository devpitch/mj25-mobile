String dateTimeToJson(DateTime? data) {
  return data?.toIso8601String() ?? '';
}

DateTime dateTimeFromJson(dynamic data) {
  return DateTime.tryParse(data.toString()) ?? DateTime.now();
}