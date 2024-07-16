import 'dart:convert';

import 'package:dio/dio.dart';

import '../../logger.dart';
import 'lessons_api.dart';

class LessonsApiClient {
  final Dio _dio = Dio();

  Future<List<LessonDto>> getLessons() async {
    try {
      final result = await _dio.get<String>('https://raw.githubusercontent.com/thomas7D/lessons_api/main/lessons.json');
      final Map<String, dynamic> jsonData = jsonDecode(result.data!);
      return _parseList(jsonData, 'lessons', LessonDto.fromJson);
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      logger.warning('response ${e.response?.statusCode}: ${e.response?.data.toString() ?? 'no response data'}');
      throw ServerException(statusCode: statusCode);
    }
  }

  Future<LessonDto> getLesson(String id) async {
    final lessons = await getLessons();
    return lessons.firstWhere((lesson) => lesson.id == id);
  }

  ///parses a [json] object with the top level [key]
  T _parseObject<T>(JSON json, String key, ParseFunction<T> parser) {
    try {
      final objectJson = JSON.from(json[key] as Map);
      return parser(objectJson);
    } catch (e, s) {
      logger.severe('failed to parse ${T.runtimeType} with key $key', e, s);
      throw const ParsingException();
    }
  }

  ///parses a json list with the top level [key]
  List<T> _parseList<T>(JSON json, String key, ParseFunction<T> parser) {
    try {
      final listJson = List<JSON>.from(json[key] as List);
      return listJson.map((e) => parser(e)).toList();
    } catch (e, s) {
      logger.severe('failed to parse ${T.runtimeType} with key $key', e, s);
      throw const ParsingException();
    }
  }
}

typedef JSON = Map<String, dynamic>;
typedef ParseFunction<T> = T Function(Map<String, dynamic>);
