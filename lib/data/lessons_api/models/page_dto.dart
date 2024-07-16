import 'package:json_annotation/json_annotation.dart';

import '../../../logger.dart';
import '../../repository/repository.dart';
import 'models.dart';

part 'page_dto.g.dart';

@JsonSerializable()
class PageDto extends Page {
  @override
  @JsonKey(fromJson: _contentComponentFromJson)
  // ignore: overridden_fields
  final List<ContentComponent> components;

  const PageDto(
    String id,
    this.components,
  ) : super(id, components);

  factory PageDto.fromJson(Map<String, dynamic> json) => _$PageDtoFromJson(json);
}

List<ContentComponent> _contentComponentFromJson(List<dynamic> json) {
  final List<ContentComponent> components = [];
  for (Map<String, dynamic> item in json) {
    final type = item['type'];
    switch (type) {
      case 'text':
        components.add(TextComponentDto.fromJson(item));
      case 'image':
        components.add(ImageComponentDto.fromJson(item));
      default:
        // I chose not to throw an exception here, because the API might be updated with new component types
        logger.warning('Unknown component type: $type');
    }
  }
  return components;
}
