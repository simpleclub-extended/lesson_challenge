class ServerException implements Exception {
  final int? statusCode;

  const ServerException({this.statusCode});
}

class ParsingException implements Exception {
  const ParsingException();
}
