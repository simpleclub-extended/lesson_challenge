import 'package:json_annotation/json_annotation.dart';

import '../../repository/repository.dart';

part 'content_component_dto.g.dart';

@JsonSerializable()
class TextComponentDto extends TextComponent {
  const TextComponentDto(
    super.id,
    super.content,
  );

  factory TextComponentDto.fromJson(Map<String, dynamic> json) => _$TextComponentDtoFromJson(json);
}

@JsonSerializable()
class ImageComponentDto extends ImageComponent {
  const ImageComponentDto(
    super.id,
    super.url,
  );

  factory ImageComponentDto.fromJson(Map<String, dynamic> json) => _$ImageComponentDtoFromJson(json);
}
