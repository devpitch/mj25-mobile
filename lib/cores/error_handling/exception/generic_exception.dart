class GenericException implements Exception {
  GenericException(this.message);

  final String? message;

  @override
  String toString() {
    return 'GenericException: $message';
  }
}