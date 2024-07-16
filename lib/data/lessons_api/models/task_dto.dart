import 'package:json_annotation/json_annotation.dart';

import '../../repository/repository.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDto extends Task {
  const TaskDto(
    super.id,
    super.question,
    super.options,
  );

  factory TaskDto.fromJson(Map<String, dynamic> json) => _$TaskDtoFromJson(json);
}
