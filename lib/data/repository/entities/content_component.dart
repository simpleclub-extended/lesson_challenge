sealed class ContentComponent {
  const ContentComponent(this.id);

  final String id;
}

class TextComponent extends ContentComponent {
  const TextComponent(
    super.id,
    this.content,
  );

  final String content;
}

class ImageComponent extends ContentComponent {
  const ImageComponent(
    super.id,
    this.url,
  );

  final String url;
}
