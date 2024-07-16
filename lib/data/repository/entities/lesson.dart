import 'entities.dart';

class Lesson {
  const Lesson(
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.pages,
    this.tasks,
  );

  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final List<Page> pages;
  final List<Task> tasks;
}
