// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) => TaskDto(
      json['id'] as String,
      json['question'] as String,
      (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );
