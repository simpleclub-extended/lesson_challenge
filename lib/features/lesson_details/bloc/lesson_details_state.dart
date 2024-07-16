part of 'lesson_details_bloc.dart';

enum LessonDetailsStatus {
  initial,
  loading,
  success,
  error;
}

@CopyWith()
class LessonDetailsState extends Equatable {
  const LessonDetailsState({
    this.status = LessonDetailsStatus.initial,
    this.lesson,
    this.currentPage = 0,
    this.failure,
  });

  final LessonDetailsStatus status;
  final Lesson? lesson;
  final int currentPage;
  final Failure? failure;

  int get pageCount {
    if (lesson == null) return 0;
    final hasTasks = lesson!.tasks.isNotEmpty;
    return lesson!.pages.length + (hasTasks ? 1 : 0);
  }

  bool get canGoToNextPage => lesson != null && currentPage < pageCount - 1;
  bool get canGoToPreviousPage => lesson != null && currentPage > 0;

  @override
  List<Object?> get props => [
        status,
        lesson,
        currentPage,
        failure,
      ];
}
