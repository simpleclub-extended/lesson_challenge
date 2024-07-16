import 'package:json_annotation/json_annotation.dart';

import '../../repository/repository.dart';
import 'models.dart';

part 'lesson_dto.g.dart';

@JsonSerializable()
class LessonDto extends Lesson {
  const LessonDto(
    super.id,
    super.title,
    super.description,
    super.imageUrl,
    List<PageDto> super.pages,
    List<TaskDto> super.tasks,
  );

  factory LessonDto.fromJson(Map<String, dynamic> json) => _$LessonDtoFromJson(json);
}
