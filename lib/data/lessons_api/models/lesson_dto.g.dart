// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) => LessonDto(
      json['id'] as String,
      json['title'] as String,
      json['description'] as String,
      json['image_url'] as String,
      (json['pages'] as List<dynamic>)
          .map((e) => PageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tasks'] as List<dynamic>)
          .map((e) => TaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
