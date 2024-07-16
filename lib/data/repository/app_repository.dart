import 'package:either_dart/either.dart';

import '../../core/core.dart';
import '../../logger.dart';
import '../lessons_api/lessons_api.dart';
import 'entities/entities.dart';

class AppRepository {
  AppRepository(this._apiClient);

  final LessonsApiClient _apiClient;

  Future<Either<Failure, List<Lesson>>> getLessons() async {
    try {
      final lessons = await _apiClient.getLessons();
      return Right(lessons);
    } on ServerException catch (e, s) {
      logger.severe('server exception when getting lessons', e, s);
      return Left(ServerFailure(statusCode: e.statusCode));
    } catch (e, s) {
      logger.severe('encountered unknown error when getting lessons', e, s);
      return const Left(UnknownFailure());
    }
  }

  Future<Either<Failure, Lesson>> getLesson(String id) async {
    try {
      final lesson = await _apiClient.getLesson(id);
      return Right(lesson);
    } on ServerException catch (e, s) {
      logger.severe('server exception when getting lesson', e, s);
      if (e.statusCode == 404) {
        return const Left(NotFoundFailure());
      }
      return Left(ServerFailure(statusCode: e.statusCode));
    } catch (e, s) {
      logger.severe('encountered unknown error when getting lesson', e, s);
      return const Left(UnknownFailure());
    }
  }
}
