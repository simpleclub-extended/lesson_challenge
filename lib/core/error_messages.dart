import 'failure.dart';

abstract class ErrorMessages {
  static String forFailure(Failure failure) {
    if (failure is ServerFailure) {
      return 'Error communicating with the server. Please try again later.';
    } else if (failure is UnknownFailure) {
      return 'An error occurred. Please try again later.';
    } else if (failure is NotFoundFailure) {
      return 'Resource not found.';
    } else {
      return 'An error occurred. Please try again later.';
    }
  }
}
