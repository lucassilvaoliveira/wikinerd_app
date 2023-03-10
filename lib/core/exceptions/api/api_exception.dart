class ApiException implements Exception {
  String cause;

  ApiException({required this.cause});
}
