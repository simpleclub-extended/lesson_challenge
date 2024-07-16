abstract class Failure {
  const Failure();
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure({this.statusCode});
}

class NotFoundFailure extends Failure {
  const NotFoundFailure();
}

class UnknownFailure extends Failure {
  const UnknownFailure();
}
