part of 'lessons_bloc.dart';

enum LessonsStatus {
  initial,
  loading,
  success,
  error;
}

@CopyWith()
class LessonsState extends Equatable {
  const LessonsState({
    this.status = LessonsStatus.initial,
    this.lessons = const [],
    this.failure,
  });

  final LessonsStatus status;
  final List<Lesson> lessons;
  final Failure? failure;

  @override
  List<Object?> get props => [
        status,
        lessons,
        failure,
      ];
}
